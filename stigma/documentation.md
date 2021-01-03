# stigma
Stigma instruments the Smali assembly code of commodity Android applications in order to implement dynamic information flow tracking.


Note: `stigmafy.py` runs `stigma.py` on all files that end in ".smali" in the current folder and all sub-folders (recursively).  This is largely untested on actual apps.  Currently, it is preferred to use `stigma.py` on specific files.



## SmaliClassDef
An object the represents a smali class definition.  Like Java source code, each `.smali` files contains exactly one class.


### Instance Variables
* **class_name** - A string representing the fully qualified name of this class.  Example: `Ledu/fandm/enovak/leaks/SimpleLeak$1;`

* **header** - A list of strings.  Each string is one line of smali source code.  The header stores annotations and other miscellaneous code at the beginning of smali files.  After the .class directive and before any static and/or instance variables.

* **static_fields** - A list of strings.  Each string is one line of smali source code specifying a _static_ instance variable.  Example: `.field private static final TAG:Ljava/lang/String;`

* **instance_fields** - A list of strings.  Each string is one line of smali source code specifying an instance variable.  Example: `.field private port:Ljava/lang/Integer;`

* **methods** - A list of `SmaliMethodDef` objects.  `SmaliMethodDef` is a custom object representing a method defined in a smali class.  See the documentation below for further details.

* **instrumenter** - A reference to the `Instrumenter` class as defined in `Instrumenter.py`  The instrumenter contains the code that actually inserts new Smali assembly code into the target application.

### Methods
* **taint_storage_name(self, method_name, reg_name)**<br/>
A helper method that takes a method name and a register name and creates a location to store a taint value.  In Stigma taint values are stored as public static integer class variables.  The name of the static integer class variable is returned.  <br/>
Example: `scd.taint_storage_name("leakIMEI", "v1") => leakIMEI_v1_TAINT:I`

* **is_function(self, line)**<br/>
A helper method that returns true if the given line of smali assembly code is a _call_ to a function (begins with "`invoke-`").<br/>
Example: `is_function('const/4 v0, 0x2') => False`<br/>
Example: `is_function('invoke-direct {p0, p1}, Ledu/fandm/enovak/leaks/SimpleLeak;->getData(I)I') => True`

* **is_internal_function(self, line)**<br/>
A helper method that returns true if the given line of smali assembly code is a _call_ to a function that is defined elsewhere in this class.

* **is_external_function(self, line)**<br/>
A helper method that returns true if the given line of smali assembly code is a _call_ to a function that is defined in a different class.

* **instrument(self)**<br/>
Iterates over every line of code in every method defined in this smali class.  Every line is subjected to the instrumenter code defined in `Instrumenter.py`  referred to as "instrumentation plugins." These are actually methods defined in the `Instrumenter` class.  Some smali lines are ignored such as comments, and lines of code which the instrumenter as added.  Such lines can be easily identified because they are of type `SmaliAssemblyInstruction` instead of type `String`.

* **\_do_instrumentation_plugins(self, m, idx)**<br/>
A private method (denoted in python with a preceding '\_') method that is used by `instrument(self)`


## SmaliMethodDef
An object the represents a smali method definition, which exist inside of a class.  Like Java source code, each `.smali` files contains exactly one class and each class contains some methods.

### Instance Variables
* **raw_taw** - A list of strings representing the smali assembly code instructions that constitute the body of this function.  These are all the smali opcodes starting from `.method ...` and ending in `... .end method`.

* **num_jumps** - An integer used to count the number of jumps (branches, etc) instructions that have been added to this method by the instrumentation.  Currently this value should not exceed 3.  It is used to catch infinite loops and other deadlock issues caused as a result of bugs in the instrumentors.

* **ORIGINAL_NUMER_REGS** - An integer used to represent the number of registers used in this method as set by the `.locals` directive.  This is the original number of registers, before any instrumentation is done.  See the comment in the code for further details.  Note: This value should never change.  It is a constant (final), but python does not have final or constant variables.

* **self.reg_number_float** - An integer used to represent the current 'next' register number that can be used.  This value should not be changed by the programmer.  Instead the programmer should use the `make_new_reg` and `free_reg` methods.  See the comment in the code for further details.

### Methods ###

* **set_locals_directive(self, new_val)**<br/>
Sets a value for the `.locals` directive in this method.<br/>
Example: `m.set_locals_directive(5)` will write "&nbsp;&nbsp;&nbsp;&nbsp;`.locals 5`" to the first line of the method `m`.

* **get_locals_directive(self)**<br/>
Returns a string; the .local directive line from the method `m`.<br/>
Example: `m.get_locals_directive()` => "&nbsp;&nbsp;&nbsp;&nbsp;`.locals 2`"

* **get_locals_directive_num(self)**<br/>
Returns an integer; the number only from the .local directive line from the method `m`.<br/>
Example: `m.get_locals_directive_num()` => 2

* **get_signature(self)**<br/>
Returns the full method signature (a string) from the method `m`.<br/>
Example: `m.get_signature() => ".method public leakIMEI(Landroid/view/View;)V"`

* **get_name(self)**<br/>
Returns only the name of the method signature (a string) from the method `m`.<br/>
Example: `m.get_name() => "leakIMEI"`

* **make_new_reg(self)**<br/>
Creates a new general purpose register for use in this method.  This is generally used in instrumentation to store taint values, but these registers can be used for anything.  The instance variable `reg_number_float` is used to determine the register number and the `.locals` directive is automatically updated appropriately.  Note: fifteen registers in a method seems to be the limit enforced by apktool and the Android OS itself.  Returns a string; the name of the new register.  See comment in the code for further details.<br/>
Example: `m.make_new_reg() => "v6"`

* **free_reg(self)**<br/>
Deallocates or 'frees' a general purpose register that was created by `make_new_reg()`.  Like '`malloc()`' and '`free()`' in C programming every register that is created with `make_new_reg()` should be freed with `free_reg()`.  The `free_reg()` call should be made when the programmer knows that they will no longer use the value of that register for any other purpose in this method.  This method simply decrements the `reg_number_float` value so that this register number is returned again from a call to the `make_new_register()` method in the future (thereby re-using it).  This, ultimately, helps the programmer keep below the sixteen register limit in lengthy methods.  The current `reg_number_float` value (after being decremented) is returned.
Example: `m.free_reg() => "6"`

* **make_new_jump_label(self)**<br/>
Create a new LABEL instruction while keeping track of how many have already been created in this method (using `num_jumps` instance variable).  This is a helper method and may not be necessary if the programmer wants to insert a LABEL instruction.  The value returned is a smali.LABEL object which is equivalent to a string of the form "`:taint_jump_label_0`".<br/>
Example: `m.make_new_jump_label() => smali.LABEL(num)`


* **embed_line(self, position, line)**<br/>
Inserts a new line of smali assembly code into the existing method smali assembly code at `position`.  This method attempts to make inserting code at a position in a way that does not make the index numbers confusing (before and after the insertion is done).  The line pointed to by position is not changed.  The new line `line` is inserted just after `position.` <br/>


Example: `embed_line(18, smali.COMMENT("blah blah"))`

```
BEFORE                                       AFTER

16 const-string v6, "HH:mm:ss"               16 const-string v6, "HH:mm:ss"
17 const/4 v1, 0x0                           17 const/4 v1, 0x0
18 or-int v6, v6, v7                         18 or-int v6, v6, v7
19 if-eqz v0, :cond_3                        19 # blah blah 
20 foo                                       20 if-eqz v0, :cond_3
                                             21 foo
```

* **embed_block(self, position, block)**<br/>
Like `embed_line()` inserts new smali assembly code into existing method smali assembly code.  This method inserts an entire block (a list of smali.AssemblyInstruction objects).

* **\_\_repr__(self)**<br/>
Gives the 'representation' of this smali method, which is a string; the method signature.  Note: the `__repr__` method is automatically invoked if the object is an element of a list and that list is printed.<br/>
Example: `repr(m) => ".method public leakLoc(Landroid/location/Location;)V"`

* **\_\_str__(self)**<br/>
Converts this SmaliMethodDef object to a string.  Identical implementation to `__repr__`<br/>
Example: `str(m) => ".method public leakLoc(Landroid/location/Location;)V"`<br/>
Example: `print(m) => ".method public leakLoc(Landroid/location/Location;)V"`

* **\_\_eq__(self)**<br/>
Invoked by `==` this method compares this SmaliMethodDef to another SmaliMethodDef to determine if they are logically equivalent.  Only the signature is used to compare the two methods (which should be sufficient).<br/>
Example: `m1 == m2 => True`