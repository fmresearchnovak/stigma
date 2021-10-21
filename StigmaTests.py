
import SmaliMethodDef
import SmaliClassDef
import StigmaStringParsingLib
import ControlFlowGraph
import TypeSafetyChecker
import TaintTrackingInstrumentationPlugin

import sys, re






        
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
    
    #print("\nRunning Test on resolve method from UriUtil Class and testing for if statement")
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

    method_list = ['.method public static A01(Lcom/facebook/ads/redexgen/X/IL;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I\n', '    .locals 15\n', '\n', '    move/from16 v3, p3\n', '\n', '    .line 33864\n', '    const/4 v8, 0x0\n', '\n', '    .line 33865\n', '    .end local v8\n', '    .local p2, "endOfPixelCodeString":Z\n', '    .local v8, "column":I\n', '    :cond_0\n', '    const/4 v6, 0x0\n', '\n', '    .line 33866\n', '    .local v3, "runLength":I\n', '    const/4 v7, 0x0\n', '\n', '    .line 33867\n', '    .local v2, "clutIndex":I\n', '    const/4 v4, 0x2\n', '\n', '    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I\n', '\n', '    move-result v0\n', '\n', '    .line 33868\n', '    .local v3, "peek":I\n', '    if-eqz v0, :cond_3\n', '\n', '    .line 33869\n', '    const/4 v6, 0x1\n', '\n', '    .line 33870\n', '    .end local p2    # "endOfPixelCodeString":Z\n', '    .end local v3    # "peek":I\n', '    .end local v2    # "clutIndex":I\n', '    .local v6, "runLength":I\n', '    .local v7, "clutIndex":I\n', '    .local v4, "endOfPixelCodeString":Z\n', '    :goto_0\n', '    if-eqz v6, :cond_2\n', '\n', '    move-object/from16 v1, p5\n', '\n', '    if-eqz v1, :cond_2\n', '\n', '    .line 33871\n', '    if-eqz p2, :cond_1\n', '\n', '    aget-byte v0, p2, v0\n', '\n', '    :cond_1\n', '    aget v0, p1, v0\n', '\n', '    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V\n', '\n', '    .line 33872\n', '    int-to-float v10, v3\n', '\n', '    move/from16 v2, p4\n', '\n', '    int-to-float v11, v2\n', '\n', '    add-int v0, v3, v6\n', '\n', '    int-to-float v12, v0\n', '\n', '    add-int/lit8 v0, v2, 0x1\n', '\n', '    int-to-float v13, v0\n', '\n', '    move-object v14, v1\n', '\n', '    move-object/from16 v9, p6\n', '\n', '    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V\n', '\n', '    .line 33873\n', '    :cond_2\n', '    add-int/2addr v3, v6\n', '\n', '    .line 33874\n', '    .end local v3\n', '    .end local v6    # "runLength":I\n', '    .end local v7    # "clutIndex":I\n', '    if-eqz v8, :cond_0\n', '\n', '    .line 33875\n', '    return v3\n', '\n', '    .line 33876\n', '    :cond_3\n', '    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z\n', '\n', '    move-result v5\n', '\n', '    sget-object v2, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;\n', '\n', '    const/4 v0, 0x6\n', '\n', '    aget-object v1, v2, v0\n', '\n', '    const/4 v0, 0x3\n', '\n', '    aget-object v2, v2, v0\n', '\n', '    const/4 v0, 0x3\n', '\n', '    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C\n', '\n', '    move-result v1\n', '\n', '    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C\n', '\n', '    move-result v0\n', '\n', '    if-eq v1, v0, :cond_b\n', '\n', '    sget-object v2, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;\n', '\n', '    const-string v1, "NWJ2j8DR8"\n', '\n', '    const/4 v0, 0x1\n', '\n', '    aput-object v1, v2, v0\n', '\n', '    const-string v1, "tuFwEgjWv5QsbV2rgY7O01mW2P3xd0b"\n', '\n', '    const/4 v0, 0x5\n', '\n', '    aput-object v1, v2, v0\n', '\n', '    const/4 v2, 0x3\n', '\n', '    if-eqz v5, :cond_4\n', '\n', '    .line 33877\n', '    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I\n', '\n', '    move-result v0\n', '\n', '    add-int/lit8 v6, v0, 0x3\n', '\n', '    .line 33878\n', '    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I\n', '\n', '    move-result v0\n', '\n', '    goto :goto_0\n', '\n', '    .line 33879\n', '    :cond_4\n', '    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z\n', '\n', '    move-result v0\n', '\n', '    if-eqz v0, :cond_5\n', '\n', '    .line 33880\n', '    const/4 v6, 0x1\n', '\n', '    move v0, v7\n', '\n', '    goto :goto_0\n', '\n', '    .line 33881\n', '    :cond_5\n', '    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I\n', '\n', '    move-result v1\n', '\n', '    if-eqz v1, :cond_a\n', '\n', '    const/4 v0, 0x1\n', '\n', '    if-eq v1, v0, :cond_9\n', '\n', '    if-eq v1, v4, :cond_8\n', '\n', '    if-eq v1, v2, :cond_6\n', '\n', '    move v0, v7\n', '\n', '    goto :goto_0\n', '\n', '    .line 33882\n', '    :cond_6\n', '    const/16 v0, 0x8\n', '\n', '    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I\n', '\n', '    move-result v5\n', '\n', '    sget-object v2, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;\n', '\n', '    const/4 v0, 0x1\n', '\n', '    aget-object v1, v2, v0\n', '\n', '    const/4 v0, 0x5\n', '\n', '    aget-object v0, v2, v0\n', '\n', '    invoke-virtual {v1}, Ljava/lang/String;->length()I\n', '\n', '    move-result v1\n', '\n', '    invoke-virtual {v0}, Ljava/lang/String;->length()I\n', '\n', '    move-result v0\n', '\n', '    if-eq v1, v0, :cond_7\n', '\n', '    sget-object v2, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;\n', '\n', '    const-string v1, "aK1SAaExMssx18Id1roywrSfe1Et1yGa"\n', '\n', '    const/4 v0, 0x7\n', '\n', '    aput-object v1, v2, v0\n', '\n', '    add-int/lit8 v6, v5, 0x1d\n', '\n', '    .line 33883\n', '    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I\n', '\n', '    move-result v0\n', '\n', '    goto/16 :goto_0\n', '\n', '    :cond_7\n', '    sget-object v2, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;\n', '\n', '    const-string v1, "EWrEb5ztJ"\n', '\n', '    const/4 v0, 0x1\n', '\n', '    aput-object v1, v2, v0\n', '\n', '    const-string v1, "osfW1bR5YMm4TxT0YESgxQn9EHcmZGy"\n', '\n', '    const/4 v0, 0x5\n', '\n', '    aput-object v1, v2, v0\n', '\n', '    add-int/lit8 v6, v5, 0xc\n', '\n', '    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I\n', '\n', '    move-result v0\n', '\n', '    goto/16 :goto_0\n', '\n', '    .line 33884\n', '    :cond_8\n', '    const/4 v0, 0x4\n', '\n', '    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I\n', '\n', '    move-result v0\n', '\n', '    add-int/lit8 v6, v0, 0xc\n', '\n', '    .line 33885\n', '    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I\n', '\n', '    move-result v0\n', '\n', '    .line 33886\n', '    goto/16 :goto_0\n', '\n', '    .line 33887\n', '    :cond_9\n', '    const/4 v6, 0x2\n', '\n', '    .line 33888\n', '    move v0, v7\n', '\n', '    goto/16 :goto_0\n', '\n', '    .line 33889\n', '    :cond_a\n', '    const/4 v8, 0x1\n', '\n', '    .line 33890\n', '    move v0, v7\n', '\n', '    goto/16 :goto_0\n', '\n', '    :cond_b\n', '    new-instance v0, Ljava/lang/RuntimeException;\n', '\n', '    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V\n', '\n', '    throw v0\n', '.end method\n']
    print("\nRunning tests on control flow edge case 1")
    smd =  SmaliMethodDef.SmaliMethodDef(method_list, None)
    print("Looks like it didnt crash!, congragulations!!!")

#this edge case assigns value to a new register inside of an if statement and tries to access it outside of the if statement
def type_safety_checker_control_flow_test_edge_case_2():
    
    method_list = ['.method public static zza(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Landroid/view/View;)Lorg/json/JSONObject;\n', '    .locals 18\n', '    .param p1    # Ljava/util/Map;\n', '        .annotation build Landroidx/annotation/Nullable;\n', '        .end annotation\n', '    .end param\n', '    .param p2    # Ljava/util/Map;\n', '        .annotation build Landroidx/annotation/Nullable;\n', '        .end annotation\n', '    .end param\n', '    .param p3    # Landroid/view/View;\n', '        .annotation build Landroidx/annotation/Nullable;\n', '        .end annotation\n', '    .end param\n', '    .annotation system Ldalvik/annotation/Signature;\n', '        value = {\n', '            "(",\n', '            "Landroid/content/Context;",\n', '            "Ljava/util/Map<",\n', '            "Ljava/lang/String;",\n', '            "Ljava/lang/ref/WeakReference<",\n', '            "Landroid/view/View;",\n', '            ">;>;",\n', '            "Ljava/util/Map<",\n', '            "Ljava/lang/String;",\n', '            "Ljava/lang/ref/WeakReference<",\n', '            "Landroid/view/View;",\n', '            ">;>;",\n', '            "Landroid/view/View;",\n', '            ")",\n', '            "Lorg/json/JSONObject;"\n', '        }\n', '    .end annotation\n', '\n', '    move-object/from16 v0, p0\n', '\n', '    move-object/from16 v1, p2\n', '\n', '    const-string v2, "ad_view"\n', '\n', '    const-string v3, "relative_to"\n', '\n', '    const-string v4, "y"\n', '\n', '    const-string v5, "x"\n', '\n', '    const-string v6, "height"\n', '\n', '    const-string v7, "width"\n', '\n', '    .line 99\n', '    new-instance v8, Lorg/json/JSONObject;\n', '\n', '    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V\n', '\n', '    if-eqz p1, :cond_5\n', '\n', '    if-nez p3, :cond_0\n', '\n', '    goto/16 :goto_5\n', '\n', '    .line 102\n', '    :cond_0\n', '    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/ads/internal/util/zzbq;->zzu(Landroid/view/View;)[I\n', '\n', '    move-result-object v9\n', '\n', '    .line 103\n', '    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;\n', '\n', '    move-result-object v10\n', '\n', '    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;\n', '\n', '    move-result-object v10\n', '\n', '    :cond_1\n', '    :goto_0\n', '    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z\n', '\n', '    move-result v11\n', '\n', '    if-eqz v11, :cond_5\n', '\n', '    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;\n', '\n', '    move-result-object v11\n', '\n', '    check-cast v11, Ljava/util/Map$Entry;\n', '\n', '    .line 104\n', '    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;\n', '\n', '    move-result-object v12\n', '\n', '    check-cast v12, Ljava/lang/ref/WeakReference;\n', '\n', '    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;\n', '\n', '    move-result-object v12\n', '\n', '    check-cast v12, Landroid/view/View;\n', '\n', '    if-eqz v12, :cond_1\n', '\n', '    .line 106\n', '    invoke-static {v12}, Lcom/google/android/gms/ads/internal/util/zzbq;->zzu(Landroid/view/View;)[I\n', '\n', '    move-result-object v13\n', '\n', '    .line 107\n', '    new-instance v14, Lorg/json/JSONObject;\n', '\n', '    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V\n', '\n', '    .line 108\n', '    new-instance v15, Lorg/json/JSONObject;\n', '\n', '    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V\n', '\n', '    move-object/from16 p1, v10\n', '\n', '    .line 110\n', '    :try_start_0\n', '    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I\n', '\n', '    move-result v10\n', '\n', '    .line 111\n', '    invoke-static {v0, v10}, Lcom/google/android/gms/ads/internal/util/zzbq;->zzb(Landroid/content/Context;I)I\n', '\n', '    move-result v10\n', '\n', '    invoke-virtual {v15, v7, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;\n', '\n', '    .line 113\n', '    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I\n', '\n', '    move-result v10\n', '\n', '    .line 114\n', '    invoke-static {v0, v10}, Lcom/google/android/gms/ads/internal/util/zzbq;->zzb(Landroid/content/Context;I)I\n', '\n', '    move-result v10\n', '\n', '    invoke-virtual {v15, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;\n', '\n', '    const/4 v10, 0x0\n', '\n', '    .line 115\n', '    aget v16, v13, v10\n', '\n', '    aget v17, v9, v10\n', '\n', '    sub-int v10, v16, v17\n', '\n', '    invoke-static {v0, v10}, Lcom/google/android/gms/ads/internal/util/zzbq;->zzb(Landroid/content/Context;I)I\n', '\n', '    move-result v10\n', '\n', '    invoke-virtual {v15, v5, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;\n', '\n', '    const/4 v10, 0x1\n', '\n', '    .line 116\n', '    aget v16, v13, v10\n', '\n', '    aget v17, v9, v10\n', '\n', '    sub-int v10, v16, v17\n', '\n', '    invoke-static {v0, v10}, Lcom/google/android/gms/ads/internal/util/zzbq;->zzb(Landroid/content/Context;I)I\n', '\n', '    move-result v10\n', '\n', '    invoke-virtual {v15, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;\n', '\n', '    .line 117\n', '    invoke-virtual {v15, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;\n', '\n', '    const-string v10, "frame"\n', '\n', '    .line 118\n', '    invoke-virtual {v14, v10, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;\n', '\n', '    .line 119\n', '    new-instance v10, Landroid/graphics/Rect;\n', '\n', '    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V\n', '\n', '    .line 120\n', '    invoke-virtual {v12, v10}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z\n', '\n', '    move-result v15\n', '\n', '    if-eqz v15, :cond_2\n', '\n', '    .line 121\n', '    invoke-static {v0, v10}, Lcom/google/android/gms/ads/internal/util/zzbq;->zza(Landroid/content/Context;Landroid/graphics/Rect;)Lorg/json/JSONObject;\n', '\n', '    move-result-object v10\n', '\n', '    const/4 v15, 0x1\n', '\n', '    goto :goto_1\n', '\n', '    .line 122\n', '    :cond_2\n', '    new-instance v10, Lorg/json/JSONObject;\n', '\n', '    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V\n', '\n', '    const/4 v15, 0x0\n', '\n', '    .line 123\n', '    invoke-virtual {v10, v7, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;\n', '\n', '    .line 124\n', '    invoke-virtual {v10, v6, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;\n', '\n', '    .line 125\n', '    aget v16, v13, v15\n', '\n', '    aget v17, v9, v15\n', '\n', '    sub-int v15, v16, v17\n', '\n', '    invoke-static {v0, v15}, Lcom/google/android/gms/ads/internal/util/zzbq;->zzb(Landroid/content/Context;I)I\n', '\n', '    move-result v15\n', '\n', '    invoke-virtual {v10, v5, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;\n', '\n', '    const/4 v15, 0x1\n', '\n', '    .line 126\n', '    aget v13, v13, v15\n', '\n', '    aget v16, v9, v15\n', '\n', '    sub-int v13, v13, v16\n', '\n', '    invoke-static {v0, v13}, Lcom/google/android/gms/ads/internal/util/zzbq;->zzb(Landroid/content/Context;I)I\n', '\n', '    move-result v13\n', '\n', '    invoke-virtual {v10, v4, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;\n', '\n', '    .line 127\n', '    invoke-virtual {v10, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;\n', '\n', '    :goto_1\n', '    const-string v13, "visible_bounds"\n', '\n', '    .line 128\n', '    invoke-virtual {v14, v13, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;\n', '\n', '    .line 129\n', '    instance-of v10, v12, Landroid/widget/TextView;\n', '\n', '    if-eqz v10, :cond_3\n', '\n', '    .line 130\n', '    move-object v10, v12\n', '\n', '    check-cast v10, Landroid/widget/TextView;\n', '\n', '    const-string v13, "text_color"\n', '\n', '    .line 131\n', '    invoke-virtual {v10}, Landroid/widget/TextView;->getCurrentTextColor()I\n', '\n', '    move-result v15\n', '\n', '    invoke-virtual {v14, v13, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;\n', '\n', '    const-string v13, "font_size"\n', '\n', '    .line 132\n', '    invoke-virtual {v10}, Landroid/widget/TextView;->getTextSize()F\n', '\n', '    move-result v15\n', '    :try_end_0\n', '    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0\n', '\n', '    move-object/from16 v16, v2\n', '\n', '    move-object/from16 v17, v3\n', '\n', '    float-to-double v2, v15\n', '\n', '    :try_start_1\n', '    invoke-virtual {v14, v13, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;\n', '\n', '    const-string v2, "text"\n', '\n', '    .line 133\n', '    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;\n', '\n', '    move-result-object v3\n', '\n', '    invoke-virtual {v14, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;\n', '\n', '    goto :goto_2\n', '\n', '    :cond_3\n', '    move-object/from16 v16, v2\n', '\n', '    move-object/from16 v17, v3\n', '\n', '    :goto_2\n', '    const-string v2, "is_clickable"\n', '\n', '    if-eqz v1, :cond_4\n', '\n', '    .line 135\n', '    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;\n', '\n', '    move-result-object v3\n', '\n', '    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z\n', '\n', '    move-result v3\n', '\n', '    if-eqz v3, :cond_4\n', '\n', '    .line 136\n', '    invoke-virtual {v12}, Landroid/view/View;->isClickable()Z\n', '\n', '    move-result v3\n', '\n', '    if-eqz v3, :cond_4\n', '\n', '    const/4 v10, 0x1\n', '\n', '    goto :goto_3\n', '\n', '    :cond_4\n', '    const/4 v10, 0x0\n', '\n', '    .line 137\n', '    :goto_3\n', '    invoke-virtual {v14, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;\n', '\n', '    .line 138\n', '    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;\n', '\n', '    move-result-object v2\n', '\n', '    check-cast v2, Ljava/lang/String;\n', '\n', '    invoke-virtual {v8, v2, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;\n', '    :try_end_1\n', '    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1\n', '\n', '    goto :goto_4\n', '\n', '    :catch_0\n', '    move-object/from16 v16, v2\n', '\n', '    move-object/from16 v17, v3\n', '\n', '    :catch_1\n', '    const-string v2, "Unable to get asset views information"\n', '\n', '    .line 141\n', '    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzaza;->zzfa(Ljava/lang/String;)V\n', '\n', '    :goto_4\n', '    move-object/from16 v10, p1\n', '\n', '    move-object/from16 v2, v16\n', '\n', '    move-object/from16 v3, v17\n', '\n', '    goto/16 :goto_0\n', '\n', '    :cond_5\n', '    :goto_5\n', '    return-object v8\n', '.end method\n']
    print("\nRunning tests on control flow edge case 2")
    smd =  SmaliMethodDef.SmaliMethodDef(method_list, None)
    print("Looks like it didnt crash!, congragulations!!!")


def type_safety_checker_control_flow_test_edge_case_3():
    
    method_list = ['.method private registerListeners()V\n', '    .locals 9\n', '\n', '    .line 272\n', '    const-string v0, "network"\n', '\n', '    sget-object v1, Ledu/fandm/enovak/leaks/Main;->TAG:Ljava/lang/String;\n', '\n', '    const-string v2, "Registering listeners"\n', '\n', '    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I\n', '\n', '    .line 276\n', '    const/4 v1, 0x0\n', '\n', '    .line 277\n', '    .local v1, "success":Z\n', '    :try_start_0\n', '    iget-object v2, p0, Ledu/fandm/enovak/leaks/Main;->locationManager:Landroid/location/LocationManager;\n', '\n', '    const-string v3, "passive"\n', '\n', '    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z\n', '\n', '    move-result v2\n', '\n', '    if-eqz v2, :cond_0\n', '\n', '    .line 278\n', '    iget-object v3, p0, Ledu/fandm/enovak/leaks/Main;->locationManager:Landroid/location/LocationManager;\n', '\n', '    const-string v4, "passive"\n', '\n', '    const-wide/16 v5, 0x0\n', '\n', '    const/4 v7, 0x0\n', '\n', '    iget-object v8, p0, Ledu/fandm/enovak/leaks/Main;->locationListener:Landroid/location/LocationListener;\n', '\n', '    invoke-virtual/range {v3 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V\n', '\n', '    .line 279\n', '    const/4 v1, 0x1\n', '\n', '    .line 280\n', '    sget-object v2, Ledu/fandm/enovak/leaks/Main;->TAG:Ljava/lang/String;\n', '\n', '    const-string v3, "Passive Provider Listening Enabled"\n', '\n', '    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I\n', '\n', '    .line 283\n', '    :cond_0\n', '    iget-object v2, p0, Ledu/fandm/enovak/leaks/Main;->locationManager:Landroid/location/LocationManager;\n', '\n', '    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z\n', '\n', '    move-result v2\n', '\n', '    if-eqz v2, :cond_1\n', '\n', '    .line 284\n', '    iget-object v3, p0, Ledu/fandm/enovak/leaks/Main;->locationManager:Landroid/location/LocationManager;\n', '\n', '    const-string v4, "network"\n', '\n', '    const-wide/16 v5, 0x0\n', '\n', '    const/4 v7, 0x0\n', '\n', '    iget-object v8, p0, Ledu/fandm/enovak/leaks/Main;->locationListener:Landroid/location/LocationListener;\n', '\n', '    invoke-virtual/range {v3 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V\n', '\n', '    .line 285\n', '    const/4 v1, 0x1\n', '\n', '    .line 286\n', '    sget-object v2, Ledu/fandm/enovak/leaks/Main;->TAG:Ljava/lang/String;\n', '\n', '    const-string v3, "Network Provider Listening Enabled"\n', '\n', '    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I\n', '\n', '    .line 289\n', '    :cond_1\n', '    iget-object v2, p0, Ledu/fandm/enovak/leaks/Main;->locationManager:Landroid/location/LocationManager;\n', '\n', '    const-string v3, "gps"\n', '\n', '    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z\n', '\n', '    move-result v2\n', '\n', '    if-eqz v2, :cond_2\n', '\n', '    .line 290\n', '    iget-object v3, p0, Ledu/fandm/enovak/leaks/Main;->locationManager:Landroid/location/LocationManager;\n', '\n', '    const-string v4, "gps"\n', '\n', '    const-wide/16 v5, 0x0\n', '\n', '    const/4 v7, 0x0\n', '\n', '    iget-object v8, p0, Ledu/fandm/enovak/leaks/Main;->locationListener:Landroid/location/LocationListener;\n', '\n', '    invoke-virtual/range {v3 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V\n', '\n', '    .line 291\n', '    const/4 v1, 0x1\n', '\n', '    .line 292\n', '    sget-object v2, Ledu/fandm/enovak/leaks/Main;->TAG:Ljava/lang/String;\n', '\n', '    const-string v3, "GPS Provider Listening Enabled"\n', '\n', '    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I\n', '\n', '    .line 295\n', '    :cond_2\n', '    if-eqz v1, :cond_4\n', '\n', '    .line 296\n', '    sget-object v2, Ledu/fandm/enovak/leaks/Main;->TAG:Ljava/lang/String;\n', '\n', '    const-string v3, "Leaking turned on!!"\n', '\n', '    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I\n', '\n', '    .line 299\n', '    iget-object v2, p0, Ledu/fandm/enovak/leaks/Main;->locationManager:Landroid/location/LocationManager;\n', '\n', '    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;\n', '\n', '    move-result-object v0\n', '\n', '    .line 300\n', '    .local v0, "lastKnownLocation":Landroid/location/Location;\n', '    if-eqz v0, :cond_3\n', '\n', '    .line 301\n', '    invoke-virtual {p0, v0}, Ledu/fandm/enovak/leaks/Main;->leakLoc(Landroid/location/Location;)V\n', '\n', '    .line 304\n', '    .end local v0    # "lastKnownLocation":Landroid/location/Location;\n', '    :cond_3\n', '    nop\n', '\n', '    .line 314\n', '    .end local v1    # "success":Z\n', '    goto :goto_0\n', '\n', '    .line 305\n', '    .restart local v1    # "success":Z\n', '    :cond_4\n', '    const-string v0, "No providers available!"\n', '\n', '    const/4 v2, 0x0\n', '\n', '    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;\n', '\n', '    move-result-object v0\n', '\n', '    invoke-virtual {v0}, Landroid/widget/Toast;->show()V\n', '\n', '    .line 306\n', '    sget-object v0, Ledu/fandm/enovak/leaks/Main;->TAG:Ljava/lang/String;\n', '\n', '    const-string v2, "Could not get a provider"\n', '\n', '    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I\n', '\n', '    .line 307\n', '    invoke-virtual {p0}, Ledu/fandm/enovak/leaks/Main;->stopLocationUpdates()V\n', '    :try_end_0\n', '    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0\n', '\n', '    .line 308\n', '    return-void\n', '\n', '    .line 311\n', '    .end local v1    # "success":Z\n', '    :catch_0\n', '    move-exception v0\n', '\n', '    .line 312\n', '    .local v0, "se":Ljava/lang/SecurityException;\n', '    const/4 v1, 0x1\n', '\n', '    const-string v2, "Insufficient permissions to get location data"\n', '\n', '    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;\n', '\n', '    move-result-object v1\n', '\n', '    invoke-virtual {v1}, Landroid/widget/Toast;->show()V\n', '\n', '    .line 313\n', '    invoke-virtual {p0}, Ledu/fandm/enovak/leaks/Main;->stopLocationUpdates()V\n', '\n', '    .line 315\n', '    .end local v0    # "se":Ljava/lang/SecurityException;\n', '    :goto_0\n', '    return-void\n', '.end method\n']
    print("\nRunning tests on control flow edge case 3")
    smd =  SmaliMethodDef.SmaliMethodDef(method_list, None)
    print("Looks like it didnt crash!, congragulations!!!")


def type_safety_checker_small_constructor_test():
    fh = open("./test/small_constructor_method.smali", "r")
    method_list = fh.readlines()
    smd = SmaliMethodDef.SmaliMethodDef(method_list, None)
    #print(smd.get_num_registers())
    assert(smd.get_num_registers() == 1)


def type_safety_checker_empty_method_test():
    fh  = open("./test/empty_method.smali", "r")
    method_text = fh.readlines()
    smd = SmaliMethodDef.SmaliMethodDef(method_text, None)
    #print("regs: " + str(smd.get_num_registers()))
    assert(smd.get_num_registers() == 1) # "this"
    assert(smd.signature.is_abstract)


def type_safety_checker_action_bar_try_catch_leaks():
    method_test = '''.method public static setActionBarUpIndicator(Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
    .locals 6
    .param p0, "info"    # Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "contentDescRes"    # I

    .line 52
    new-instance v0, Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;

    invoke-direct {v0, p1}, Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;-><init>(Landroid/app/Activity;)V

    move-object p0, v0

    .line 54
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeAsUpIndicator:Ljava/lang/reflect/Method;

    const-string v1, "ActionBarDrawerToggleHC"

    if-eqz v0, :cond_0

    .line 56
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 57
    .local v0, "actionBar":Landroid/app/ActionBar;
    iget-object v2, p0, Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeAsUpIndicator:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v2, p0, Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeActionContentDescription:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    nop

    .end local v0    # "actionBar":Landroid/app/ActionBar;
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Couldn\'t set home-as-up indicator via JB-MR2 API"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->upIndicatorView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->upIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 65
    :cond_1
    const-string v0, "Couldn\'t set home-as-up indicator"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :goto_0
    return-object p0
    .end method'''
    method_list = method_test.split("\n")
    smd = SmaliMethodDef.SmaliMethodDef(method_list, None)

#catch label can be :catch_0 format or also :catchall
def type_safety_checker_leaks_test():
    
    method_text = open("./test/edge_case_method1.smali", "r").readlines()
    smd = SmaliMethodDef.SmaliMethodDef(method_text, None)
    print(smd.get_num_registers())
    assert(smd.get_num_registers() == 20)
    smd.instrument()
    
    input("continue?")


def type_safety_checker_aget_test():
    
    scd = SmaliClassDef.SmaliClassDef("./test/aget_test_class.smali")
    scd.instrument()


def type_safety_checker_aget_test3():
    method_text = '''.method private static getOrdering(I)I
    .locals 3
    .param p0, "categoryOrder"    # I

    .line 785
    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    .line 787
    .local v0, "index":I
    if-ltz v0, :cond_0

    sget-object v1, Landroid/support/v7/view/menu/MenuBuilder;->sCategoryToOrder:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 791
    aget v1, v1, v0

    shl-int/lit8 v1, v1, 0x10

    const v2, 0xffff

    and-int/2addr v2, p0

    or-int/2addr v1, v2

    return v1

    .line 788
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "order does not contain a valid category."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    .end method'''
    
    method_list = method_text.split("\n")
    print("Building SMD")
    smd = SmaliMethodDef.SmaliMethodDef(method_list, None)
    print("Instrumenting")
    smd.instrument()


def type_safety_checker_aget2_test():
    method_text = '''.method private static diffPartial(Landroid/support/v7/util/DiffUtil$Callback;IIII[I[II)Landroid/support/v7/util/DiffUtil$Snake;
    .locals 18
    .param p0, "cb"    # Landroid/support/v7/util/DiffUtil$Callback;
    .param p1, "startOld"    # I
    .param p2, "endOld"    # I
    .param p3, "startNew"    # I
    .param p4, "endNew"    # I
    .param p5, "forward"    # [I
    .param p6, "backward"    # [I
    .param p7, "kOffset"    # I

    .line 204"
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    sub-int v3, p2, p1

    .line 205
    .local v3, "oldSize":I
    sub-int v4, p4, p3

    .line 207
    .local v4, "newSize":I
    sub-int v5, p2, p1

    const/4 v6, 0x1

    if-lt v5, v6, :cond_f

    sub-int v5, p4, p3

    if-ge v5, v6, :cond_0

    move/from16 v17, v3

    goto/16 :goto_b

    .line 211
    :cond_0
    sub-int v5, v3, v4

    .line 212
    .local v5, "delta":I
    add-int v7, v3, v4

    add-int/2addr v7, v6

    div-int/lit8 v7, v7, 0x2

    .line 213
    .local v7, "dLimit":I
    sub-int v8, p7, v7

    sub-int/2addr v8, v6

    add-int v9, p7, v7

    add-int/2addr v9, v6

    const/4 v10, 0x0

    invoke-static {v1, v8, v9, v10}, Ljava/util/Arrays;->fill([IIII)V

    .line 214
    sub-int v8, p7, v7

    sub-int/2addr v8, v6

    add-int/2addr v8, v5

    add-int v9, p7, v7

    add-int/2addr v9, v6

    add-int/2addr v9, v5

    invoke-static {v2, v8, v9, v3}, Ljava/util/Arrays;->fill([IIII)V

    .line 215
    rem-int/lit8 v8, v5, 0x2

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    .line 216
    .local v8, "checkInFwd":Z
    :goto_0
    const/4 v9, 0x0

    .local v9, "d":I
    :goto_1
    if-gt v9, v7, :cond_e

    .line 217
    neg-int v11, v9

    .local v11, "k":I
    :goto_2
    if-gt v11, v9, :cond_7

    .line 222
    neg-int v12, v9

    if-eq v11, v12, :cond_3

    if-eq v11, v9, :cond_2

    add-int v12, p7, v11

    sub-int/2addr v12, v6

    aget v12, v1, v12

    add-int v13, p7, v11

    add-int/2addr v13, v6

    aget v13, v1, v13

    if-ge v12, v13, :cond_2

    goto :goto_3

    .line 226
    :cond_2
    add-int v12, p7, v11

    sub-int/2addr v12, v6

    aget v12, v1, v12

    add-int/2addr v12, v6

    .line 227
    .local v12, "x":I
    const/4 v13, 0x1

    .local v13, "removal":Z
    goto :goto_4

    .line 223
    .end local v12    # "x":I
    .end local v13    # "removal":Z
    :cond_3
    :goto_3
    add-int v12, p7, v11

    add-int/2addr v12, v6

    aget v12, v1, v12

    .line 224
    .restart local v12    # "x":I
    const/4 v13, 0x0

    .line 230
    .restart local v13    # "removal":Z
    :goto_4
    sub-int v14, v12, v11

    .line 232
    .local v14, "y":I
    :goto_5
    if-ge v12, v3, :cond_4

    if-ge v14, v4, :cond_4

    add-int v15, p1, v12

    add-int v10, p3, v14

    .line 233
    invoke-virtual {v0, v15, v10}, Landroid/support/v7/util/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 234
    add-int/lit8 v12, v12, 0x1

    .line 235
    add-int/lit8 v14, v14, 0x1

    const/4 v10, 0x0

    goto :goto_5

    .line 237
    :cond_4
    add-int v10, p7, v11

    aput v12, v1, v10

    .line 238
    if-eqz v8, :cond_6

    sub-int v10, v5, v9

    add-int/2addr v10, v6

    if-lt v11, v10, :cond_6

    add-int v10, v5, v9

    sub-int/2addr v10, v6

    if-gt v11, v10, :cond_6

    .line 239
    add-int v10, p7, v11

    aget v10, v1, v10

    add-int v15, p7, v11

    aget v15, v2, v15

    if-lt v10, v15, :cond_5

    .line 240
    new-instance v6, Landroid/support/v7/util/DiffUtil$Snake;

    invoke-direct {v6}, Landroid/support/v7/util/DiffUtil$Snake;-><init>()V

    .line 241
    .local v6, "outSnake":Landroid/support/v7/util/DiffUtil$Snake;
    add-int v10, p7, v11

    aget v10, v2, v10

    iput v10, v6, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    .line 242
    iget v10, v6, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    sub-int/2addr v10, v11

    iput v10, v6, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    .line 243
    add-int v10, p7, v11

    aget v10, v1, v10

    add-int v15, p7, v11

    aget v15, v2, v15

    sub-int/2addr v10, v15

    iput v10, v6, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    .line 244
    iput-boolean v13, v6, Landroid/support/v7/util/DiffUtil$Snake;->removal:Z

    .line 245
    const/4 v10, 0x0

    iput-boolean v10, v6, Landroid/support/v7/util/DiffUtil$Snake;->reverse:Z

    .line 246
    return-object v6

    .line 239
    .end local v6    # "outSnake":Landroid/support/v7/util/DiffUtil$Snake;
    :cond_5
    const/4 v10, 0x0

    goto :goto_6

    .line 238
    :cond_6
    const/4 v10, 0x0

    .line 217
    .end local v12    # "x":I
    .end local v13    # "removal":Z
    .end local v14    # "y":I
    :goto_6
    add-int/lit8 v11, v11, 0x2

    goto :goto_2

    .line 250
    .end local v11    # "k":I
    :cond_7
    neg-int v11, v9

    .restart local v11    # "k":I
    :goto_7
    if-gt v11, v9, :cond_d

    .line 252
    add-int v12, v11, v5

    .line 255
    .local v12, "backwardK":I
    add-int v13, v9, v5

    if-eq v12, v13, :cond_9

    neg-int v13, v9

    add-int/2addr v13, v5

    if-eq v12, v13, :cond_8

    add-int v13, p7, v12

    sub-int/2addr v13, v6

    aget v13, v2, v13

    add-int v14, p7, v12

    add-int/2addr v14, v6

    aget v14, v2, v14

    if-ge v13, v14, :cond_8

    goto :goto_8

    .line 260
    :cond_8
    add-int v13, p7, v12

    add-int/2addr v13, v6

    aget v13, v2, v13

    sub-int/2addr v13, v6

    .line 261
    .local v13, "x":I
    const/4 v14, 0x1

    .local v14, "removal":Z
    goto :goto_9

    .line 257
    .end local v13    # "x":I
    .end local v14    # "removal":Z
    :cond_9
    :goto_8
    add-int v13, p7, v12

    sub-int/2addr v13, v6

    aget v13, v2, v13

    .line 258
    .restart local v13    # "x":I
    const/4 v14, 0x0

    .line 265
    .restart local v14    # "removal":Z
    :goto_9
    sub-int v15, v13, v12

    .line 267
    .local v15, "y":I
    :goto_a
    if-lez v13, :cond_a

    if-lez v15, :cond_a

    add-int v16, p1, v13

    add-int/lit8 v10, v16, -0x1

    add-int v16, p3, v15

    move/from16 v17, v3

    .end local v3    # "oldSize":I
    .local v17, "oldSize":I
    add-int/lit8 v3, v16, -0x1

    .line 268
    invoke-virtual {v0, v10, v3}, Landroid/support/v7/util/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 269
    add-int/lit8 v13, v13, -0x1

    .line 270
    add-int/lit8 v15, v15, -0x1

    move/from16 v3, v17

    const/4 v10, 0x0

    goto :goto_a

    .line 267
    .end local v17    # "oldSize":I
    .restart local v3    # "oldSize":I
    :cond_a
    move/from16 v17, v3

    .line 272
    .end local v3    # "oldSize":I
    .restart local v17    # "oldSize":I
    :cond_b
    add-int v3, p7, v12

    aput v13, v2, v3

    .line 273
    if-nez v8, :cond_c

    add-int v3, v11, v5

    neg-int v10, v9

    if-lt v3, v10, :cond_c

    add-int v3, v11, v5

    if-gt v3, v9, :cond_c

    .line 274
    add-int v3, p7, v12

    aget v3, v1, v3

    add-int v10, p7, v12

    aget v10, v2, v10

    if-lt v3, v10, :cond_c

    .line 275
    new-instance v3, Landroid/support/v7/util/DiffUtil$Snake;

    invoke-direct {v3}, Landroid/support/v7/util/DiffUtil$Snake;-><init>()V

    .line 276
    .local v3, "outSnake":Landroid/support/v7/util/DiffUtil$Snake;
    add-int v10, p7, v12

    aget v10, v2, v10

    iput v10, v3, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    .line 277
    iget v10, v3, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    sub-int/2addr v10, v12

    iput v10, v3, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    .line 278
    add-int v10, p7, v12

    aget v10, v1, v10

    add-int v16, p7, v12

    aget v16, v2, v16

    sub-int v10, v10, v16

    iput v10, v3, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    .line 280
    iput-boolean v14, v3, Landroid/support/v7/util/DiffUtil$Snake;->removal:Z

    .line 281
    iput-boolean v6, v3, Landroid/support/v7/util/DiffUtil$Snake;->reverse:Z

    .line 282
    return-object v3

    .line 250
    .end local v3    # "outSnake":Landroid/support/v7/util/DiffUtil$Snake;
    .end local v12    # "backwardK":I
    .end local v13    # "x":I
    .end local v14    # "removal":Z
    .end local v15    # "y":I
    :cond_c
    add-int/lit8 v11, v11, 0x2

    move/from16 v3, v17

    const/4 v10, 0x0

    goto/16 :goto_7

    .end local v17    # "oldSize":I
    .local v3, "oldSize":I
    :cond_d
    move/from16 v17, v3

    .line 216
    .end local v3    # "oldSize":I
    .end local v11    # "k":I
    .restart local v17    # "oldSize":I
    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x0

    goto/16 :goto_1

    .end local v17    # "oldSize":I
    .restart local v3    # "oldSize":I
    :cond_e
    move/from16 v17, v3

    .line 287
    .end local v3    # "oldSize":I
    .end local v9    # "d":I
    .restart local v17    # "oldSize":I
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v6, "DiffUtil hit an unexpected case while trying to calculate the optimal path. Please make sure your data is not changing during the diff calculation."

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 207
    .end local v5    # "delta":I
    .end local v7    # "dLimit":I
    .end local v8    # "checkInFwd":Z
    .end local v17    # "oldSize":I
    .restart local v3    # "oldSize":I
    :cond_f
    move/from16 v17, v3

    .line 208
    .end local v3    # "oldSize":I
    .restart local v17    # "oldSize":I
    :goto_b
    const/4 v3, 0x0

    return-object v3
    .end method'''

    method_list = method_text.split("\n")
    print("Building SMD")
    smd = SmaliMethodDef.SmaliMethodDef(method_list, None)
    print("Instrumenting")
    smd.instrument()


def type_safety_weather_app_test():
    
    f = open('test/test_method_code_snapshot.smali', 'r')
    method_list = f.readlines()
    print("Building SMD")
    smd = SmaliMethodDef.SmaliMethodDef(method_list, None)
    print("Instrumenting")
    smd.instrument()
    
    
def type_safety_weather_app_test1():
        
    f = open('test/weather_app_huge_method.smali', 'r')
    method_list = f.readlines()
    print("Building SMD")
    smd = SmaliMethodDef.SmaliMethodDef(method_list, None)
    print("Instrumenting")
    smd.instrument()
    
    
def type_safety_weather_app_test_huge():

    print("Building SCD")
    scd  = SmaliClassDef.SmaliClassDef('test/uninstrumented_c_class.smali')    
    
    print("Instrumenting")
    scd.instrument()

    
    path = "/Users/saadmahboob/Desktop/testing/Instrumented_c.smali"
    print("Writing to file at:", path)
    scd.write_to_file(path)
    
    print("done!")
    
    
def type_safety_weather_app_test_try_class():
        
    # f = open('test/uninstrumented_c_class.smali', 'r')
    # method_list = f.readlines()
    print("Running on type_safety_weather_app_test_try_class")
    print("Building SCD")
    scd  = SmaliClassDef.SmaliClassDef('test/uninstrumented_weather_crash_tryblock_zzzd.smali')    
    
    print("Instrumenting")
    scd.instrument()

    path = "/Users/saadmahboob/Desktop/testing/Instrumented_class_zzzd.smali"
    print("Writing to file at:", path)
    scd.write_to_file(path)
    
    print("done!")


def type_safety_crash_method_try_block():
    
    print("running type_safety_crash_method_try_block")
    f = open('test/uninstrumented_disableMediationAdapter.smali', 'r')
    method_list = f.readlines()
    print("Building SMD")
    smd = SmaliMethodDef.SmaliMethodDef(method_list, None)
    print("Instrumenting")
    smd.instrument()
    
    path = "/Users/saadmahboob/Desktop/testing/instrumented_testing_zzzd_method.smali"

    print("writing to file at: ", path)
    with open(path, 'a') as file:    
        for line in smd.raw_text:
            file.write(line)

    # path = "/Users/saadmahboob/Desktop/testing/instrumented_disableMediationAdapter.smali"
    # print("Writing to file at:", path)
    # scd.write_to_file(path)
    print("done")


def stigma_annotation_crash():
    
    print("Running stigma_annotation_crash")
    scd  = SmaliClassDef.SmaliClassDef('test/uninstrumented_offline_manager_class.smali')    
    
        
    print("Instrumenting")
    scd.instrument()
    
    path = "/Users/saadmahboob/Desktop/testing/instrumented_offline_manager_class.smali"
    print("Writing to file at:", path)
    scd.write_to_file(path)
    
    print("Done!")
    
def stigma_leaks_crash_fragment():
    
    f = open('test/instrumented_markFragment_method.smali', 'r')
    method_list = f.readlines()
    print("Building SMD")
    smd = SmaliMethodDef.SmaliMethodDef(method_list, None)
    print("Building CFG")
    smd.instrument()
    
    smd.cfg.show()
    
def stigma_leaks_crash_onNavigate():
    
    print("Running stigma_leaks_crash_onNavigate")
    scd  = SmaliClassDef.SmaliClassDef('test/uninstrumented_leaks_onSupportNavigateUp.smali')    
    print("Instrumenting")
    scd.instrument()
    
    path = "/Users/saadmahboob/Desktop//instrumented_onNavgiateSupportUp.smali"

    print("writing to file at: ", path)
    with open(path, 'a') as file:    
        for m in scd.methods:
            for line in m.raw_text:
                file.write(str(line))
                          
def stigma_leaks_crash_removeAt():
    
    print("Running stigma_leaks_crash_removeAt")
    scd  = SmaliClassDef.SmaliClassDef('test/uninstrumented_SimpleArrayMap_removeAt.smali')    
    
    print("Instrumenting")
    scd.instrument()
    
    path = "/Users/saadmahboob/Desktop//instrumented_SimpleArrayMap.smali"

    print("writing to file at: ", path)
    with open(path, 'a') as file:    
        for m in scd.methods:
            for line in m.raw_text:
                file.write(str(line))
                            
def stigma_leaks_crash_moveToState():
    
    print("Running stigma_leaks_crash_moveToState")
    scd  = SmaliClassDef.SmaliClassDef('test/uninstrumented_moveToState.smali')    
    
    print("Instrumenting")
    scd.instrument()
    
    path = "/Users/saadmahboob/Desktop/testing/instrumented_moveToState.smali"

    print("writing to file at: ", path)
    with open(path, 'a') as file:    
        for m in scd.methods:
            for line in m.raw_text:
                file.write(str(line))
    
    print("Done!")
    
def stigma_leaks_crash_CoreComponentFactory():
        
    print("Running stigma_leaks_crash_CoreComponentFactory")
    scd  = SmaliClassDef.SmaliClassDef('test/uninstrumented_CoreComponentFactory.smali')    
    
    print("Instrumenting")
    scd.instrument()
    
    path = "/Users/saadmahboob/Desktop/testing/instrumented_CoreComponentFactory.smali"

    print("writing to file at: ", path)
    with open(path, 'a') as file:    
        for m in scd.methods:
            for line in m.raw_text:
                file.write(str(line))
    
    print("Done!")
            

def type_safety_weather_app_test2():
    method_text = '''.method private allocArrays(I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-ne p1, v3, :cond_1

    .line 161
    const-class v3, Landroidx/collection/ArraySet;

    monitor-enter v3

    .line 162
    :try_start_0
    sget-object v4, Landroidx/collection/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 164
    iput-object v4, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 165
    aget-object p1, v4, v1

    check-cast p1, [Ljava/lang/Object;

    sput-object p1, Landroidx/collection/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    .line 166
    aget-object p1, v4, v2

    check-cast p1, [I

    iput-object p1, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 167
    aput-object v0, v4, v2

    aput-object v0, v4, v1

    .line 168
    sget p1, Landroidx/collection/ArraySet;->sTwiceBaseCacheSize:I

    sub-int/2addr p1, v2

    sput p1, Landroidx/collection/ArraySet;->sTwiceBaseCacheSize:I

    .line 173
    monitor-exit v3

    return-void

    .line 175
    :cond_0
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    const/4 v3, 0x4

    if-ne p1, v3, :cond_3

    .line 177
    const-class v3, Landroidx/collection/ArraySet;

    monitor-enter v3

    .line 178
    :try_start_1
    sget-object v4, Landroidx/collection/ArraySet;->sBaseCache:[Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 180
    iput-object v4, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 181
    aget-object p1, v4, v1

    check-cast p1, [Ljava/lang/Object;

    sput-object p1, Landroidx/collection/ArraySet;->sBaseCache:[Ljava/lang/Object;

    .line 182
    aget-object p1, v4, v2

    check-cast p1, [I

    iput-object p1, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 183
    aput-object v0, v4, v2

    aput-object v0, v4, v1

    .line 184
    sget p1, Landroidx/collection/ArraySet;->sBaseCacheSize:I

    sub-int/2addr p1, v2

    sput p1, Landroidx/collection/ArraySet;->sBaseCacheSize:I

    .line 189
    monitor-exit v3

    return-void

    .line 191
    :cond_2
    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception p1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 194
    :cond_3
    :goto_0
    new-array v0, p1, [I

    iput-object v0, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 195
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    return-void
    .end method'''
    
    method_list = method_text.split("\n")
    print("Building SMD")
    smd = SmaliMethodDef.SmaliMethodDef(method_list, None)
    print("Instrumenting")
    smd.instrument()


def type_safety_weather_app_test3():
    method_text = '''.method private static native _getDirectBufferPointer(Ljava/nio/Buffer;)J
    .end method'''
    
    method_list = method_text.split("\n")
    print("Building SMD")
    smd = SmaliMethodDef.SmaliMethodDef(method_list, None)
    print("Instrumenting")
    smd.instrument()
    

def check_type_safety_limits():
    path = "/Users/saadmahboob/Desktop/testing/instrumented_testing_c.smali"
    with open(path, 'a') as file:

    # file = open(path, 'w')
        file.write('\n\tif-eqz v2, :cond1')
        for i in range(24000):        
            file.write('\n\tconst/16 v1, 0x2e8')


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
    print("\nRunning basic wholistic taint tracking instrumentation tests...")
    
    scd = SmaliClassDef.SmaliClassDef("./test/double_move_result_line.smali")
    putExtraData_method = scd.methods[0]
    #print(str(putExtraData_method))
    #print(putExtraData_method.get_locals_directive_line())
    assert(str(putExtraData_method.get_locals_directive_line()) == ".locals 2")
    #print(putExtraData_method.get_register_meta_data())
    assert(putExtraData_method.get_register_meta_data() == "['v0', 'v1', 'v2/p0', 'v3/p1']")

    
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
    
    

def main():
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
    
    
    type_safety_checker_aget_test()
    #type_safety_checker_aget2_test()
    #type_safety_checker_aget_test3()
    #type_safety_checker_leaks_test()
    
    #type_safety_weather_app_test()

    #type_safety_weather_app_test3()
    #type_safety_weather_app_test1()
    
    #type_safety_weather_app_test_huge()
    #type_safety_weather_app_test_try_block()
    #check_type_safety_limits()
    
    
    #type_safety_crash_method_try_block()
    #type_safety_weather_app_test_try_class()
    
    #stigma_annotation_crash()
    #stigma_leaks_crash_fragment()
    #stigma_leaks_crash_onNavigate()
    #stigma_leaks_crash_removeAt()
    #stigma_leaks_crash_moveToState()
    #stigma_leaks_crash_CoreComponentFactory()
    
    
    
    stigma_leaks_crash_SupportActivity()
    double_move_result_bug()
    
    
    print("ALL TESTS PASSED!")
    
    
if __name__=="__main__":
    main()
