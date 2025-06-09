
import StigmaStringParsingLib

from SmaliRegister import SmaliRegister
from SmaliCodeIterator import SmaliCodeIterator




class SafeRegisterCollection():
	
	def __init__(self, desired_max_size):
		# "safe" registers are 
		#  (a) low numbered (less than v16)
		#  (b) not containing original program data
		#      (or such original program data has been moved to another register)
		#  (c) not the second 1/2 of a wide value
		#  (d) not used in the code_unit
		
		# The algorithm aims to get to goal_size
		# for the number of registers returned
		# it will stop early if possible and it will
		# throw an exception if goal_size cannot be reached
		
		# generate a list of available registers        
		self._regs = set()
		
		if(desired_max_size < 0):
			raise ValueError("Desired max size cannot be negative.")
		self._max_size = desired_max_size
		
		
	
	def add_reg_if_safe(self, reg):
		if(isinstance(reg, str)):
			reg = SmaliRegister(reg)
		
		if(not reg.is_high_numbered()):
			if reg not in self._regs:
				if len(self._regs) < self._max_size:
					
					# should be the only place where self._regs is 
					# modified
					self._regs.add(reg)  
					return True
				
		return False
		
	def add_safe_top_regs(self, top_regs):
		# 1) Try to use the top registers that were made available by growing
		before = len(self)
		for r in top_regs:
			self.add_reg_if_safe(r)
		after = len(self)
		return (after - before)
		
		
	def add_safe_registers_not_in_use_by_method(self, cur_type_map, code_unit):
		# 2) Try to use the registers not yet used in this 
		# method according to tsc
		before = len(self)
		candidates = set([])
		for i in range(16):
			r = "v" + str(i)
			if(r not in cur_type_map):
				candidates.add(r)
				
		# exclude registers used in this code unit
		# if the instruction is an invoke or new filled array, we also cannot use the registers
		# from the subsequent move-result-* instruction, in our safe registers list
		code_unit_regs = SmaliCodeIterator.get_regs_from_code_unit(code_unit)
		candidates.difference_update(code_unit_regs) # remove the intersection
		
		for item in sorted(list(candidates)):
			self.add_reg_if_safe(item)
			
		after = len(self)
		return (after - before)
		
	def is_full(self):
		return len(self) == self._max_size
	
	
	def __len__(self):
		return len(self._regs)
		
		
	def __getitem__(self, idx):
		return sorted(self._regs)[idx]
		
	
	def __list__(self):
		return sorted(list(self._regs))
	
	
	def __iter__(self):
		self.iter_idx = 0
		
		return self
		
		
	def __next__(self):
		sorted_for_iteration_regs = sorted(self._regs)
		if(self.iter_idx >= len(sorted_for_iteration_regs)):
			raise StopIteration
			
		x = sorted_for_iteration_regs[self.iter_idx]
		self.iter_idx += 1
		return x
		
	def __str__(self):
		return str(sorted(self._regs))
		
	def __contains__(self, element):
		return (element in self._regs)
		


def tests():
	print("Testing SafeRegisterCollection")
	print("\ttesting constructor...")
	sfc1 = SafeRegisterCollection(4)
	assert(str(sfc1) == "[]")
	assert(len(sfc1) == 0)
	assert(list(sfc1) == [])
	
	try:
		sfc2 = SafeRegisterCollection(-2)
		assert(False)
	except:
		pass
	
	print("\ttesting basic add register function...")
	sfc1.add_reg_if_safe("v2")
	sfc1.add_reg_if_safe("v68");
	reg_obj = SmaliRegister("v3")
	sfc1.add_reg_if_safe(reg_obj)

	assert(str(sfc1) == "[v2, v3]")
	
	print("\ttesting iterator...")
	iterator = iter(sfc1)
	assert(iterator.__next__() == "v2")
	assert(iterator.__next__() == "v3")
	
	print("\ttesting overloaded methods")
	assert("v2" in sfc1)
	assert("v8" not in sfc1)
	
	sr_tmp1 = SmaliRegister("v2")
	sr_tmp2 = SmaliRegister("v3")
		
	assert(list(sfc1) == [sr_tmp1, sr_tmp2])
	
	assert(sfc1[0] == sr_tmp1)
	
	
	print("\ttesting advanced add register functions...")
	
	tmp1 = SmaliRegister("v14")
	tmp2 = SmaliRegister("v15")
	tmp3 = SmaliRegister("v16")
	tmp4 = SmaliRegister("v17")
	top = [tmp1, tmp2, tmp3, tmp4]
	
	n = sfc1.add_safe_top_regs(top)
	assert(str(sfc1) == "[v2, v3, v14, v15]")
	assert(n == 2)
	
	
	sfc2 = SafeRegisterCollection(4)
	sfc2.add_reg_if_safe("v15")
	
	tmp_map = {"v1": "32-bit"}
	code_unit = ["    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I\n", "\n", "    move-result v7\n"]
	n = sfc2.add_safe_registers_not_in_use_by_method(tmp_map, code_unit)
	assert(n == 3)
	assert(len(sfc2) == 4)
	assert(str(sfc2) == "[v0, v10, v11, v15]")
	
	
	
	print("ALL SafeRegisterCollection TESTS PASSED!")
	
	
if __name__ == "__main__":
	tests()
