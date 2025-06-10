import re

import StigmaStringParsingLib

from SmaliRegister import SmaliRegister


class SmaliCodeIterator():
	''' This class is used to iterate over smali assembly instructions in logical units.
	Most lines of code are exactly one line in semantics, but some instructions can span multiple lines.
	For example, the invoke-* instructions can have a move-result-* instruction on the next line which stores the value.
	
	invoke-*
	filled-new-array

	This class will iterate over the code returning a list of lines.  
	Usually the list is one line, but for some instructions the list will contain multiple lines.
	
	Example:
		SCI1 = SmaliCodeIterator(some_code)
		for unit in SCI1:
			print(unit)

		# unit may be: ["const v0, 0x7f070050"]
		# or it may be:	['invoke-virtual {v0, v1}, Lcom/example/Class;->method()V', '\n', 'move-result v2']
		
		This class is used to help parse smali code and extract registers used in the code.
	'''
	def __init__(self, raw_text):
		'''Constructor for SmaliCodeIterator.
		Parameters:
		raw_text: a list of strings, each string is a line of smali assembly code.
		'''
		self.raw_text = raw_text
		
		
	@staticmethod
	def get_regs_from_code_unit(code_unit):
		'''Extracts all registers used in a code unit.  Note a code unit may be multiple lines of smali code.
		Parameters:
			code_unit: a list of strings, each string is a line of smali assembly code.
		Returns:
			A set of SmaliRegister objects representing the registers used in the code unit.

		Example:
			code_unit = ['invoke-virtual {v0, v1}, Lcom/example/Class;->method()V', '\n', 'move-result v2']
			regs = SmaliCodeIterator.get_regs_from_code_unit(code_unit)
			# regs will be a set containing SmaliRegister('v0'), SmaliRegister('v1'), SmaliRegister('v2')
			# {v0, v1, v2}
		'''
		code_unit_regs = set([])
		for line in code_unit:
			line = str(line)
			if(StigmaStringParsingLib.is_valid_instruction(line)):
				#print("unioning in " + str(set(StigmaStringParsingLib.get_v_and_p_numbers(line))) + "...")
				tmp = StigmaStringParsingLib.get_v_and_p_numbers(line)
				
				# convert the strings to SmaliRegister objects
				# because strings should only exist at a lower level
				# in the program
				tmp_set = set([])
				for item in tmp:
					tmp_set.add(SmaliRegister(item))
				
				code_unit_regs = code_unit_regs.union(tmp_set)
				
		return code_unit_regs
		
		
	def __iter__(self):
		'''Estbalishes the iterator's index'''
		self.iter_idx = 0
		return self
		
	def __next__(self):
		'''Returns the next code unit in the iterator.'''
		# the goal of this iterator is
		# only to sometimes combine invoke-*
		# and filled-new-array
		# instructions with their subsequent move-result instructions
		# 
		# I found a situation in the whatsapp.apk which 
		# has the instruction preceeding a move-result-* instruction
		# is MORE than 2 lines previous
		#
		#invoke-interface {v0, v1, v4}, LX/1Fz;->AY5(Lcom/google/android/gms/dynamic/IObjectWrapper;LX/1oP;)[LX/1p7;
		#
		#
		#
		#.line 486217
		#
		#move-result-object v10
		#
		# such a situation means that line_index-2 is not a safe assumption
		
		if(self.iter_idx >= len(self.raw_text)):
			raise StopIteration
		
		# might be a string
		# might be a SmaliAssemblyInstruction.py Object
		cur_line = self.raw_text[self.iter_idx]
		cur_line_as_string = str(cur_line)
		
		
		unit = [cur_line]
		if(StigmaStringParsingLib.could_have_a_subsequent_move_result(cur_line_as_string)):
			self.iter_idx = self.iter_idx + 1
			if(self.iter_idx >= len(self.raw_text)):
				# sets up for the next time this method is run
				# to immediately rase StopIteration
				return unit
				
			next_line = self.raw_text[self.iter_idx]
			next_line_as_string = str(next_line)
			#middle = []
			while(not StigmaStringParsingLib.is_valid_instruction(next_line_as_string) \
			and re.search(StigmaStringParsingLib.BEGINS_WITH_MOVE_RESULT, next_line_as_string) is None): # and start < len(text)):
				
				unit.append(next_line)
				self.iter_idx += 1
				if(self.iter_idx >= len(self.raw_text)):
					return unit
				
				next_line = self.raw_text[self.iter_idx]
				next_line_as_string = str(next_line)

			if(re.search(StigmaStringParsingLib.BEGINS_WITH_MOVE_RESULT, next_line_as_string) is not None):
				unit.append(next_line)
			else:
				self.iter_idx -= 1
				
		self.iter_idx += 1
		return unit


def tests():
	print("Testing SmaliCodeIterator...")
	#SmaliClassDef("test/register_listeners_method.smali", "r")
	
	print("\ttest 1...")
	fh = open("./test/random_method1.smali", "r")
	code = fh.readlines()[1:];
	fh.close()
	
	cuc1 = SmaliCodeIterator(code)
	iterator = iter(cuc1)
	assert(cuc1.__next__() == ['.method public leakPasswd(Landroid/view/View;)V\n'])
	assert(cuc1.__next__() == ['    .locals 6\n'])
	assert(cuc1.__next__() == ['    .param p1, "v"    # Landroid/view/View;\n'])
	assert(cuc1.__next__() == ['\n'])
	assert(cuc1.__next__() == ['    .line 181\n'])
	assert(cuc1.__next__() == ['    const v0, 0x7f070050\n'])
	assert(cuc1.__next__() == ['\n'])
	assert(cuc1.__next__() == ['    invoke-virtual {p0, v0}, Ledu/fandm/enovak/leaks/Main;->findViewById(I)Landroid/view/View;\n', '\n', '    move-result-object v0\n'])
	assert(cuc1.__next__() == ['\n'])
	assert(cuc1.__next__() == ['    check-cast v0, Landroid/widget/EditText;\n'])
	assert(cuc1.__next__() == ['\n'])
	assert(cuc1.__next__() == ['    .line 182\n'])
	assert(cuc1.__next__() == ['    .local v0, "et":Landroid/widget/EditText;\n'])
	assert(cuc1.__next__() == ['    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;\n', '\n', '    move-result-object v1\n'])
	assert(cuc1.__next__() == ['\n'])
	assert(cuc1.__next__() == ['    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;\n', '\n', '    move-result-object v1\n'])
	assert(cuc1.__next__() == ['\n'])
	assert(cuc1.__next__() == ['    .line 184\n'])
	assert(cuc1.__next__() == ['    .local v1, "pass":Ljava/lang/String;\n'])
	assert(cuc1.__next__() == ['    new-instance v2, Ljava/lang/StringBuilder;\n'])
	assert(cuc1.__next__() == ['\n'])
	assert(cuc1.__next__() == ['    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V\n', '\n'])
	assert(cuc1.__next__() == ['    const-string v3, "Leaked Password: "\n'])
	assert(cuc1.__next__() == ['\n'])
	assert(cuc1.__next__() == ['    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n', '\n',])
	assert(cuc1.__next__() == ['    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n', '\n'])
	assert(cuc1.__next__() == ['    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;\n', '\n', '    move-result-object v2\n'])
	assert(cuc1.__next__() == ['\n'])
	assert(cuc1.__next__() == ['    invoke-direct {p0, v2}, Ledu/fandm/enovak/leaks/Main;->prependToLog(Ljava/lang/String;)V\n', '\n', '    .line 186\n'])
	assert(cuc1.__next__() == ['    new-instance v2, Ledu/fandm/enovak/leaks/Main$ServerLeakTask;\n'])
	assert(cuc1.__next__() == ['\n'])
	assert(cuc1.__next__() == ['    invoke-direct {v2, p0}, Ledu/fandm/enovak/leaks/Main$ServerLeakTask;-><init>(Ledu/fandm/enovak/leaks/Main;)V\n', '\n', '    .line 189\n', '    .local v2, "slt":Ledu/fandm/enovak/leaks/Main$ServerLeakTask;\n'])
	assert(cuc1.__next__() == ['    const-string v3, "password"\n'])
	
	for line in cuc1:
		assert(line)
		
		
	fh = open("./test/diffPartial_method.smali", "r")
	code = fh.readlines()[1:]
	fh.close()
	
	print("\ttest 2...")
	cuc2 = SmaliCodeIterator(code)
	iterator = iter(cuc2)
	assert(next(cuc2) == ['.method private static diffPartial(Landroid/support/v7/util/DiffUtil$Callback;IIII[I[II)Landroid/support/v7/util/DiffUtil$Snake;\n'])
	assert(next(cuc2) == ['    .locals 18\n'])
	assert(next(cuc2) == ['    .param p0, "cb"    # Landroid/support/v7/util/DiffUtil$Callback;\n'])
	assert(next(cuc2) == ['    .param p1, "startOld"    # I\n'])
	assert(next(cuc2) == ['    .param p2, "endOld"    # I\n'])
	assert(next(cuc2) == ['    .param p3, "startNew"    # I\n'])
	assert(next(cuc2) == ['    .param p4, "endNew"    # I\n'])
	assert(next(cuc2) == ['    .param p5, "forward"    # [I\n'])
	assert(next(cuc2) == ['    .param p6, "backward"    # [I\n'])
	assert(next(cuc2) == ['    .param p7, "kOffset"    # I\n'])
	assert(next(cuc2) == ['\n'])
	assert(next(cuc2) == ['    .line 204\n'])
	assert(next(cuc2) == ['    move-object/from16 v0, p0\n'])
	assert(next(cuc2) == ['\n'])
	assert(next(cuc2) == ['    move-object/from16 v1, p5\n'])
	assert(next(cuc2) == ['\n'])
	assert(next(cuc2) == ['    move-object/from16 v2, p6\n'])
	assert(next(cuc2) == ['\n'])
	assert(next(cuc2) == ['    sub-int v3, p2, p1\n'])
	assert(next(cuc2) == ['\n'])
	assert(next(cuc2) == ['    .line 205\n'])
	assert(next(cuc2) == ['    .local v3, "oldSize":I\n'])
	assert(next(cuc2) == ['    sub-int v4, p4, p3\n'])
	assert(next(cuc2) == ['\n'])
	assert(next(cuc2) == ['    .line 207\n'])
	assert(next(cuc2) == ['    .local v4, "newSize":I\n'])
	assert(next(cuc2) == ['    sub-int v5, p2, p1\n'])
	assert(next(cuc2) == ['\n'])
	assert(next(cuc2) == ['    const/4 v6, 0x1\n'])
	assert(next(cuc2) == ['\n'])
	assert(next(cuc2) == ['    if-lt v5, v6, :cond_f\n'])
	assert(next(cuc2) == ['\n'])
	assert(next(cuc2) == ['    sub-int v5, p4, p3\n'])
	assert(next(cuc2) == ['\n'])
	assert(next(cuc2) == ['    if-ge v5, v6, :cond_0\n'])
	assert(next(cuc2) == ['\n'])
	assert(next(cuc2) == ['    move/from16 v17, v3\n'])
	assert(next(cuc2) == ['\n'])
	assert(next(cuc2) == ['    goto/16 :goto_b\n'])
	assert(next(cuc2) == ['\n'])
	assert(next(cuc2) == ['    .line 211\n'])
	assert(next(cuc2) == ['    :cond_0\n'])
	assert(next(cuc2) == ['    sub-int v5, v3, v4\n'])
	
	
	print("\ttest 3...")
	fh = open("./test/double_move_result_line.smali", "r")
	code = fh.readlines()
	fh.close()
	cuc2 = SmaliCodeIterator(code)
	iterator = iter(cuc2)
	
	assert(next(cuc2) == ['.class public Ledu/fandm/enovak/leaks/DoubleMoveResultTestClass;\n'])
	assert(next(cuc2) == ['.super Ljava/lang/Object;\n'])
	assert(next(cuc2) == ['.source "does_not_exist.java"\n'])
	assert(next(cuc2) == ['\n'])
	assert(next(cuc2) == ['# direct methods\n'])
	assert(next(cuc2) == ['.method public putExtraData(Landroid/support/v4/app/SupportActivity$ExtraData;)V\n'])
	assert(next(cuc2) == ['    .locals 2\n'])
	assert(next(cuc2) == ['    .param p1, "extraData"    # Landroid/support/v4/app/SupportActivity$ExtraData;\n'])
	assert(next(cuc2) == ['\n'])
	assert(next(cuc2) == ['    .line 69\n'])
	assert(next(cuc2) == ['    iget-object v0, p0, Landroid/support/v4/app/SupportActivity;->mExtraDataMap:Landroid/support/v4/util/SimpleArrayMap;\n'])
	assert(next(cuc2) == ['\n'])
	assert(next(cuc2) == ['    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;\n', '\n', '    move-result-object v1\n'])
	assert(next(cuc2) == ['\n'])
	assert(next(cuc2) == ['    invoke-virtual {v0, v1, p1}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;\n', '\n', '    .line 70\n'])
	assert(next(cuc2) == ['    return-void\n'])
	assert(next(cuc2) == ['.end method'])
	
	# untested: filled-new-array !!!
	
	
	u = ['    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;\n', '\n', '    move-result-object v1\n']
	regs = sorted(list(SmaliCodeIterator.get_regs_from_code_unit(u)))
	assert(str(regs) == "[v1, v3]")
	
	
	print("ALL SmaliCodeIterator TESTS PASSED!")
	

if __name__ == "__main__":
	tests()
