
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
	fh.close()
	
	smd = SmaliMethodDef.SmaliMethodDef(method_text, None)
	#print("regs: " + str(smd.get_num_registers()))
	assert(smd.get_num_registers() == 1) # "this"
	assert(smd.signature.is_abstract)


def type_safety_checker_action_bar_try_catch_leaks():
	fh = open("./test/setActionBarUp_method.smali", "r")
	method_list = fh.readlines()
	fh.close()
	
	smd = SmaliMethodDef.SmaliMethodDef(method_list, None)
	# not crashing is enough for this test apparently

#catch label can be :catch_0 format or also :catchall
def type_safety_checker_leaks_test():
	print("Running type safety checker leaks test")
	
	method_text = open("./test/edge_case_method1.smali", "r").readlines()
	mock_class = SmaliClassDef.MockSmaliClassDef()
	smd = SmaliMethodDef.SmaliMethodDef(method_text, mock_class)
	#print(smd.get_num_registers())
	assert(smd.get_num_registers() == 20)
	smd.grow_locals(Instrumenter.DESIRED_NUM_REGISTERS)
	smd.instrument()
	
	print("passed!")


def type_safety_checker_aget_test():
	
	scd = SmaliClassDef.SmaliClassDef("./test/aget_test_class.smali")
	scd.instrument()




def type_safety_checker_aget2_test():
	print("Running aget2 test")
	
	
	fh = open("test/diffPartial_method.smali", "r")
	method_list = fh.readlines()
	fh.close()
	#print("Building SMD")
	mock_class = SmaliClassDef.MockSmaliClassDef();
	smd = SmaliMethodDef.SmaliMethodDef(method_list, mock_class)
	#print("Instrumenting")
	smd.instrument()
	
	print("passed!")




	



def type_safety_weather_app_test3():
	method_text = '''.method private static native _getDirectBufferPointer(Ljava/nio/Buffer;)J
	.end method'''
	
	method_list = method_text.split("\n")
	print("Building SMD")
	smd = SmaliMethodDef.SmaliMethodDef(method_list, None)
	print("Instrumenting")
	smd.instrument()
	


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
	
	
	
def internal_tests():
	
	print("--Running Internal Tests--")
	
	src_code_with_internal_tests = ["StigmaStringParsingLib.py", 
		"SmaliMethodDef.py", "SmaliTypes.py", "SmaliAssemblyInstructions.py",
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
	
	
	type_safety_checker_aget_test()
	type_safety_checker_aget2_test()
	type_safety_checker_leaks_test()
	
	type_safety_weather_app_test3()
	
	
	
	stigma_leaks_crash_SupportActivity()
	double_move_result_bug()
	wide_register_index_out_of_range_bug()
	get_class_from_non_reference_register_bug()
	register_shuffling_test()
	reversed_move_parameters_test()
	
	print("\n\n")
	print("+-------------------+")
	print("| ALL TESTS PASSED! |")
	print("+-------------------+")
	
	
if __name__=="__main__":
	main()
