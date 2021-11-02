.method public static a(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ScriptableObject;Z)Lorg/mozilla/javascript/ScriptableObject;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v7, p2

    if-nez p1, :cond_0

    new-instance v1, Lorg/mozilla/javascript/aB;

    invoke-direct {v1}, Lorg/mozilla/javascript/aB;-><init>()V

    move-object v8, v1

    goto :goto_0

    :cond_0
    move-object/from16 v8, p1

    :goto_0
    sget-object v1, Lorg/mozilla/javascript/bk;->x:Ljava/lang/Object;

    invoke-virtual {v8, v1, v8}, Lorg/mozilla/javascript/ScriptableObject;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/mozilla/javascript/e;

    invoke-direct {v1}, Lorg/mozilla/javascript/e;-><init>()V

    invoke-virtual {v1, v8}, Lorg/mozilla/javascript/e;->a(Lorg/mozilla/javascript/ScriptableObject;)Z

    invoke-static {v8, v7}, Lorg/mozilla/javascript/b;->a(Lorg/mozilla/javascript/Scriptable;Z)V

    invoke-static {v8, v7}, Lorg/mozilla/javascript/aB;->a(Lorg/mozilla/javascript/Scriptable;Z)V

    invoke-static {v8}, Lorg/mozilla/javascript/ScriptableObject;->e(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "Function"

    invoke-static {v8, v2}, Lorg/mozilla/javascript/ScriptableObject;->b(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/mozilla/javascript/Scriptable;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    invoke-virtual {v8}, Lorg/mozilla/javascript/ScriptableObject;->c()Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v8, v1}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    :cond_1
    invoke-static {v8, v7}, Lorg/mozilla/javascript/aj;->a(Lorg/mozilla/javascript/Scriptable;Z)V

    invoke-static {v0, v8, v7}, Lorg/mozilla/javascript/ao;->a(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V

    invoke-static {v8, v7}, Lorg/mozilla/javascript/aa;->a(Lorg/mozilla/javascript/Scriptable;Z)V

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/Context;->e()I

    move-result v1

    if-lez v1, :cond_2

    const v1, 0x30d40

    invoke-static {v1}, Lorg/mozilla/javascript/aa;->f(I)V

    :cond_2
    invoke-static {v8, v7}, Lorg/mozilla/javascript/aK;->a(Lorg/mozilla/javascript/Scriptable;Z)V

    invoke-static {v8, v7}, Lorg/mozilla/javascript/ae;->a(Lorg/mozilla/javascript/Scriptable;Z)V

    invoke-static {v8, v7}, Lorg/mozilla/javascript/aA;->a(Lorg/mozilla/javascript/Scriptable;Z)V

    invoke-static {v8, v7}, Lorg/mozilla/javascript/ai;->a(Lorg/mozilla/javascript/Scriptable;Z)V

    invoke-static {v8, v7}, Lorg/mozilla/javascript/az;->a(Lorg/mozilla/javascript/Scriptable;Z)V

    invoke-static {v8, v7}, Lorg/mozilla/javascript/as;->a(Lorg/mozilla/javascript/Scriptable;Z)V

    invoke-static {v8, v7}, Lorg/mozilla/javascript/aL;->a(Lorg/mozilla/javascript/Scriptable;Z)V

    invoke-static {v8, v7}, Lorg/mozilla/javascript/af;->a(Lorg/mozilla/javascript/Scriptable;Z)V

    invoke-static {v8, v7}, Lorg/mozilla/javascript/aJ;->b(Lorg/mozilla/javascript/Scriptable;Z)V

    invoke-static {v8, v7}, Lorg/mozilla/javascript/ap;->a(Lorg/mozilla/javascript/ScriptableObject;Z)V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Context;->a(I)Z

    move-result v1

    const/4 v9, 0x0

    if-eqz v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/Context;->i()Lbl;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    move v10, v1

    goto :goto_1

    :cond_3
    move v10, v9

    :goto_1
    new-instance v1, Lorg/mozilla/javascript/X;

    const/4 v6, 0x1

    const-string v3, "RegExp"

    const-string v4, "org.mozilla.javascript.regexp.NativeRegExp"

    move-object v2, v8

    move/from16 v5, p2

    invoke-direct/range {v1 .. v6}, Lorg/mozilla/javascript/X;-><init>(Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v1, Lorg/mozilla/javascript/X;

    const-string v3, "Continuation"

    const-string v4, "org.mozilla.javascript.NativeContinuation"

    invoke-direct/range {v1 .. v6}, Lorg/mozilla/javascript/X;-><init>(Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Ljava/lang/String;ZZ)V

    if-eqz v10, :cond_4

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/Context;->i()Lbl;

    move-result-object v0

    invoke-virtual {v0}, Lbl;->a()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lorg/mozilla/javascript/X;

    const/4 v5, 0x1

    const-string v2, "XML"

    move-object v1, v8

    move-object v3, v6

    move/from16 v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/X;-><init>(Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v0, Lorg/mozilla/javascript/X;

    const-string v2, "XMLList"

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/X;-><init>(Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v0, Lorg/mozilla/javascript/X;

    const-string v2, "Namespace"

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/X;-><init>(Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v0, Lorg/mozilla/javascript/X;

    const-string v2, "QName"

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/X;-><init>(Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Ljava/lang/String;ZZ)V

    :cond_4
    instance-of v0, v8, Lorg/mozilla/javascript/bC;

    if-eqz v0, :cond_5

    move-object v0, v8

    check-cast v0, Lorg/mozilla/javascript/bC;

    invoke-virtual {v0}, Lorg/mozilla/javascript/bC;->g()V

    :cond_5
    new-instance v0, Lorg/mozilla/javascript/X;

    const/4 v5, 0x1

    const-string v2, "Packages"

    const-string v3, "org.mozilla.javascript.NativeJavaTopPackage"

    move-object v1, v8

    move/from16 v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/X;-><init>(Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v0, Lorg/mozilla/javascript/X;

    const-string v2, "getClass"

    const-string v3, "org.mozilla.javascript.NativeJavaTopPackage"

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/X;-><init>(Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v0, Lorg/mozilla/javascript/X;

    const-string v2, "JavaAdapter"

    const-string v3, "org.mozilla.javascript.JavaAdapter"

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/X;-><init>(Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v0, Lorg/mozilla/javascript/X;

    const-string v2, "JavaImporter"

    const-string v3, "org.mozilla.javascript.ImporterTopLevel"

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/X;-><init>(Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "java.vm.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Dalvik"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v10, "java"

    const-string v11, "javax"

    const-string v12, "org"

    const-string v13, "com"

    const-string v14, "edu"

    const-string v15, "net"

    const-string v16, "android"

    filled-new-array/range {v10 .. v16}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    const-string v1, "java"

    const-string v2, "javax"

    const-string v3, "org"

    const-string v4, "com"

    const-string v5, "edu"

    const-string v6, "net"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v6, v0

    array-length v10, v6

    :goto_3
    if-ge v9, v10, :cond_7

    aget-object v2, v6, v9

    new-instance v0, Lorg/mozilla/javascript/X;

    const/4 v5, 0x1

    const-string v3, "org.mozilla.javascript.NativeJavaTopPackage"

    move-object v1, v8

    move/from16 v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/X;-><init>(Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Ljava/lang/String;ZZ)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_7
    return-object v8
.end method