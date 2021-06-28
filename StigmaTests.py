
from stigma import SmaliMethodDef
from stigma import SmaliClassDef
import sys

<<<<<<< HEAD
def type_saftey_checker_test1():
=======
def type_safety_checker_test():
>>>>>>> fd647d978fbc45b2bdefa69d64acd8aa445ca670
    
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


    method_list = method_text.split("\n")
    smd =  SmaliMethodDef.SmaliMethodDef(method_list, None)
    
    for i in range(len(method_list)):
        print(method_list[i], smd.tcs.method_type_list[i])
        

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
    #print(smd.tcs)
    
    scd = SmaliClassDef.SmaliClassDef("/home/ed/research/ift/stigma/APK/0wH.smali")
    
    
    

def main():
    #type_saftey_checker_test1()
    #type_saftey_checker_test2()
    type_saftey_checker_test3()
    
if __name__=="__main__":
    main()
