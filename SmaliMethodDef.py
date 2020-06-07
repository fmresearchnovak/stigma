import re
import SmaliAssemblyInstructions as smali


class SmaliMethodDef:

    def __init__(self, text):
        # should be a list of strings (lines)
        # starting from .method... and ending in ... .end method
        self.raw_text = text
        self.num_jumps = 0
        self.ORIGINAL_NUMER_REGS = self.get_locals_directive_num()
        self.reg_number_float = self.ORIGINAL_NUMER_REGS

    # There are three "register numbers"
    # 1) The ORIGINAL_NUMER_REGS
    #		This is the number of registers this method had / used before
    #		any instrumentation
    #
    # 2) The locals_directive_num()
    #		This is the "max" or total number of unique registers
    # 		the method uses.  If a register is used and free in
    # 		the instrumentation this goes up.  But if it is used
    #		again, this number would not go up, because the register
    #		is being RE-used.
    #		The locals_directive is checked at package time by apktool
    #
    # 3) The reg_number_float
    #		This is the register number that is ready to be re-used
    #		If a register is used this goes up, but if it is freed this
    #		number goes down

    def set_locals_directive(self, new_val):
        self.raw_text[1] = "    .locals " + str(new_val) + "\n"

    def get_locals_directive_line(self):
        return self.raw_text[1].strip()

    def get_locals_directive_num(self):
        line = self.get_locals_directive_line()
        search_object = re.search(r"[0-9]+", line)
        num = search_object.group()
        # print("number: " +  str(num))
        return int(num)

    def get_signature(self):
        return self.raw_text[0].strip()

    def get_name(self):
        # kinda hacky!  Sorry 'bout that!
        s = self.get_signature()
        s = s.split("(")
        # print("name: " + str(s))
        s = s[0].split(" ")
        name = s[-1]
        # print("name: " + str(name))
        return name

    def make_new_reg(self):
        self.reg_number_float += 1

        if self.reg_number_float > 15:
            raise Exception("cannot request register > 15, apktool might be mad!")
        # It is possible depending on the instruction
        # see comment for free_reg

        directive = self.get_locals_directive_num()
        if self.reg_number_float > directive:
            self.set_locals_directive(self.reg_number_float)

        # When there are three registers in use, the float will be at 3
        # but that means v0, v1, and v2, so the v number is the float - 1
        return "v" + str(self.reg_number_float - 1)

    # Only v0 - v16 registers are allowed for general purpose use.
    # This is enforced by apktool.  The documentation indicates that
    # some instrucions allow many many more registers (up to v65535)
    # https://source.android.com/devices/tech/dalvik/dalvik-bytecode
    # Anyway, it is necessary to "free" registers so that
    # instrumentation does not accumulate registers when adding
    # several instrumentation lines into one method.
    # This first became an issue with EXTERNAL_FUNCTION_instrumentation
    def free_reg(self):
        if self.reg_number_float == self.ORIGINAL_NUMER_REGS:
            raise Exception("No registers to free!")

        self.reg_number_float -= 1
        return self.reg_number_float  # IDK why I return anything! lol -\

    def make_new_jump_label(self):
        res = smali.LABEL(self.num_jumps)
        self.num_jumps += 1
        if self.num_jumps >= 3:
            raise Exception("too many jumps")
        return res

    def embed_line(self, position, line):
        self.raw_text.insert(position, line)

    def embed_block(self, position, block):
        # print("embedding block as position: " + str(position))

        # print("--- before ---")
        # for i in range(position-5, position+len(block) + 5):
        # print(self.raw_text[i], end="")
        # print("\n\n")
        self.raw_text = self.raw_text[:position] + block + self.raw_text[position:]

        # print("--- after ---")
        # for i in range(position-5, position+len(block) + 5):
        # print(self.raw_text[i], end="")
        # print("\n\n")

    def __repr__(self):
        return self.get_signature()

    def __str__(self):
        return self.get_signature()

    def __eq__(self, other):
        if isinstance(other, str):
            return self.get_signature() == other

        elif isinstance(other, SmaliMethodDef):
            return self.get_signature() == other.get_signature()

        else:
            return False