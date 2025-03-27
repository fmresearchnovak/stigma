
import Instrumenter
import SmaliAssemblyInstructions as smali


def my_handler(scd, smd):
	
	block = []

	# this thing would be waaaaaay more efficient if we could do this if statement check earlier
	# in the process (maybe at sign-up time?)
	if (scd in Instrumenter.get_launcher_classes() and smd.signature.name == "onCreate"):
		block.append(smali.CONST_STRING("v0", "STIGMA")
		block.append(smali.BLANK_LINE())
		block.append(smali.CONST_STRING("v1", "Prof. Novak")
		block.append(smali.BLANK_LINE())
		block.append(lock.append(smali.INVOKE_STATIC(["v0", "v1"], "Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I"))
		block.append(smali.BLANK_LINE())
		
	return block


def main():
	
	Instrumenter.sign_up_launcher_activity_oncreate_start(my_handler, 2)
	
	
if __name__ == "__main__":
	main()
