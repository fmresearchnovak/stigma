#easy look_up
primitive_dict = {"boolean": "Z", "byte": "B", "short": "S", "char": "C", "int": "I", "long": "J",
                  "float": "F", "double": "D", "void": "V"}
def FQC_formatter(fqc):
    fqc = "L" + fqc.replace(".", "/")
    fqc = fqc.replace(":", ";")
    fqc = fqc.replace(",", ";")
    if (fqc[-1] != ';'):
        fqc += ";"
    return fqc

def param_formatter(param):
    param = param.split("[")
    #One object/primitive
    if len(param) == 1:
        if param[0] in primitive_dict:
            return primitive_dict[param[0]]
        else:
            return FQC_formatter(param[0])
    #Array of objects/primitives
    else:
        if param[0] in primitive_dict:
            res = primitive_dict[param[0]]
        else:
            res = FQC_formatter(param[0])
        #Add arrays
        for i in range(len(param) - 1):
            res = "[" + res
        return res

def return_type_formatter(return_type):
    if return_type in primitive_dict:
        return primitive_dict[return_type]
    else:
        return FQC_formatter(return_type)

def main():
    fh = open("SourcesAndSinks.txt", "r")
    fw = open("Sinks.txt", "w")
    lines = fh.readlines()
    fh.close()

    for line in lines:
        line = line.strip("\n")
        parts = line.split(" ")

        if parts[-1] == "_SINK_":
            #print(parts)
            class_name = parts[0][1:]  # remove initial < symbol
            result = FQC_formatter(class_name) + "->"
            function_parts = parts[2].split('(')
            function_name = function_parts[0]
            result += function_name + "("
            #print(function_name)
            params = function_parts[1].strip(')>').split(",")
            for param in params:
                result += param_formatter(param)
            result += ")" + return_type_formatter(parts[1]) + "\n"
            print(result)
            fw.write(result)
    fw.close()

main()