
import SmaliAssemblyInstructions as smali


# second line is intentionally a blank line
TESTS = ["    nop\n",
		 "    \n",
		 "    move v6, p5\n",
		 "    move16 v6, v24\n", # doesn't exist?
		 "    move/from16 v5, v26\n",
		 "    move-wide v14, v7\n",
		 "    move-wide/from16 v15, p3\n",
		 "    move-wide16 v12, p2\n", # doesn't exist?
		 "    move-object v4, v3\n",
		 "    move-object/from16 v5, v31\n",
		 "    move-object16 v2, v3\n", # doesn't exist?
		 "    move-result v0\n", 
		 "    move-result-wide v3\n",
		 "    move-result-object v3\n",
		 "    move-exception v0\n",
		 "    return-void\n",
		 "    return-wide v0\n",
		 "    return-object v1\n",
		 "    const v3, 0xffff\n",
		 "    const/4 v1, -0x1\n",
		 "    const/16 v0, 0xb\n",
		 "    const/high16 v3, 0x3f800000\n", # 0xf800... is float value 1.0
		 "    const-wide/16 v18, 0x1\n",
		 "    const-wide/32 v6, 0x2932e00\n",
		 "    const-wide v4, 0x100000000L\n",
		 "    const-wide/high16 v2, -0x8000000000000000L\n",
		 "    const-string v1, \"Parcelables cannot be written to an OutputStream\"\n",
		 "    const-string-jumbo\n", # doesnt' occur in leaks app
		 "    const-class v4, Landroidx/versionedparcelable/VersionedParcel;\n"

]

def main():

	for cur_line in TESTS:
		print(cur_line)
		obj = smali.parse_line(cur_line)
		#print(type(obj), ": " + str(obj))
		assert(str(obj) == cur_line)



	print("ALL TESTS PASSED!")

main()