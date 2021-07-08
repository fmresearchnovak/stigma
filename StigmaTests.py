
from stigma import SmaliMethodDef, SmaliClassDef, StigmaStringParsingLib, ControlFlowGraph
import sys, re

method_text = '''.method public leakPasswd(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 181
    const v0, 0x7f070050

    invoke-virtual {p0, v0}, Ledu/fandm/enovak/leaks/Main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 182
    .local v0, "et":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "pass":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Leaked Password: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ledu/fandm/enovak/leaks/Main;->prependToLog(Ljava/lang/String;)V

    .line 186
    new-instance v2, Ledu/fandm/enovak/leaks/Main$ServerLeakTask;

    invoke-direct {v2, p0}, Ledu/fandm/enovak/leaks/Main$ServerLeakTask;-><init>(Ledu/fandm/enovak/leaks/Main;)V

    .line 189
    .local v2, "slt":Ledu/fandm/enovak/leaks/Main$ServerLeakTask;
    const-string v3, "password"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    .line 190
    const-string v3, "a"

    .line 191
    .local v3, "coded":Ljava/lang/String;
    new-array v5, v5, [Ljava/lang/String;

    aput-object v3, v5, v4

    invoke-virtual {v2, v5}, Ledu/fandm/enovak/leaks/Main$ServerLeakTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 192
    .end local v3    # "coded":Ljava/lang/String;
    goto :goto_0

    .line 193
    :cond_0
    new-array v3, v5, [Ljava/lang/String;

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ledu/fandm/enovak/leaks/Main$ServerLeakTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 198
    :goto_0
    return-void
.end method'''

method_text_static = '''.method public static leakPasswd()V
    .locals 1

    .line 181
    const v0, 0x7f070050

    return-void
.end method'''

def type_safety_checker_test():
    global method_text

    method_list = method_text.split("\n")
    smd =  SmaliMethodDef.SmaliMethodDef(method_list, None)
    
    # for i in range(len(method_list)):
    #     print(method_list[i], smd.tsc.method_type_list[i])
        

def type_saftey_checker_test2():
        
        
    method_text = '''.method public leakPasswd(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 181
    const v0, 0x7f070050
    .end method'''


    method_list = method_text.split("\n")
    smd =  SmaliMethodDef.SmaliMethodDef(method_list, None)
    
    print("list of hashmaps length: " + str(len(smd.tsc.method_type_list)))
    print("method code length: " + str(len(smd.tsc.text)))
    
        
def type_saftey_checker_test3():
    
    method_text = '''.method public static A00()I
    .locals 6

    const-string/jumbo v2, "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    const v0, 0x8b31

    .line 244576
    invoke-static {v0, v2}, LX/0wH;->A01(ILjava/lang/String;)I

    move-result v2

    const/4 v5, 0x0

    if-nez v2, :cond_0

    return v5

    :cond_0
    const v0, 0x8b30

    .line 244577
    invoke-static {v0, v1}, LX/0wH;->A01(ILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    return v5

    .line 244578
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v4

    const-string v0, "glCreateProgram"

    .line 244579
    invoke-static {v0}, LX/0wH;->A04(Ljava/lang/String;)V

    const-string v3, "Grafika"

    if-nez v4, :cond_2

    const-string v0, "Could not create program"

    .line 244580
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244581
    :cond_2
    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string v0, "glAttachShader"

    .line 244582
    invoke-static {v0}, LX/0wH;->A04(Ljava/lang/String;)V

    .line 244583
    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 244584
    invoke-static {v0}, LX/0wH;->A04(Ljava/lang/String;)V

    .line 244585
    invoke-static {v4}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 v2, 0x1

    new-array v1, v2, [I

    const v0, 0x8b82

    .line 244586
    invoke-static {v4, v0, v1, v5}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 244587
    aget v0, v1, v5

    if-eq v0, v2, :cond_3

    const-string v0, "Could not link program: "

    .line 244588
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244589
    invoke-static {v4}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244590
    invoke-static {v4}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    return v5

    :cond_3
    return v4
    .end method'''

    # calling method_text.split("\n") isn't safe due to the strange 
    # const-string/jumbo at the beginning of the method (which contains a \n)
    #method_list = method_text.split("\n")
    #smd =  SmaliMethodDef.SmaliMethodDef(method_list, None)
    #print(smd.tsc)
    
    scd = SmaliClassDef.SmaliClassDef("/home/ed/research/ift/stigma/APK/0wH.smali")
    
    
def type_safety_checker_control_flow_test():
    
    print("\nRunning Test on resolve method from UriUtil Class and testing for if statement")
    method_list = ['.method public static resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;', '    .locals 10', '    .param p0    # Ljava/lang/String;', '        .annotation build Landroidx/annotation/Nullable;', '        .end annotation', '    .end param', '    .param p1    # Ljava/lang/String;', '        .annotation build Landroidx/annotation/Nullable;', '        .end annotation', '    .end param', '', '    #p0:object, p1:object', '', '    .line 86', '    new-instance v0, Ljava/lang/StringBuilder; #v0:object, ', '', '    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V  ', '', '    const-string v1, "" #v1:object', '', '    if-nez p0, :cond_0', '', '    move-object p0, v1  #p0:object', '', '    :cond_0', '    if-nez p1, :cond_1', '', '    move-object p1, v1  #p1:object', '', '    .line 92', '    :cond_1             #p0:object, p1:object, v1:object', '    invoke-static {p1}, Lcom/google/android/exoplayer2/util/UriUtil;->getUriIndices(Ljava/lang/String;)[I', '', '    move-result-object v1  #p0:object, p1:object, v1:[I', '', '    const/4 v2, 0x0      #p0:object, p1:object, v1:[I, v2:32-bit', '', '    .line 93', '    aget v3, v1, v2      #p0:object, p1:object, v1:[I, v2:32-bit, v3:I', '', '    const/4 v4, -0x1', '', '    const/4 v5, 0x2', '', '    const/4 v6, 0x1      #p0:object, p1:object, v1:[I, v2:32-bit, v3:I, v4:32-bit, v5:32-bit, v6:32-bit', '', '    if-eq v3, v4, :cond_2', '', '    .line 95', '    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;', '', '    .line 96', '    aget p0, v1, v6        #p0:I, p1:object, v1:[I, v2:32-bit, v3:I, v4:32-bit, v5:32-bit, v6:32-bit', '', '    aget p1, v1, v5        #p0:I, p1:I, v1:[I, v2:32-bit, v3:I, v4:32-bit, v5:32-bit, v6:32-bit', '', '    invoke-static {v0, p0, p1}, Lcom/google/android/exoplayer2/util/UriUtil;->removeDotSegments(Ljava/lang/StringBuilder;II)Ljava/lang/String;', '', '    .line 97', '    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;', '', '    move-result-object p0    #p0:object, p1:I, v1:[I, v2:32-bit, v3:I, v4:32-bit, v5:32-bit, v6:32-bit', '', '    return-object p0    ', '', '    .line 100', '    :cond_2         #p0:object, p1:object, v1:[I, v2:32-bit, v3:I, v4:32-bit, v5:32-bit, v6:32-bit', '    invoke-static {p0}, Lcom/google/android/exoplayer2/util/UriUtil;->getUriIndices(Ljava/lang/String;)[I', '', '    move-result-object v3   #p0:object, p1:object, v1:[I, v2:32-bit, v3:[I, v4:32-bit, v5:32-bit, v6:32-bit', '', '    const/4 v7, 0x3  #p0:object, p1:object, v1:[I, v2:32-bit, v3:[I, v4:32-bit, v5:32-bit, v6:32-bit, v7:32-bit', '', '    .line 101', '    aget v8, v1, v7    #p0:object, p1:object, v1:[I, v2:32-bit, v3:[I, v4:32-bit, v5:32-bit, v6:32-bit, v7:32-bit, v8:I', '', '    if-nez v8, :cond_3', '', '    .line 104', '    aget v1, v3, v7', '', '    invoke-virtual {v0, p0, v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;', '', '    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;', '', '    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;', '', '    move-result-object p0', '', '    return-object p0', '', '    .line 107', '    :cond_3', '    aget v7, v1, v5', '', '    if-nez v7, :cond_4', '', '    .line 110', '    aget v1, v3, v5', '', '    invoke-virtual {v0, p0, v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;', '', '    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;', '', '    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;', '', '    move-result-object p0', '', '    return-object p0', '', '    .line 113', '    :cond_4', '    aget v7, v1, v6', '', '    if-eqz v7, :cond_5', '', '    .line 115', '    aget v3, v3, v2', '', '    add-int/2addr v3, v6', '', '    .line 116', '    invoke-virtual {v0, p0, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;', '', '    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;', '', '    .line 117', '    aget p0, v1, v6', '', '    add-int/2addr p0, v3', '', '    aget p1, v1, v5', '', '    add-int/2addr v3, p1', '', '    invoke-static {v0, p0, v3}, Lcom/google/android/exoplayer2/util/UriUtil;->removeDotSegments(Ljava/lang/StringBuilder;II)Ljava/lang/String;', '', '    move-result-object p0', '', '    return-object p0', '', '    .line 120', '    :cond_5', '    aget v7, v1, v6', '', '    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C', '', '    move-result v7', '', '    const/16 v8, 0x2f', '', '    if-ne v7, v8, :cond_6', '', '    .line 123', '    aget v4, v3, v6', '', '    invoke-virtual {v0, p0, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;', '', '    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;', '', '    .line 124', '    aget p0, v3, v6', '', '    aget p1, v3, v6', '', '    aget v1, v1, v5', '', '    add-int/2addr p1, v1', '', '    invoke-static {v0, p0, p1}, Lcom/google/android/exoplayer2/util/UriUtil;->removeDotSegments(Ljava/lang/StringBuilder;II)Ljava/lang/String;', '', '    move-result-object p0', '', '    return-object p0', '', '    .line 129', '    :cond_6', '    aget v7, v3, v2', '', '    add-int/2addr v7, v5', '', '    aget v9, v3, v6', '', '    if-ge v7, v9, :cond_7', '', '    aget v7, v3, v6', '', '    aget v9, v3, v5', '', '    if-ne v7, v9, :cond_7', '', '    .line 133', '    aget v4, v3, v6', '', '    invoke-virtual {v0, p0, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;', '', '    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;', '', '    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;', '', '    .line 134', '    aget p0, v3, v6', '', '    aget p1, v3, v6', '', '    aget v1, v1, v5', '', '    add-int/2addr p1, v1', '', '    add-int/2addr p1, v6', '', '    invoke-static {v0, p0, p1}, Lcom/google/android/exoplayer2/util/UriUtil;->removeDotSegments(Ljava/lang/StringBuilder;II)Ljava/lang/String;', '', '    move-result-object p0', '', '    return-object p0', '', '    .line 140', '    :cond_7', '    aget v7, v3, v5', '', '    sub-int/2addr v7, v6', '', '    invoke-virtual {p0, v8, v7}, Ljava/lang/String;->lastIndexOf(II)I', '', '    move-result v7', '', '    if-ne v7, v4, :cond_8', '', '    .line 141', '    aget v4, v3, v6', '', '    goto :goto_0', '', '    :cond_8', '    add-int/lit8 v4, v7, 0x1', '', '    .line 142', '    :goto_0', '    invoke-virtual {v0, p0, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;', '', '    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;', '', '    .line 143', '    aget p0, v3, v6', '', '    aget p1, v1, v5', '', '    add-int/2addr v4, p1', '', '    invoke-static {v0, p0, v4}, Lcom/google/android/exoplayer2/util/UriUtil;->removeDotSegments(Ljava/lang/StringBuilder;II)Ljava/lang/String;', '', '    move-result-object p0', '', '    return-object p0', '    .end method']
    print("total lines in method: ", len(method_list))
    smd =  SmaliMethodDef.SmaliMethodDef(method_list, None)   
    print("size of the type map: ", len(smd.tsc.method_type_list)) 
    print("Looks like it didnt crash!, congragulations!!!")

#this edge case contains :cond shows up before the if statement shows up
def type_safety_checker_control_flow_test_edge_case_1():

    method_list = ['.method public static A01(Lcom/facebook/ads/redexgen/X/IL;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I\n', '    .locals 15\n', '\n', '    move/from16 v3, p3\n', '\n', '    .line 33864\n', '    const/4 v8, 0x0\n', '\n', '    .line 33865\n', '    .end local v8\n', '    .local p2, "endOfPixelCodeString":Z\n', '    .local v8, "column":I\n', '    :cond_0\n', '    const/4 v6, 0x0\n', '\n', '    .line 33866\n', '    .local v3, "runLength":I\n', '    const/4 v7, 0x0\n', '\n', '    .line 33867\n', '    .local v2, "clutIndex":I\n', '    const/4 v4, 0x2\n', '\n', '    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I\n', '\n', '    move-result v0\n', '\n', '    .line 33868\n', '    .local v3, "peek":I\n', '    if-eqz v0, :cond_3\n', '\n', '    .line 33869\n', '    const/4 v6, 0x1\n', '\n', '    .line 33870\n', '    .end local p2    # "endOfPixelCodeString":Z\n', '    .end local v3    # "peek":I\n', '    .end local v2    # "clutIndex":I\n', '    .local v6, "runLength":I\n', '    .local v7, "clutIndex":I\n', '    .local v4, "endOfPixelCodeString":Z\n', '    :goto_0\n', '    if-eqz v6, :cond_2\n', '\n', '    move-object/from16 v1, p5\n', '\n', '    if-eqz v1, :cond_2\n', '\n', '    .line 33871\n', '    if-eqz p2, :cond_1\n', '\n', '    aget-byte v0, p2, v0\n', '\n', '    :cond_1\n', '    aget v0, p1, v0\n', '\n', '    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V\n', '\n', '    .line 33872\n', '    int-to-float v10, v3\n', '\n', '    move/from16 v2, p4\n', '\n', '    int-to-float v11, v2\n', '\n', '    add-int v0, v3, v6\n', '\n', '    int-to-float v12, v0\n', '\n', '    add-int/lit8 v0, v2, 0x1\n', '\n', '    int-to-float v13, v0\n', '\n', '    move-object v14, v1\n', '\n', '    move-object/from16 v9, p6\n', '\n', '    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V\n', '\n', '    .line 33873\n', '    :cond_2\n', '    add-int/2addr v3, v6\n', '\n', '    .line 33874\n', '    .end local v3\n', '    .end local v6    # "runLength":I\n', '    .end local v7    # "clutIndex":I\n', '    if-eqz v8, :cond_0\n', '\n', '    .line 33875\n', '    return v3\n', '\n', '    .line 33876\n', '    :cond_3\n', '    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z\n', '\n', '    move-result v5\n', '\n', '    sget-object v2, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;\n', '\n', '    const/4 v0, 0x6\n', '\n', '    aget-object v1, v2, v0\n', '\n', '    const/4 v0, 0x3\n', '\n', '    aget-object v2, v2, v0\n', '\n', '    const/4 v0, 0x3\n', '\n', '    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C\n', '\n', '    move-result v1\n', '\n', '    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C\n', '\n', '    move-result v0\n', '\n', '    if-eq v1, v0, :cond_b\n', '\n', '    sget-object v2, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;\n', '\n', '    const-string v1, "NWJ2j8DR8"\n', '\n', '    const/4 v0, 0x1\n', '\n', '    aput-object v1, v2, v0\n', '\n', '    const-string v1, "tuFwEgjWv5QsbV2rgY7O01mW2P3xd0b"\n', '\n', '    const/4 v0, 0x5\n', '\n', '    aput-object v1, v2, v0\n', '\n', '    const/4 v2, 0x3\n', '\n', '    if-eqz v5, :cond_4\n', '\n', '    .line 33877\n', '    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I\n', '\n', '    move-result v0\n', '\n', '    add-int/lit8 v6, v0, 0x3\n', '\n', '    .line 33878\n', '    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I\n', '\n', '    move-result v0\n', '\n', '    goto :goto_0\n', '\n', '    .line 33879\n', '    :cond_4\n', '    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z\n', '\n', '    move-result v0\n', '\n', '    if-eqz v0, :cond_5\n', '\n', '    .line 33880\n', '    const/4 v6, 0x1\n', '\n', '    move v0, v7\n', '\n', '    goto :goto_0\n', '\n', '    .line 33881\n', '    :cond_5\n', '    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I\n', '\n', '    move-result v1\n', '\n', '    if-eqz v1, :cond_a\n', '\n', '    const/4 v0, 0x1\n', '\n', '    if-eq v1, v0, :cond_9\n', '\n', '    if-eq v1, v4, :cond_8\n', '\n', '    if-eq v1, v2, :cond_6\n', '\n', '    move v0, v7\n', '\n', '    goto :goto_0\n', '\n', '    .line 33882\n', '    :cond_6\n', '    const/16 v0, 0x8\n', '\n', '    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I\n', '\n', '    move-result v5\n', '\n', '    sget-object v2, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;\n', '\n', '    const/4 v0, 0x1\n', '\n', '    aget-object v1, v2, v0\n', '\n', '    const/4 v0, 0x5\n', '\n', '    aget-object v0, v2, v0\n', '\n', '    invoke-virtual {v1}, Ljava/lang/String;->length()I\n', '\n', '    move-result v1\n', '\n', '    invoke-virtual {v0}, Ljava/lang/String;->length()I\n', '\n', '    move-result v0\n', '\n', '    if-eq v1, v0, :cond_7\n', '\n', '    sget-object v2, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;\n', '\n', '    const-string v1, "aK1SAaExMssx18Id1roywrSfe1Et1yGa"\n', '\n', '    const/4 v0, 0x7\n', '\n', '    aput-object v1, v2, v0\n', '\n', '    add-int/lit8 v6, v5, 0x1d\n', '\n', '    .line 33883\n', '    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I\n', '\n', '    move-result v0\n', '\n', '    goto/16 :goto_0\n', '\n', '    :cond_7\n', '    sget-object v2, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;\n', '\n', '    const-string v1, "EWrEb5ztJ"\n', '\n', '    const/4 v0, 0x1\n', '\n', '    aput-object v1, v2, v0\n', '\n', '    const-string v1, "osfW1bR5YMm4TxT0YESgxQn9EHcmZGy"\n', '\n', '    const/4 v0, 0x5\n', '\n', '    aput-object v1, v2, v0\n', '\n', '    add-int/lit8 v6, v5, 0xc\n', '\n', '    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I\n', '\n', '    move-result v0\n', '\n', '    goto/16 :goto_0\n', '\n', '    .line 33884\n', '    :cond_8\n', '    const/4 v0, 0x4\n', '\n', '    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I\n', '\n', '    move-result v0\n', '\n', '    add-int/lit8 v6, v0, 0xc\n', '\n', '    .line 33885\n', '    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I\n', '\n', '    move-result v0\n', '\n', '    .line 33886\n', '    goto/16 :goto_0\n', '\n', '    .line 33887\n', '    :cond_9\n', '    const/4 v6, 0x2\n', '\n', '    .line 33888\n', '    move v0, v7\n', '\n', '    goto/16 :goto_0\n', '\n', '    .line 33889\n', '    :cond_a\n', '    const/4 v8, 0x1\n', '\n', '    .line 33890\n', '    move v0, v7\n', '\n', '    goto/16 :goto_0\n', '\n', '    :cond_b\n', '    new-instance v0, Ljava/lang/RuntimeException;\n', '\n', '    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V\n', '\n', '    throw v0\n', '.end method\n']
    print("\nRunning tests on control flow edge case 1")
    print("total lines in method: ", len(method_list))
    smd =  SmaliMethodDef.SmaliMethodDef(method_list, None)
    print("size of the type map: ", len(smd.tsc.method_type_list))
    print("Looks like it didnt crash!, congragulations!!!")

#this edge case assigns value to a new register inside of an if statement and tries to access it outside of the if statement
def type_safety_checker_control_flow_test_edge_case_2():
    
    method_list = ['.method public static zza(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Landroid/view/View;)Lorg/json/JSONObject;\n', '    .locals 18\n', '    .param p1    # Ljava/util/Map;\n', '        .annotation build Landroidx/annotation/Nullable;\n', '        .end annotation\n', '    .end param\n', '    .param p2    # Ljava/util/Map;\n', '        .annotation build Landroidx/annotation/Nullable;\n', '        .end annotation\n', '    .end param\n', '    .param p3    # Landroid/view/View;\n', '        .annotation build Landroidx/annotation/Nullable;\n', '        .end annotation\n', '    .end param\n', '    .annotation system Ldalvik/annotation/Signature;\n', '        value = {\n', '            "(",\n', '            "Landroid/content/Context;",\n', '            "Ljava/util/Map<",\n', '            "Ljava/lang/String;",\n', '            "Ljava/lang/ref/WeakReference<",\n', '            "Landroid/view/View;",\n', '            ">;>;",\n', '            "Ljava/util/Map<",\n', '            "Ljava/lang/String;",\n', '            "Ljava/lang/ref/WeakReference<",\n', '            "Landroid/view/View;",\n', '            ">;>;",\n', '            "Landroid/view/View;",\n', '            ")",\n', '            "Lorg/json/JSONObject;"\n', '        }\n', '    .end annotation\n', '\n', '    move-object/from16 v0, p0\n', '\n', '    move-object/from16 v1, p2\n', '\n', '    const-string v2, "ad_view"\n', '\n', '    const-string v3, "relative_to"\n', '\n', '    const-string v4, "y"\n', '\n', '    const-string v5, "x"\n', '\n', '    const-string v6, "height"\n', '\n', '    const-string v7, "width"\n', '\n', '    .line 99\n', '    new-instance v8, Lorg/json/JSONObject;\n', '\n', '    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V\n', '\n', '    if-eqz p1, :cond_5\n', '\n', '    if-nez p3, :cond_0\n', '\n', '    goto/16 :goto_5\n', '\n', '    .line 102\n', '    :cond_0\n', '    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/ads/internal/util/zzbq;->zzu(Landroid/view/View;)[I\n', '\n', '    move-result-object v9\n', '\n', '    .line 103\n', '    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;\n', '\n', '    move-result-object v10\n', '\n', '    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;\n', '\n', '    move-result-object v10\n', '\n', '    :cond_1\n', '    :goto_0\n', '    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z\n', '\n', '    move-result v11\n', '\n', '    if-eqz v11, :cond_5\n', '\n', '    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;\n', '\n', '    move-result-object v11\n', '\n', '    check-cast v11, Ljava/util/Map$Entry;\n', '\n', '    .line 104\n', '    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;\n', '\n', '    move-result-object v12\n', '\n', '    check-cast v12, Ljava/lang/ref/WeakReference;\n', '\n', '    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;\n', '\n', '    move-result-object v12\n', '\n', '    check-cast v12, Landroid/view/View;\n', '\n', '    if-eqz v12, :cond_1\n', '\n', '    .line 106\n', '    invoke-static {v12}, Lcom/google/android/gms/ads/internal/util/zzbq;->zzu(Landroid/view/View;)[I\n', '\n', '    move-result-object v13\n', '\n', '    .line 107\n', '    new-instance v14, Lorg/json/JSONObject;\n', '\n', '    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V\n', '\n', '    .line 108\n', '    new-instance v15, Lorg/json/JSONObject;\n', '\n', '    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V\n', '\n', '    move-object/from16 p1, v10\n', '\n', '    .line 110\n', '    :try_start_0\n', '    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I\n', '\n', '    move-result v10\n', '\n', '    .line 111\n', '    invoke-static {v0, v10}, Lcom/google/android/gms/ads/internal/util/zzbq;->zzb(Landroid/content/Context;I)I\n', '\n', '    move-result v10\n', '\n', '    invoke-virtual {v15, v7, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;\n', '\n', '    .line 113\n', '    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I\n', '\n', '    move-result v10\n', '\n', '    .line 114\n', '    invoke-static {v0, v10}, Lcom/google/android/gms/ads/internal/util/zzbq;->zzb(Landroid/content/Context;I)I\n', '\n', '    move-result v10\n', '\n', '    invoke-virtual {v15, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;\n', '\n', '    const/4 v10, 0x0\n', '\n', '    .line 115\n', '    aget v16, v13, v10\n', '\n', '    aget v17, v9, v10\n', '\n', '    sub-int v10, v16, v17\n', '\n', '    invoke-static {v0, v10}, Lcom/google/android/gms/ads/internal/util/zzbq;->zzb(Landroid/content/Context;I)I\n', '\n', '    move-result v10\n', '\n', '    invoke-virtual {v15, v5, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;\n', '\n', '    const/4 v10, 0x1\n', '\n', '    .line 116\n', '    aget v16, v13, v10\n', '\n', '    aget v17, v9, v10\n', '\n', '    sub-int v10, v16, v17\n', '\n', '    invoke-static {v0, v10}, Lcom/google/android/gms/ads/internal/util/zzbq;->zzb(Landroid/content/Context;I)I\n', '\n', '    move-result v10\n', '\n', '    invoke-virtual {v15, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;\n', '\n', '    .line 117\n', '    invoke-virtual {v15, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;\n', '\n', '    const-string v10, "frame"\n', '\n', '    .line 118\n', '    invoke-virtual {v14, v10, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;\n', '\n', '    .line 119\n', '    new-instance v10, Landroid/graphics/Rect;\n', '\n', '    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V\n', '\n', '    .line 120\n', '    invoke-virtual {v12, v10}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z\n', '\n', '    move-result v15\n', '\n', '    if-eqz v15, :cond_2\n', '\n', '    .line 121\n', '    invoke-static {v0, v10}, Lcom/google/android/gms/ads/internal/util/zzbq;->zza(Landroid/content/Context;Landroid/graphics/Rect;)Lorg/json/JSONObject;\n', '\n', '    move-result-object v10\n', '\n', '    const/4 v15, 0x1\n', '\n', '    goto :goto_1\n', '\n', '    .line 122\n', '    :cond_2\n', '    new-instance v10, Lorg/json/JSONObject;\n', '\n', '    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V\n', '\n', '    const/4 v15, 0x0\n', '\n', '    .line 123\n', '    invoke-virtual {v10, v7, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;\n', '\n', '    .line 124\n', '    invoke-virtual {v10, v6, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;\n', '\n', '    .line 125\n', '    aget v16, v13, v15\n', '\n', '    aget v17, v9, v15\n', '\n', '    sub-int v15, v16, v17\n', '\n', '    invoke-static {v0, v15}, Lcom/google/android/gms/ads/internal/util/zzbq;->zzb(Landroid/content/Context;I)I\n', '\n', '    move-result v15\n', '\n', '    invoke-virtual {v10, v5, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;\n', '\n', '    const/4 v15, 0x1\n', '\n', '    .line 126\n', '    aget v13, v13, v15\n', '\n', '    aget v16, v9, v15\n', '\n', '    sub-int v13, v13, v16\n', '\n', '    invoke-static {v0, v13}, Lcom/google/android/gms/ads/internal/util/zzbq;->zzb(Landroid/content/Context;I)I\n', '\n', '    move-result v13\n', '\n', '    invoke-virtual {v10, v4, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;\n', '\n', '    .line 127\n', '    invoke-virtual {v10, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;\n', '\n', '    :goto_1\n', '    const-string v13, "visible_bounds"\n', '\n', '    .line 128\n', '    invoke-virtual {v14, v13, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;\n', '\n', '    .line 129\n', '    instance-of v10, v12, Landroid/widget/TextView;\n', '\n', '    if-eqz v10, :cond_3\n', '\n', '    .line 130\n', '    move-object v10, v12\n', '\n', '    check-cast v10, Landroid/widget/TextView;\n', '\n', '    const-string v13, "text_color"\n', '\n', '    .line 131\n', '    invoke-virtual {v10}, Landroid/widget/TextView;->getCurrentTextColor()I\n', '\n', '    move-result v15\n', '\n', '    invoke-virtual {v14, v13, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;\n', '\n', '    const-string v13, "font_size"\n', '\n', '    .line 132\n', '    invoke-virtual {v10}, Landroid/widget/TextView;->getTextSize()F\n', '\n', '    move-result v15\n', '    :try_end_0\n', '    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0\n', '\n', '    move-object/from16 v16, v2\n', '\n', '    move-object/from16 v17, v3\n', '\n', '    float-to-double v2, v15\n', '\n', '    :try_start_1\n', '    invoke-virtual {v14, v13, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;\n', '\n', '    const-string v2, "text"\n', '\n', '    .line 133\n', '    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;\n', '\n', '    move-result-object v3\n', '\n', '    invoke-virtual {v14, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;\n', '\n', '    goto :goto_2\n', '\n', '    :cond_3\n', '    move-object/from16 v16, v2\n', '\n', '    move-object/from16 v17, v3\n', '\n', '    :goto_2\n', '    const-string v2, "is_clickable"\n', '\n', '    if-eqz v1, :cond_4\n', '\n', '    .line 135\n', '    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;\n', '\n', '    move-result-object v3\n', '\n', '    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z\n', '\n', '    move-result v3\n', '\n', '    if-eqz v3, :cond_4\n', '\n', '    .line 136\n', '    invoke-virtual {v12}, Landroid/view/View;->isClickable()Z\n', '\n', '    move-result v3\n', '\n', '    if-eqz v3, :cond_4\n', '\n', '    const/4 v10, 0x1\n', '\n', '    goto :goto_3\n', '\n', '    :cond_4\n', '    const/4 v10, 0x0\n', '\n', '    .line 137\n', '    :goto_3\n', '    invoke-virtual {v14, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;\n', '\n', '    .line 138\n', '    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;\n', '\n', '    move-result-object v2\n', '\n', '    check-cast v2, Ljava/lang/String;\n', '\n', '    invoke-virtual {v8, v2, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;\n', '    :try_end_1\n', '    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1\n', '\n', '    goto :goto_4\n', '\n', '    :catch_0\n', '    move-object/from16 v16, v2\n', '\n', '    move-object/from16 v17, v3\n', '\n', '    :catch_1\n', '    const-string v2, "Unable to get asset views information"\n', '\n', '    .line 141\n', '    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzaza;->zzfa(Ljava/lang/String;)V\n', '\n', '    :goto_4\n', '    move-object/from16 v10, p1\n', '\n', '    move-object/from16 v2, v16\n', '\n', '    move-object/from16 v3, v17\n', '\n', '    goto/16 :goto_0\n', '\n', '    :cond_5\n', '    :goto_5\n', '    return-object v8\n', '.end method\n']
    print("\nRunning tests on control flow edge case 2")
    print("total lines in method: ", len(method_list))
    smd =  SmaliMethodDef.SmaliMethodDef(method_list, None)
    print("size of the type map: ", len(smd.tsc.method_type_list))
    print("Looks like it didnt crash!, congragulations!!!")


def type_safety_checker_control_flow_test_edge_case_3():
    
    method_list = ['.method private registerListeners()V\n', '    .locals 9\n', '\n', '    .line 272\n', '    const-string v0, "network"\n', '\n', '    sget-object v1, Ledu/fandm/enovak/leaks/Main;->TAG:Ljava/lang/String;\n', '\n', '    const-string v2, "Registering listeners"\n', '\n', '    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I\n', '\n', '    .line 276\n', '    const/4 v1, 0x0\n', '\n', '    .line 277\n', '    .local v1, "success":Z\n', '    :try_start_0\n', '    iget-object v2, p0, Ledu/fandm/enovak/leaks/Main;->locationManager:Landroid/location/LocationManager;\n', '\n', '    const-string v3, "passive"\n', '\n', '    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z\n', '\n', '    move-result v2\n', '\n', '    if-eqz v2, :cond_0\n', '\n', '    .line 278\n', '    iget-object v3, p0, Ledu/fandm/enovak/leaks/Main;->locationManager:Landroid/location/LocationManager;\n', '\n', '    const-string v4, "passive"\n', '\n', '    const-wide/16 v5, 0x0\n', '\n', '    const/4 v7, 0x0\n', '\n', '    iget-object v8, p0, Ledu/fandm/enovak/leaks/Main;->locationListener:Landroid/location/LocationListener;\n', '\n', '    invoke-virtual/range {v3 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V\n', '\n', '    .line 279\n', '    const/4 v1, 0x1\n', '\n', '    .line 280\n', '    sget-object v2, Ledu/fandm/enovak/leaks/Main;->TAG:Ljava/lang/String;\n', '\n', '    const-string v3, "Passive Provider Listening Enabled"\n', '\n', '    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I\n', '\n', '    .line 283\n', '    :cond_0\n', '    iget-object v2, p0, Ledu/fandm/enovak/leaks/Main;->locationManager:Landroid/location/LocationManager;\n', '\n', '    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z\n', '\n', '    move-result v2\n', '\n', '    if-eqz v2, :cond_1\n', '\n', '    .line 284\n', '    iget-object v3, p0, Ledu/fandm/enovak/leaks/Main;->locationManager:Landroid/location/LocationManager;\n', '\n', '    const-string v4, "network"\n', '\n', '    const-wide/16 v5, 0x0\n', '\n', '    const/4 v7, 0x0\n', '\n', '    iget-object v8, p0, Ledu/fandm/enovak/leaks/Main;->locationListener:Landroid/location/LocationListener;\n', '\n', '    invoke-virtual/range {v3 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V\n', '\n', '    .line 285\n', '    const/4 v1, 0x1\n', '\n', '    .line 286\n', '    sget-object v2, Ledu/fandm/enovak/leaks/Main;->TAG:Ljava/lang/String;\n', '\n', '    const-string v3, "Network Provider Listening Enabled"\n', '\n', '    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I\n', '\n', '    .line 289\n', '    :cond_1\n', '    iget-object v2, p0, Ledu/fandm/enovak/leaks/Main;->locationManager:Landroid/location/LocationManager;\n', '\n', '    const-string v3, "gps"\n', '\n', '    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z\n', '\n', '    move-result v2\n', '\n', '    if-eqz v2, :cond_2\n', '\n', '    .line 290\n', '    iget-object v3, p0, Ledu/fandm/enovak/leaks/Main;->locationManager:Landroid/location/LocationManager;\n', '\n', '    const-string v4, "gps"\n', '\n', '    const-wide/16 v5, 0x0\n', '\n', '    const/4 v7, 0x0\n', '\n', '    iget-object v8, p0, Ledu/fandm/enovak/leaks/Main;->locationListener:Landroid/location/LocationListener;\n', '\n', '    invoke-virtual/range {v3 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V\n', '\n', '    .line 291\n', '    const/4 v1, 0x1\n', '\n', '    .line 292\n', '    sget-object v2, Ledu/fandm/enovak/leaks/Main;->TAG:Ljava/lang/String;\n', '\n', '    const-string v3, "GPS Provider Listening Enabled"\n', '\n', '    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I\n', '\n', '    .line 295\n', '    :cond_2\n', '    if-eqz v1, :cond_4\n', '\n', '    .line 296\n', '    sget-object v2, Ledu/fandm/enovak/leaks/Main;->TAG:Ljava/lang/String;\n', '\n', '    const-string v3, "Leaking turned on!!"\n', '\n', '    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I\n', '\n', '    .line 299\n', '    iget-object v2, p0, Ledu/fandm/enovak/leaks/Main;->locationManager:Landroid/location/LocationManager;\n', '\n', '    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;\n', '\n', '    move-result-object v0\n', '\n', '    .line 300\n', '    .local v0, "lastKnownLocation":Landroid/location/Location;\n', '    if-eqz v0, :cond_3\n', '\n', '    .line 301\n', '    invoke-virtual {p0, v0}, Ledu/fandm/enovak/leaks/Main;->leakLoc(Landroid/location/Location;)V\n', '\n', '    .line 304\n', '    .end local v0    # "lastKnownLocation":Landroid/location/Location;\n', '    :cond_3\n', '    nop\n', '\n', '    .line 314\n', '    .end local v1    # "success":Z\n', '    goto :goto_0\n', '\n', '    .line 305\n', '    .restart local v1    # "success":Z\n', '    :cond_4\n', '    const-string v0, "No providers available!"\n', '\n', '    const/4 v2, 0x0\n', '\n', '    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;\n', '\n', '    move-result-object v0\n', '\n', '    invoke-virtual {v0}, Landroid/widget/Toast;->show()V\n', '\n', '    .line 306\n', '    sget-object v0, Ledu/fandm/enovak/leaks/Main;->TAG:Ljava/lang/String;\n', '\n', '    const-string v2, "Could not get a provider"\n', '\n', '    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I\n', '\n', '    .line 307\n', '    invoke-virtual {p0}, Ledu/fandm/enovak/leaks/Main;->stopLocationUpdates()V\n', '    :try_end_0\n', '    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0\n', '\n', '    .line 308\n', '    return-void\n', '\n', '    .line 311\n', '    .end local v1    # "success":Z\n', '    :catch_0\n', '    move-exception v0\n', '\n', '    .line 312\n', '    .local v0, "se":Ljava/lang/SecurityException;\n', '    const/4 v1, 0x1\n', '\n', '    const-string v2, "Insufficient permissions to get location data"\n', '\n', '    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;\n', '\n', '    move-result-object v1\n', '\n', '    invoke-virtual {v1}, Landroid/widget/Toast;->show()V\n', '\n', '    .line 313\n', '    invoke-virtual {p0}, Ledu/fandm/enovak/leaks/Main;->stopLocationUpdates()V\n', '\n', '    .line 315\n', '    .end local v0    # "se":Ljava/lang/SecurityException;\n', '    :goto_0\n', '    return-void\n', '.end method\n']
    print("\nRunning tests on control flow edge case 3")
    print("total lines in method: ", len(method_list))    
    smd =  SmaliMethodDef.SmaliMethodDef(method_list, None)
    print("size of the type map: ", len(smd.tsc.method_type_list))
    print("Looks like it didnt crash!, congragulations!!!")


def type_safety_checker_switch_statements():
    method_list = ['.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z\n', '    .locals 2\n', '    .param p1, "item"    # Landroid/view/MenuItem;\n', '\n', '    .line 120\n', '    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I\n', '\n', '    move-result v0\n', '\n', '    packed-switch v0, :pswitch_data_0\n', '\n', '    goto :goto_0\n', '\n', '    .line 128\n', '    :pswitch_0\n', '    new-instance v0, Landroid/content/Intent;\n', '\n', '    const-class v1, Ledu/fandm/enovak/leaks/SimpleLeak;\n', '\n', '    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V\n', '\n', '    .line 129\n', '    .local v0, "i":Landroid/content/Intent;\n', '    invoke-virtual {p0, v0}, Ledu/fandm/enovak/leaks/Main;->startActivity(Landroid/content/Intent;)V\n', '\n', '    goto :goto_0\n', '\n', '    .line 122\n', '    .end local v0    # "i":Landroid/content/Intent;\n', '    :pswitch_1\n', '    new-instance v0, Landroid/content/Intent;\n', '\n', '    const-class v1, Ledu/fandm/enovak/leaks/SettingsAct;\n', '\n', '    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V\n', '\n', '    .line 123\n', '    .restart local v0    # "i":Landroid/content/Intent;\n', '    invoke-virtual {p0, v0}, Ledu/fandm/enovak/leaks/Main;->startActivity(Landroid/content/Intent;)V\n', '\n', '    .line 124\n', '    nop\n', '\n', '    .line 133\n', '    .end local v0    # "i":Landroid/content/Intent;\n', '    :goto_0\n', '    const/4 v0, 0x1\n', '\n', '    return v0\n', '\n', '    :pswitch_data_0\n', '    .packed-switch 0x7f070056\n', '        :pswitch_1\n', '        :pswitch_0\n', '    .end packed-switch\n', '.end method\n']
    for line in method_list:
        print(line)


def comparison_count_test1():
    global method_text

    method_list = method_text.split("\n")
    smd =  SmaliMethodDef.SmaliMethodDef(method_list, None)
    
    print("count: " + str(smd.get_num_comparison_instructions()))
    assert(smd.get_num_comparison_instructions() == 1)
        
        
def control_flow_graph_test_1():
    global method_text

    method_list = method_text.split("\n")

    cfg = ControlFlowGraph.ControlFlowGraph(method_list)

    print("cfg lines: " + str(cfg))
    cfg.show()

    

def main():
    # comparison_count_test1()
    
    control_flow_graph_test_1()
    # type_safety_checker_test()
    # type_saftey_checker_test2()
    # type_saftey_checker_test3()
    #type_safety_checker_control_flow_test()
    #type_safety_checker_control_flow_test_edge_case_1()
    #type_safety_checker_control_flow_test_edge_case_2()
    #type_safety_checker_control_flow_test_edge_case_3()
    # type_safety_checker_switch_statements()
    
if __name__=="__main__":
    main()
