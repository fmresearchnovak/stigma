import sys
import subprocess

from lib import SmaliClassDef
from lib import SmaliMethodDef
from lib import TypeSafetyChecker

import ControlFlowGraph
import plugin.TaintTrackingInstrumentationPlugin as TaintTrackingInstrumentationPlugin
import Instrumenter









def type_saftey_checker_test3():
	
	# there is a couple weird strings declared at the start of the A00 method
	scd = SmaliClassDef.SmaliClassDef("./test/0wH.smali")
	
	
	
	
	
	
	
def type_safety_checker_control_flow_test():
	print("\nRunning control flow test")
	fh = open("./test/control_flow_test.smali", "r")
	method_text = fh.readlines()[1:]
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
	method_list = fh.readlines()[1:]
	fh.close()
	smd =  SmaliMethodDef.SmaliMethodDef(method_list, None)
	print("Looks like it didnt crash!, congragulations!!!")


#this edge case assigns value to a new register inside of an if 
# statement and tries to access it outside of the if statement
def type_safety_checker_control_flow_test_edge_case_2():
	print("\nRunning control flow test 2")
	fh = open("./test/zza_method.smali", "r")
	method_list = fh.readlines()[1:]
	fh.close()
	smd =  SmaliMethodDef.SmaliMethodDef(method_list, None)
	print("Looks like it didnt crash!, congragulations!!!")


def type_safety_checker_control_flow_test_edge_case_3():
	print("\nRunning control flow test 3")
	print("\ttest/registerListener_method.smali")
	
	
	fh = open("./test/registerListener_method.smali", "r")
	method_list = fh.readlines()[1:]
	fh.close()
	smd =  SmaliMethodDef.SmaliMethodDef(method_list, None)
	print("Looks like it didnt crash!, congragulations!!!")


def type_safety_checker_small_constructor_test():
	print("\nRunning small constructor test")
	fh = open("./test/small_constructor_method.smali", "r")
	method_list = fh.readlines()[1:]
	smd = SmaliMethodDef.SmaliMethodDef(method_list, None)
	#print(smd.get_num_registers())
	assert(smd.get_num_registers() == 1)
	print("passed!")


def type_safety_checker_empty_method_test():
	print("\nRunning empty method test")
	fh  = open("./test/empty_method.smali", "r")
	method_text = fh.readlines()[1:]
	fh.close()
	
	smd = SmaliMethodDef.SmaliMethodDef(method_text, None)
	#print("regs: " + str(smd.get_num_registers()))
	assert(smd.get_num_registers() == 1) # "this"
	assert(smd.signature.is_abstract)
	print("passed!")


def type_safety_checker_action_bar_try_catch_leaks():
	print("\nRunning action bar test")
	fh = open("./test/setActionBarUp_method.smali", "r")
	method_list = fh.readlines()[1:]
	fh.close()
	
	smd = SmaliMethodDef.SmaliMethodDef(method_list, None)
	# not crashing is enough for this test apparently
	print("passed!")


#catch label can be :catch_0 format or also :catchall
def type_safety_checker_leaks_test():
	print("\nRunning type safety checker leaks test")
	
	method_text = open("./test/edge_case_method1.smali", "r").readlines()[1:]
	mock_class = SmaliClassDef.MockSmaliClassDef()
	smd = SmaliMethodDef.SmaliMethodDef(method_text, mock_class)
	#print(smd.get_num_registers())
	assert(smd.get_num_registers() == 20)
	#print(Instrumenter.MAX_DESIRED_NUM_REGISTERS)
	assert(Instrumenter.MAX_DESIRED_NUM_REGISTERS == 4)
	smd.grow_locals(Instrumenter.MAX_DESIRED_NUM_REGISTERS)
	smd.instrument()
	
	print("passed!")



def type_safety_checker_aget2_test():
	print("\nRunning aget2 test")
	
	
	fh = open("test/diffPartial_method.smali", "r")
	method_list = fh.readlines()[1:]
	fh.close()
	#print("Building SMD")
	mock_class = SmaliClassDef.MockSmaliClassDef();
	smd = SmaliMethodDef.SmaliMethodDef(method_list, mock_class)
	mock_class.methods.append(smd)
	#print(smd)
	#print("Instrumenting")
	assert(Instrumenter.MAX_DESIRED_NUM_REGISTERS == 4)
	smd.grow_locals(Instrumenter.MAX_DESIRED_NUM_REGISTERS)
	mock_class.write_to_file("test/diffPartial_method_grown.smali")
	smd.instrument()
	
	print("passed!")




def type_safety_weather_app_test():
	print("\nRunning weather app test")
	method_text = '''.method private static native _getDirectBufferPointer(Ljava/nio/Buffer;)J
	.end method'''
	
	scd = SmaliClassDef.SmaliClassDef("./test/empty_file.smali")
	method_list = method_text.split("\n")
	print("Building SMD")
	smd = SmaliMethodDef.SmaliMethodDef(method_list, scd)
	smd.old_locals_num = 0
	print("Instrumenting")
	smd.instrument()
	
	print("passed!")
	


def comparison_count_test1():
	print("\nRunning comparison count test")
	print("\ttest/random_method1.smali")
	fh = open ("./test/random_method1.smali", "r")
	method_text = fh.readlines()[1:]

	smd =  SmaliMethodDef.SmaliMethodDef(method_text, None)
	
	#print("count: " + str(smd.get_num_comparison_instructions()))
	assert(smd.get_num_comparison_instructions() == 1)
		
		
	print("passed!")

	
	
def types_from_parameters_test():
	print("\nTesting types_from_parameters...")
	print("\ttest/random_method1.smali")
	fh = open ("./test/random_method1.smali", "r")
	method_text = fh.readlines()[1:]
	smd = SmaliMethodDef.SmaliMethodDef(method_text, None)
	
	cfg = ControlFlowGraph.ControlFlowGraph(smd.raw_text)
	tsc = TypeSafetyChecker.TypeSafetyChecker(smd.signature, cfg) 
	
	#print(tsc.most_recent_type_map)
	# test that type map is valid (from parameters)
	assert(str(tsc.most_recent_type_map) == "{p0: Lunknownclass;, p1: Landroid/view/View;}")
	
	# test that parameter_type_map is signature and tsc.most_recent_type_map are separate instances
	smd.signature.parameter_type_map["p1"] = "something else!"
	#print(tsc.most_recent_type_map)
	assert(str(tsc.most_recent_type_map) == "{p0: Lunknownclass;, p1: Landroid/view/View;}")
	
	code_unit = ["    cmp-long v10, v4, v27\n"]
	new_map = tsc._type_update_instruction(code_unit, False, 0)
	#print(new_map)
	assert(new_map["v10"] == "32-bit")
	assert(new_map["v4"] == "64-bit")
	assert(new_map["v5"] == "64-bit-2")
	
	
	code_unit = ["    move-object v0, p0\n"]
	new_map = tsc._type_update_instruction(code_unit, False, 0)
	#print(new_map)
	assert(new_map["v0"] == "Lunknownclass;")
	
	print("passed!")
	
	
	
def type_saftey_checker_tests():
	print("\nRunning type safety checker tests")
	print("\ttest/random_method1_cropped.smali")
	
	fh = open("test/random_method1_cropped.smali", "r")
	method_text = fh.readlines()[1:]
	n = len(method_text)

	smd =  SmaliMethodDef.SmaliMethodDef(method_text, None)
	cfg = ControlFlowGraph.ControlFlowGraph(smd.raw_text)

	tsc = TypeSafetyChecker.TypeSafetyChecker(smd.signature, cfg) 
	#print("Actual:", str(tsc.most_recent_type_map))
	assert(str(tsc.most_recent_type_map) == "{p0: Lunknownclass;, p1: Landroid/view/View;}")
	
	counter = 0
	while(cfg.nodes_left_to_visit()):
		node = cfg[counter]
		
		if(not node["visited"]):
			node["visited"] = True 
			
			smali_code_unit_collection = SmaliMethodDef.SmaliCodeIterator(node["text"])
			is_first_line = True
			for unit in smali_code_unit_collection:
				tsc.type_update(unit, is_first_line, counter) 
				#print("map after update:", tsc.node_type_list[-1])
				is_first_line = False
				node["type_list"] = tsc.node_type_list
					
		counter+=1  
		
	#print(tsc.node_type_list)
	#print("list of hashmaps length: " + str(len(tsc.node_type_list)))
	#print("most recent: " + str(tsc.most_recent_type_map))
	#cfg.show()
	assert(len(tsc.node_type_list) == n) # one for each line
	assert(tsc.node_type_list[-1] == tsc.most_recent_type_map)
	print(tsc.most_recent_type_map)
	assert(str(tsc.most_recent_type_map) == "{p0: Lunknownclass;, p1: Landroid/view/View;, v0: 32-bit, v5: ?, v6: 64-bit, v7: 64-bit-2}")
	#print("method code length: " + str(len(smd.tsc.text)))
	assert(len(smd.raw_text) == n)
	assert(len(tsc.node_type_list) == n)
	#print(cfg.node_counter)
	assert(cfg.node_counter == 4)
	print("passed!")

def grow_locals_test_1():
	print("\nRunning grow locals test")
	print("\ttest/random_method1.smali")
	fh = open("./test/random_method1.smali", "r")
	method_list = fh.readlines()[1:]
	fh.close()

	smd = SmaliMethodDef.SmaliMethodDef(method_list, None)
	smd.grow_locals(3)
	# TODO: write some assertions here about what the should look like now that it's grow()'ed


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
	print("passed!")
	
	
def grow_locals_test_2():
	print("\nRunning grow locals 2 test")
	print("\ttest/Main.smali")
	
	scd = SmaliClassDef.SmaliClassDef("./test/Main.smali")
	for m in scd.methods:
		m.grow_locals(3)
	scd.write_to_file("./test/Main_After.smali")
	
	print("passed!")
	
	
def stigma_leaks_crash_SupportActivity():
	print("\nTesting grow() functionality...")
	
	scd = SmaliClassDef.SmaliClassDef("./test/SupportActivity.smali")
	
	
	
	Instrumenter.MAX_DESIRED_NUM_REGISTERS = 4
	scd.instrument()
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
	print("\ttest/double_move_result_line.smali")
	
	scd = SmaliClassDef.SmaliClassDef("./test/double_move_result_line.smali")
	putExtraData_method = scd.methods[0]
	#print(str(putExtraData_method))
	#print(putExtraData_method.get_locals_directive_line())
	assert(str(putExtraData_method.get_locals_directive_line()) == ".locals 2")
	#print(putExtraData_method.get_register_meta_data())
	assert(putExtraData_method.get_register_meta_data() == "['v0', 'v1', 'v2/p0', 'v3/p1']")

	#scd.grow_locals(Instrumenter.MAX_DESIRED_NUM_REGISTERS)
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
	scd.grow_locals(Instrumenter.MAX_DESIRED_NUM_REGISTERS)
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
	print("\ttest/endAnimatingAwayFragments_method.smali")
	
	scd = SmaliClassDef.SmaliClassDef("./test/endAnimatingAwayFragments_method.smali")
	endAnimatingMethod = scd.methods[0]
	#print("before growth")
	#print(endAnimatingMethod)
	#print(endAnimatingMethod.get_register_meta_data())
	#print("\n\n")
	
	scd.grow_locals(Instrumenter.MAX_DESIRED_NUM_REGISTERS)

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
	print("\ttest/custom_class.smali")
	
	scd = SmaliClassDef.SmaliClassDef("./test/custom_class.smali")
	made_up_method = scd.methods[0]
	#print(made_up_method.get_register_meta_data())
	assert(made_up_method.get_register_meta_data() == str(['v0', 'v1', 'v2', 'v3', 'v4', 'v5', 'v6', 'v7', 'v8', 'v9', 'v10', 'v11', 'v12', 'v13', 'v14', 'v15', 'v16/p0', 'v17/p1', 'v18/p2', 'v19/p3']))
	
	scd.instrument()
	scd.write_to_file("./test/custom_class_result.smali")

	#print(made_up_method.get_register_meta_data())
	assert(made_up_method.get_register_meta_data() == str(['v0', 'v1', 'v2', 'v3', 'v4', 'v5', 'v6', 'v7', 'v8', 'v9', 'v10', 'v11', 'v12', 'v13', 'v14', 'v15', 'v16/p0', 'v17/p1', 'v18/p2', 'v19/p3', 'v20', 'v21', 'v22', 'v23']))
	
	
	fh = open("./test/custom_class_result.smali", "r")
	result = fh.readlines()
	fh.close()
	
	fh = open("./test/custom_class_soln.smali", "r")
	soln = fh.readlines()
	fh.close()
	
	assert(result == soln)
	
	print("passed!")
	
	
	
def reversed_move_parameters_test():
	print("\nRunning reversed move parameters test")
	print("\ttest/supportActivity_method.smali")
	
	scd = SmaliClassDef.SmaliClassDef("./test/supportActivity_method.smali")
	scd.grow_locals(Instrumenter.MAX_DESIRED_NUM_REGISTERS)
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
	print("\ttest/makeOpenCloseAnimation_method.smali")
	
	scd = SmaliClassDef.SmaliClassDef("./test/makeOpenCloseAnimation_method.smali")
	scd.grow_locals(Instrumenter.MAX_DESIRED_NUM_REGISTERS)
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
	print("\ttest/checkArgumentInRange_method.smali")
	
	scd = SmaliClassDef.SmaliClassDef("./test/checkArgumentInRange_method.smali")
	
	check_arg_method = scd.methods[0]
	#print("before growing: ", check_arg_method.get_register_meta_data())
	scd.grow_locals(Instrumenter.MAX_DESIRED_NUM_REGISTERS)
	#print("after growing: ", check_arg_method.get_register_meta_data())
	scd.instrument()
	scd.write_to_file("./test/checkArgumentInRange_method_result.smali")
	
	
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
	print("\ttest/onNestedScrollAccepted_method.smali")
	
	scd = SmaliClassDef.SmaliClassDef("./test/onNestedScrollAccepted_method.smali")
	
	check_arg_method = scd.methods[0]
	#print("before growing: ", check_arg_method.get_register_meta_data())
	scd.grow_locals(Instrumenter.MAX_DESIRED_NUM_REGISTERS)
	#print("after growing: ", check_arg_method.get_register_meta_data())
	scd.instrument()
	scd.write_to_file("./test/onNestedScrollAccepted_method_result.smali")
	
	
	fh = open("./test/onNestedScrollAccepted_method_result.smali", "r")
	result = fh.readlines()
	fh.close()
	
	fh = open("./test/onNestedScrollAccepted_method_soln.smali", "r")
	soln = fh.readlines()
	fh.close()
	
	assert(result == soln)
	
	print("passed!")
	
	
	
	
	
def register_listeners():
	print("\nRunning missing move-result bug")
	print("\ttest/register_listeners_method.smali")
	# a move-result was dropped
	
	scd = SmaliClassDef.SmaliClassDef("./test/register_listeners_method.smali")

	scd.grow_locals(Instrumenter.MAX_DESIRED_NUM_REGISTERS)
	scd.instrument()
	scd.write_to_file("./test/register_listeners_method_result.smali")
	
	
	fh = open("./test/register_listeners_method_result.smali", "r")
	result = fh.readlines()
	fh.close()
	
	fh = open("./test/register_listeners_method_soln.smali", "r")
	soln = fh.readlines()
	fh.close()
	
	assert(result == soln)
	
	print("passed!")
	
	

def on_start_intent_sender_from_fragment():
	print("\nRunning copy v19<-v0 Imprecise Constant: -128")
	print("\ttest/onStartIntentSenderFromFragment_method.smali")
	
	scd = SmaliClassDef.SmaliClassDef("./test/onStartIntentSenderFromFragment_method.smali")
	
	check_arg_method = scd.methods[0]
	#print("before growing: ", check_arg_method.get_register_meta_data())
	scd.grow_locals(Instrumenter.MAX_DESIRED_NUM_REGISTERS)
	#print("after growing: ", check_arg_method.get_register_meta_data())
	scd.instrument()
	scd.write_to_file("./test/onStartIntentSenderFromFragment_method_result.smali")
	
	
	fh = open("./test/onStartIntentSenderFromFragment_method_result.smali", "r")
	result = fh.readlines()
	fh.close()
	
	fh = open("./test/onStartIntentSenderFromFragment_method_soln.smali", "r")
	soln = fh.readlines()
	fh.close()
	
	assert(result == soln)
	
	print("passed!")
	

def tried_to_get_class_from_non_reference_register_v0():
	# tried to get class from non-reference register v0 (type=Float)
	print("\nRunning tried to get class from non-reference register v0 (type=Float)")
	print("\ttest/executeOpsTogether_method.smali")
	
	# this method was truncated just after the instructions relevant
	# to the bug being fixed
	scd = SmaliClassDef.SmaliClassDef("./test/executeOpsTogether_method_truncated.smali")
	
	check_arg_method = scd.methods[0]
	#print("before growing: ", check_arg_method.get_register_meta_data())
	scd.grow_locals(Instrumenter.MAX_DESIRED_NUM_REGISTERS)
	#print("after growing: ", check_arg_method.get_register_meta_data())
	scd.instrument()
	scd.write_to_file("./test/executeOpsTogether_method_result.smali")
	
	
	fh = open("./test/executeOpsTogether_method_result.smali", "r")
	result = fh.readlines()
	fh.close()
	
	fh = open("./test/executeOpsTogether_method_soln.smali", "r")
	soln = fh.readlines()
	fh.close()
	
	assert(result == soln)
	
	print("passed!")
	
	
def returning_uninitialized_object():
	# returning uninitialized object
	# Uninitialized Reference: android.support.v4.app.FragmentManagerImpl$AnimationOrAnimator Allocation PC: 462
	# there was an invoke-direct method dropped during instrumentation
	print("\nRunning returning uninitialized object")
	print("\ttest/loadAnimation.smali")
	
	# this method was truncated just after the instructions relevant
	# to the bug being fixed
	scd = SmaliClassDef.SmaliClassDef("./test/loadAnimation_method.smali")
	
	check_arg_method = scd.methods[0]
	#print("before growing: ", check_arg_method.get_register_meta_data())
	scd.grow_locals(Instrumenter.MAX_DESIRED_NUM_REGISTERS)
	#print("after growing: ", check_arg_method.get_register_meta_data())
	scd.instrument()
	scd.write_to_file("./test/loadAnimation_method_result.smali")
	
	
	fh = open("./test/loadAnimation_method_result.smali", "r")
	result = fh.readlines()
	fh.close()
	
	fh = open("./test/loadAnimation_method_soln.smali", "r")
	soln = fh.readlines()
	fh.close()
	
	assert(result == soln)
	
	print("passed!")
	
	
	
def goto_tracking_bug():
	# [0xC3] copy1 v16<-v0 type=Reference: android.view.View cat=1 
	# something wrong with tracking the type of v0 through some
	# complex goto instructions
	
	print("\nRunning goto_tracking_bug")
	print("\ttest/findReferenceChild_method_minimal.smali")
	
	scd = SmaliClassDef.SmaliClassDef("./test/findReferenceChild_method_minimal.smali")
	scd.grow_locals(Instrumenter.MAX_DESIRED_NUM_REGISTERS)
	scd.instrument()
	#scd.methods[0].cfg.show()
	scd.write_to_file("./test/findReferenceChild_method_minimal_result.smali")
	
	
	fh = open("./test/findReferenceChild_method_minimal_result.smali", "r")
	result = fh.readlines()
	fh.close()
	
	fh = open("./test/findReferenceChild_method_minimal_soln.smali", "r")
	soln = fh.readlines()
	fh.close()
	
	assert(result == soln)
	
	print("passed!")
	
	
def strange_insert_lines_at_beginning_placement():
	print("\nRunning strange insert line placement test")
	print("\ttest/constructor_truncated.smali")
	
	# for some reason the IFT instructions added by stigma for method start
	# were displacing the .locals line?  very strange
	
	scd = SmaliClassDef.SmaliClassDef("./test/constructor_truncated.smali")
	scd.grow_locals(Instrumenter.MAX_DESIRED_NUM_REGISTERS)
	scd.instrument()
	
	assert(scd.methods[0].get_locals_directive_num() == 20)
	
	
	print("passed!")
	
	

def internal_tests():
	
	print("--Running Internal Tests--")
	
	src_code_with_internal_tests = ["lib.StigmaStringParsingLib", 
		"lib.SmaliMethodDef", "lib.SmaliTypes", "lib.SafeRegisterCollection",
		"lib.SmaliRegister", "lib.SmaliAssemblyInstructions",
		"Instrumenter", "TaintStorageHandler", "lib.SmaliCodeIterator", "lib.SmaliClassDef", 
		"lib.SmaliCodeBase"]
	
	
	for src in src_code_with_internal_tests:
		cmd = ["python3", "-m", src]
		finished_proc = subprocess.run(cmd)
		finished_proc.check_returncode()
		print()
	

	print("\n--Finished All Internal Tests!--\n")

def main():
	
	
	internal_tests()
	if len(sys.argv) == 2:
		if sys.argv[1] == "--internal-only":
			exit(0)
	
	
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
	
	
	
	# custom tests
	# TODO: Fix the tests below that are commented out
	# register_shuffling_test()
	
	# leaks smali tests
	stigma_leaks_crash_SupportActivity()
	#double_move_result_bug()
	#wide_register_index_out_of_range_bug()
	#get_class_from_non_reference_register_bug()
	#reversed_move_parameters_test()
	#wide_register_index_out_of_range_bug_2()
	#wide_register_has_type_long_string()
	#on_nested_scrolling_parent_helper()
	#register_listeners()
	#on_start_intent_sender_from_fragment()
	#tried_to_get_class_from_non_reference_register_v0()
	#returning_uninitialized_object()
	#goto_tracking_bug()
	
	# star trek tests
	#strange_insert_lines_at_beginning_placement()
	
	
	print("\n\n")
	print("+-------------------+")
	print("| ALL TESTS PASSED! |")
	print("+-------------------+")
	
	
if __name__=="__main__":
	main()
