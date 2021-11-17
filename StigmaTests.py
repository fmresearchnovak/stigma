
import SmaliMethodDef
import SmaliClassDef
import StigmaStringParsingLib
import ControlFlowGraph
import TypeSafetyChecker
import TaintTrackingInstrumentationPlugin
import Instrumenter

import sys
import re
import subprocess






def type_saftey_checker_test3():
	
	# there is a couple weird strings declared at the start of the A00 method
	scd = SmaliClassDef.SmaliClassDef("./test/0wH.smali")
	
	
	
def type_safety_checker_control_flow_test():
	print("\nRunning control flow test")
	fh = open("./test/control_flow_test.smali", "r")
	method_text = fh.readlines()
	fh.close()
	
	smd =  SmaliMethodDef.SmaliMethodDef(method_text, None)   
	#print("Looks like it didnt crash!, congragulations!!!")
	cfg = ControlFlowGraph.ControlFlowGraph(method_text)
	assert(cfg.node_counter == 50)
	
	fh = open("./test/control_flow_test_adjlist_soln.txt", "r")
	adjlist_soln = fh.readline()
	fh.close()    
		
	adjlist_result = str(list(cfg.generate_adjlist()))
	assert(adjlist_result == adjlist_soln)
	
	#cfg.show()


#this edge case contains :cond shows up before the if statement shows up
def type_safety_checker_control_flow_test_edge_case_1():
	print("\nRunning control flow test 1")
	fh = open("./test/a01_method.smali", "r")
	method_list = fh.readlines()
	fh.close()
	smd =  SmaliMethodDef.SmaliMethodDef(method_list, None)
	print("Looks like it didnt crash!, congragulations!!!")


#this edge case assigns value to a new register inside of an if 
# statement and tries to access it outside of the if statement
def type_safety_checker_control_flow_test_edge_case_2():
	print("\nRunning control flow test 2")
	fh = open("./test/zza_method.smali", "r")
	method_list = fh.readlines()
	fh.close()
	smd =  SmaliMethodDef.SmaliMethodDef(method_list, None)
	print("Looks like it didnt crash!, congragulations!!!")


def type_safety_checker_control_flow_test_edge_case_3():
	print("\nRunning control flow test 3")
	fh = open("./test/registerListener_method.smali", "r")
	method_list = fh.readlines()
	fh.close()
	smd =  SmaliMethodDef.SmaliMethodDef(method_list, None)
	print("Looks like it didnt crash!, congragulations!!!")


def type_safety_checker_small_constructor_test():
	print("\nRunning small constructor test")
	fh = open("./test/small_constructor_method.smali", "r")
	method_list = fh.readlines()
	smd = SmaliMethodDef.SmaliMethodDef(method_list, None)
	#print(smd.get_num_registers())
	assert(smd.get_num_registers() == 1)
	print("passed!")


def type_safety_checker_empty_method_test():
	print("\nRunning empty method test")
	fh  = open("./test/empty_method.smali", "r")
	method_text = fh.readlines()
	fh.close()
	
	smd = SmaliMethodDef.SmaliMethodDef(method_text, None)
	#print("regs: " + str(smd.get_num_registers()))
	assert(smd.get_num_registers() == 1) # "this"
	assert(smd.signature.is_abstract)
	print("passed!")


def type_safety_checker_action_bar_try_catch_leaks():
	print("\nRunning action bar test")
	fh = open("./test/setActionBarUp_method.smali", "r")
	method_list = fh.readlines()
	fh.close()
	
	smd = SmaliMethodDef.SmaliMethodDef(method_list, None)
	# not crashing is enough for this test apparently
	print("passed!")


#catch label can be :catch_0 format or also :catchall
def type_safety_checker_leaks_test():
	print("\nRunning type safety checker leaks test")
	
	method_text = open("./test/edge_case_method1.smali", "r").readlines()
	mock_class = SmaliClassDef.MockSmaliClassDef()
	smd = SmaliMethodDef.SmaliMethodDef(method_text, mock_class)
	#print(smd.get_num_registers())
	assert(smd.get_num_registers() == 20)
	smd.grow_locals(Instrumenter.DESIRED_NUM_REGISTERS)
	smd.instrument()
	
	print("passed!")



def type_safety_checker_aget2_test():
	print("\nRunning aget2 test")
	
	
	fh = open("test/diffPartial_method.smali", "r")
	method_list = fh.readlines()
	fh.close()
	#print("Building SMD")
	mock_class = SmaliClassDef.MockSmaliClassDef();
	smd = SmaliMethodDef.SmaliMethodDef(method_list, mock_class)
	#print("Instrumenting")
	smd.grow_locals(Instrumenter.DESIRED_NUM_REGISTERS)
	smd.instrument()
	
	print("passed!")




def type_safety_weather_app_test():
	print("\nRunning weather app test")
	method_text = '''.method private static native _getDirectBufferPointer(Ljava/nio/Buffer;)J
	.end method'''
	
	method_list = method_text.split("\n")
	print("Building SMD")
	smd = SmaliMethodDef.SmaliMethodDef(method_list, None)
	print("Instrumenting")
	smd.instrument()
	
	print("passed!")
	


def comparison_count_test1():
	fh = open ("./test/random_method1.smali", "r")
	method_text = fh.readlines()

	smd =  SmaliMethodDef.SmaliMethodDef(method_text, None)
	
	#print("count: " + str(smd.get_num_comparison_instructions()))
	assert(smd.get_num_comparison_instructions() == 1)
		
		

	
	
def types_from_parameters_test():
	fh = open ("./test/random_method1.smali", "r")
	method_text = fh.readlines()
	smd = SmaliMethodDef.SmaliMethodDef(method_text, None)
	
	cfg = ControlFlowGraph.ControlFlowGraph(smd.raw_text)
	tsc = TypeSafetyChecker.TypeSafetyChecker(smd.signature, cfg) 
	
	#print(tsc.most_recent_type_map)
	# test that type map is valid (from parameters)
	assert(str(tsc.most_recent_type_map) == "{'p0': Lunknownclass;, 'p1': Landroid/view/View;}")
	
	# test that parameter_type_map is signature and tsc.most_recent_type_map are separate instances
	smd.signature.parameter_type_map["p1"] = "something else!"
	#print(tsc.most_recent_type_map)
	assert(str(tsc.most_recent_type_map) == "{'p0': Lunknownclass;, 'p1': Landroid/view/View;}")
	
	
def type_saftey_checker_tests():
	fh = open("test/random_method1_cropped.smali", "r")
	method_text = fh.readlines()

	smd =  SmaliMethodDef.SmaliMethodDef(method_text, None)
	cfg = ControlFlowGraph.ControlFlowGraph(smd.raw_text)

	tsc = TypeSafetyChecker.TypeSafetyChecker(smd.signature, cfg) 
	#print(str(tsc.most_recent_type_map))
	assert(str(tsc.most_recent_type_map) == "{'p0': Lunknownclass;, 'p1': Landroid/view/View;}")
	
	counter = 0
	while(cfg.nodes_left_to_visit()):
		node = cfg[counter]
		
		if(not node["visited"]):
			node["visited"] = True 
			
			#call type_update on each line of code inside the node. 
			for index in range(len(node["text"])):
				line = node["text"][index]        
				#print(type(line), ": " + str(line))         
				tsc.type_update(line, index, counter)
				node["type_list"] = tsc.node_type_list

		counter+=1  
		
	#print(tsc.node_type_list)
	#print("list of hashmaps length: " + str(len(tsc.node_type_list)))
	assert(len(tsc.node_type_list) == 7)
	assert(tsc.node_type_list[-1] == tsc.most_recent_type_map)
	assert(str(tsc.most_recent_type_map) == "{'p0': Lunknownclass;, 'p1': Landroid/view/View;, 'v0': 32-bit}")
	#print("method code length: " + str(len(smd.tsc.text)))
	assert(len(smd.raw_text) == 7)
	assert(len(tsc.node_type_list) == 7)
	assert(cfg.node_counter == 2)


def grow_locals_test_1():
	fh = open("./test/random_method1.smali", "r")
	method_list = fh.readlines()
	fh.close()

	smd = SmaliMethodDef.SmaliMethodDef(method_list, None)
	smd.grow_locals(3)
	#print(smd)
	smd.write_to_file(str(smd.get_name()) + ".smali")


	test_line = "    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;\n"
	result_line = smd.dereference_p_to_v_numbers(test_line)
	assert(result_line == test_line)
   
	test_line = "    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;\n"
	result_line = smd.dereference_p_to_v_numbers(test_line)
	#print(result_line)
	assert(result_line == "    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;\n")
	
	test_line = "    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->toString()Ljava/lang/String;\n"
	result_line = smd.dereference_p_to_v_numbers(test_line)
	#print(result_line)
	assert(result_line == "    invoke-virtual {v9, v10, v11}, Ljava/lang/Object;->toString()Ljava/lang/String;\n")


	
	method_text = '''.method public leakPasswd(Landroid/view/View;J)V
	.locals 3
	.param p1, "v"    # Landroid/view/View;
	.param p2, "x"    # Long (64-bits, "wide")
	.param p3, "x"

	.line 181
	const-string p2, "p2"
	
	const-string p3, "p3"

	invoke-virtual {p0, v0}, Ledu/fandm/enovak/leaks/Main;->findViewById(I)Landroid/view/View;

	move-result-object v2
	
	return v2
	
	.end_method'''

	
	method_list = method_text.split("\n")
	smd = SmaliMethodDef.SmaliMethodDef(method_list, None)
	smd.convert_all_lines_p_to_v_numbers()
	#print(smd.raw_text)
	
	
	
	ans = smd.dereference_p_to_v_numbers("invoke-virtual/range {v2 .. p2}, Landroid/support/v4/app/FragmentManagerNonConfig;->getFragments()Ljava/util/List;")
	assert(ans == "invoke-virtual/range {v2 .. v5}, Landroid/support/v4/app/FragmentManagerNonConfig;->getFragments()Ljava/util/List;")
	
	
def grow_locals_test_2():
	scd = SmaliClassDef.SmaliClassDef("./test/Main.smali")
	scd.grow_locals(3)
	scd.write_to_file("./test/Main_After.smali")
	
	
def stigma_leaks_crash_SupportActivity():
	print("\nTesting grow() functionality...")
	
	scd = SmaliClassDef.SmaliClassDef("./test/SupportActivity.smali")
	
	
	
	
	scd.grow_locals(4)
	scd.write_to_file("./test/SupportActivity_After.smali")
	

	# Make sure locals cannot be grown twice
	smd = scd.methods[0]
	try:
		smd.grow_locals(4)
		assert(False)
	except ValueError:
		pass
		
	arbitrary_method = scd.methods[0]
	assert(arbitrary_method.has_grown == 4)
	#print(arbitrary_method.top_regs)
	assert(arbitrary_method.top_regs == ['v2', 'v3', 'v4', 'v5'])
	#print(arbitrary_method.first_new_free_reg_num)
	assert(arbitrary_method.first_new_free_reg_num == 2)
	
	print("passed!")
	
	
	
def double_move_result_bug():
	print("\nRunning basic wholistic taint tracking instrumentation tests (double move result bug)...")
	
	scd = SmaliClassDef.SmaliClassDef("./test/double_move_result_line.smali")
	putExtraData_method = scd.methods[0]
	#print(str(putExtraData_method))
	#print(putExtraData_method.get_locals_directive_line())
	assert(str(putExtraData_method.get_locals_directive_line()) == ".locals 2")
	#print(putExtraData_method.get_register_meta_data())
	assert(putExtraData_method.get_register_meta_data() == "['v0', 'v1', 'v2/p0', 'v3/p1']")

	scd.grow_locals(Instrumenter.DESIRED_NUM_REGISTERS)
	scd.instrument()
	scd.write_to_file("./test/double_move_result_line_result.smali")
	
	#print(str(putExtraData_method))
	#print(putExtraData_method.get_locals_directive_line())
	assert(str(putExtraData_method.get_locals_directive_line()) == ".locals 6")
	#print(putExtraData_method.get_register_meta_data())
	assert(putExtraData_method.get_register_meta_data() == "['v0', 'v1', 'v2/p0', 'v3/p1', 'v4', 'v5', 'v6', 'v7']")
	
	
	result = open("./test/double_move_result_line_result.smali", "r").readlines()
	soln = open("./test/double_move_result_line_soln.smali", "r").readlines()
	assert(result == soln)
	
	print("passed!")
	
def wide_register_index_out_of_range_bug():
	print("\nRunning wide register index out of range bug")
	print("\t(no instrumentation in this test)")
	
	# I think the bug is related to the move-wide for p3 (the second part of the last (wide) parameter)
	scd = SmaliClassDef.SmaliClassDef("./test/binarySearch_method.smali")
	binarySearchMethod = scd.methods[0]
	#print(binarySearchMethod.get_register_meta_data())
	scd.grow_locals(Instrumenter.DESIRED_NUM_REGISTERS)
	#print(binarySearchMethod.get_register_meta_data())
	
	scd.write_to_file("./test/binarySearch_method_result.smali")
	
	result_fh = open("./test/binarySearch_method_result.smali")
	result = result_fh.readlines()
	result_fh.close()
	
	solution_fh = open("./test/binarySearch_method_soln.smali")
	solution = solution_fh.readlines()
	solution_fh.close()
	
	assert(result == solution)
	
	print("passed!")
	
	
def get_class_from_non_reference_register_bug():
	
	print("\nRunning get class from non reference register bug")
	
	scd = SmaliClassDef.SmaliClassDef("./test/endAnimatingAwayFragments_method.smali")
	endAnimatingMethod = scd.methods[0]
	#print("before growth")
	#print(endAnimatingMethod)
	#print(endAnimatingMethod.get_register_meta_data())
	#print("\n\n")
	
	scd.grow_locals(Instrumenter.DESIRED_NUM_REGISTERS)

	#print("after growth")
	#print(endAnimatingMethod)
	#print(endAnimatingMethod.get_register_meta_data())
	
	scd.instrument()
	scd.write_to_file("./test/endAnimatingAwayFragments_method_result.smali")
	
	# there was a bug demonstrated by this method.  The system was using
	# the registers as "free_regs" even if they were used on a subsequent
	# move-result-* instruction (re: invoke-* and filled-new-array operations)
	
	fh = open("./test/endAnimatingAwayFragments_method_result.smali", "r")
	result = fh.readlines()
	fh.close()
	
	fh = open("./test/endAnimatingAwayFragments_method_soln.smali", "r")
	soln = fh.readlines()
	fh.close()
	
	#print(soln)
	
	assert(result == soln)
	
	print("passed!")
	
	
def register_shuffling_test():
	print("\nRunning register shuffling test")
	
	scd = SmaliClassDef.SmaliClassDef("./test/custom_class.smali")
	made_up_method = scd.methods[0]
	#print(made_up_method.get_register_meta_data())
	assert(made_up_method.get_register_meta_data() == str(['v0', 'v1', 'v2', 'v3', 'v4', 'v5', 'v6', 'v7', 'v8', 'v9', 'v10', 'v11', 'v12', 'v13', 'v14', 'v15', 'v16/p0', 'v17/p1', 'v18/p2', 'v19/p3']))
	
	scd.grow_locals(Instrumenter.DESIRED_NUM_REGISTERS)
	
	#print(made_up_method.get_register_meta_data())
	assert(made_up_method.get_register_meta_data() == str(['v0', 'v1', 'v2', 'v3', 'v4', 'v5', 'v6', 'v7', 'v8', 'v9', 'v10', 'v11', 'v12', 'v13', 'v14', 'v15', 'v16/p0', 'v17/p1', 'v18/p2', 'v19/p3', 'v20', 'v21', 'v22', 'v23']))
	
	scd.instrument()
	scd.write_to_file("./test/custom_class_result.smali")
	
	
	fh = open("./test/endAnimatingAwayFragments_method_result.smali", "r")
	result = fh.readlines()
	fh.close()
	
	fh = open("./test/endAnimatingAwayFragments_method_soln.smali", "r")
	soln = fh.readlines()
	fh.close()
	
	assert(result == soln)
	
	print("passed!")
	
	
	
def reversed_move_parameters_test():
	print("\nRunning reversed move parameters test")
	
	scd = SmaliClassDef.SmaliClassDef("./test/supportActivity_method.smali")
	scd.grow_locals(Instrumenter.DESIRED_NUM_REGISTERS)
	scd.instrument()
	scd.write_to_file("./test/supportActivity_method_result.smali")

	
	# the bug here is that v0 was used for the tag propagation on 
	# the initial parameter moves, but v0 was used on the second and 
	# and therefore did not hold the correct value when it was used 
	# later, by the original program
	
	fh = open("./test/supportActivity_method_result.smali", "r")
	result = fh.readlines()
	fh.close()
	
	fh = open("./test/supportActivity_method_soln.smali", "r")
	soln = fh.readlines()
	fh.close()
	
	assert(result == soln)
	
	print("passed!")
	
	
	
def wide_register_index_out_of_range_bug_2():
	print("\nRunning wide register index out of range bug 2")
	
	scd = SmaliClassDef.SmaliClassDef("./test/makeOpenCloseAnimation_method.smali")
	scd.grow_locals(Instrumenter.DESIRED_NUM_REGISTERS)
	scd.instrument()
	scd.write_to_file("./test/makeOpenCloseAnimation_method_result.smali")
	
	# the bug here is that v19 was used in the moves_before and moves_after
	# but it was used to store a wide value and the method does not allow
	# the user of v20
	# .locals is 15 and there are 5 parameter registers (counting this)
	# so the method uses 20 registers total: v0 - v19
	
	fh = open("./test/makeOpenCloseAnimation_method_result.smali", "r")
	result = fh.readlines()
	fh.close()
	
	fh = open("./test/makeOpenCloseAnimation_method_soln.smali", "r")
	soln = fh.readlines()
	fh.close()
	
	assert(result == soln)
	
	print("passed!")
	
	
	
def wide_register_has_type_long_string():
	print("\nRunning wide register has type long/string")
	
	scd = SmaliClassDef.SmaliClassDef("./test/checkArgumentInRange_method.smali")
	
	check_arg_method = scd.methods[0]
	#print("before growing: ", check_arg_method.get_register_meta_data())
	scd.grow_locals(Instrumenter.DESIRED_NUM_REGISTERS)
	#print("after growing: ", check_arg_method.get_register_meta_data())
	scd.instrument()
	scd.write_to_file("./test/checkArgumentInRange_method_result.smali")
	
	# the bug here is that v19 was used in the moves_before and moves_after
	# but it was used to store a wide value and the method does not allow
	# the user of v20
	# .locals is 15 and there are 5 parameter registers (counting this)
	# so the method uses 20 registers total: v0 - v19
	
	fh = open("./test/checkArgumentInRange_method_result.smali", "r")
	result = fh.readlines()
	fh.close()
	
	fh = open("./test/checkArgumentInRange_method_soln.smali", "r")
	soln = fh.readlines()
	fh.close()
	
	assert(result == soln)
	
	print("passed!")
	
	
def on_nested_scrolling_parent_helper():
	print("\nRunning copy1 v0<-v4")
	
	scd = SmaliClassDef.SmaliClassDef("./test/onNestedScrollAccepted_method.smali")
	
	check_arg_method = scd.methods[0]
	#print("before growing: ", check_arg_method.get_register_meta_data())
	scd.grow_locals(Instrumenter.DESIRED_NUM_REGISTERS)
	#print("after growing: ", check_arg_method.get_register_meta_data())
	scd.instrument()
	scd.write_to_file("./test/onNestedScrollAccepted_method_result.smali")
	
	# the bug here is that v19 was used in the moves_before and moves_after
	# but it was used to store a wide value and the method does not allow
	# the user of v20
	# .locals is 15 and there are 5 parameter registers (counting this)
	# so the method uses 20 registers total: v0 - v19
	
	fh = open("./test/onNestedScrollAccepted_method_result.smali", "r")
	result = fh.readlines()
	fh.close()
	
	fh = open("./test/onNestedScrollAccepted_method_soln.smali", "r")
	soln = fh.readlines()
	fh.close()
	
	assert(result == soln)
	
	print("passed!")
	
	
	
	
	
def register_listeners():
	print("\nRunning missing return result bug")
	
	scd = SmaliClassDef.SmaliClassDef("./test/register_listeners_method.smali")

	scd.grow_locals(Instrumenter.DESIRED_NUM_REGISTERS)
	scd.instrument()
	scd.write_to_file("./test/register_listeners_method_result.smali")
	
	# the bug here is that v19 was used in the moves_before and moves_after
	# but it was used to store a wide value and the method does not allow
	# the user of v20
	# .locals is 15 and there are 5 parameter registers (counting this)
	# so the method uses 20 registers total: v0 - v19
	
	fh = open("./test/register_listeners_method_result.smali", "r")
	result = fh.readlines()
	fh.close()
	
	fh = open("./test/register_listeners_method_soln.smali", "r")
	soln = fh.readlines()
	fh.close()
	
	assert(result == soln)
	
	print("passed!")
	
	
	
	
	
def internal_tests():
	
	print("--Running Internal Tests--")
	
	src_code_with_internal_tests = ["StigmaStringParsingLib.py", 
		"SmaliMethodDef.py", "SmaliTypes.py", 
		"SmaliRegister.py", "SmaliAssemblyInstructions.py",
		"Instrumenter.py", "TaintStorageHandler.py"]
	
	
	for src in src_code_with_internal_tests:
		cmd = ["python3", src]
		finished_proc = subprocess.run(cmd)
		finished_proc.check_returncode()
		print()
	

	print("\n--Finished All Internal Tests!--\n")

def main():
	
	internal_tests()
	
	
	TaintTrackingInstrumentationPlugin.main()
	
	
	comparison_count_test1()
	
	types_from_parameters_test()
	type_saftey_checker_tests()
	
	
	type_saftey_checker_test3()
	type_safety_checker_control_flow_test()                   
	type_safety_checker_control_flow_test_edge_case_1()       
	type_safety_checker_control_flow_test_edge_case_2()      
	type_safety_checker_control_flow_test_edge_case_3()      
	type_safety_checker_small_constructor_test()
	type_safety_checker_empty_method_test()
	type_safety_checker_action_bar_try_catch_leaks() 

	grow_locals_test_1()
	grow_locals_test_2()
	

	type_safety_checker_aget2_test()
	type_safety_checker_leaks_test()
	type_safety_weather_app_test()
	
	
	stigma_leaks_crash_SupportActivity()
	double_move_result_bug()
	wide_register_index_out_of_range_bug()
	get_class_from_non_reference_register_bug()
	register_shuffling_test()
	reversed_move_parameters_test()
	wide_register_index_out_of_range_bug_2()
	wide_register_has_type_long_string()
	on_nested_scrolling_parent_helper()
	register_listeners()
	
	
	
	print("\n\n")
	print("+-------------------+")
	print("| ALL TESTS PASSED! |")
	print("+-------------------+")
	
	
if __name__=="__main__":
	main()
