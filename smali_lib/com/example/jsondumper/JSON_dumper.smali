.class public Lcom/example/jsondumper/JSON_dumper;
.super Ljava/lang/Object;
.source "JSON_dumper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/jsondumper/JSON_dumper$JSON_object_instance_helper;
    }
.end annotation


# static fields
.field static hm:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Lcom/example/jsondumper/JSON_dumper$JSON_object_instance_helper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/example/jsondumper/JSON_dumper;->hm:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static json_dumper_func(Ljava/lang/Object;Landroid/app/Activity;)V
    .locals 8
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "a"    # Landroid/app/Activity;

    .line 32
    const-string v0, "Novak"

    new-instance v1, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    .line 33
    .local v1, "mapper":Lcom/fasterxml/jackson/databind/ObjectMapper;
    sget-object v2, Lcom/fasterxml/jackson/databind/SerializationFeature;->FAIL_ON_EMPTY_BEANS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/databind/SerializationFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 35
    :try_start_0
    sget-object v2, Lcom/example/jsondumper/JSON_dumper;->hm:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 36
    new-instance v2, Lcom/example/jsondumper/JSON_dumper$JSON_object_instance_helper;

    invoke-direct {v2, v4}, Lcom/example/jsondumper/JSON_dumper$JSON_object_instance_helper;-><init>(Lcom/example/jsondumper/JSON_dumper$1;)V

    .line 37
    .local v2, "carl":Lcom/example/jsondumper/JSON_dumper$JSON_object_instance_helper;
    iput v3, v2, Lcom/example/jsondumper/JSON_dumper$JSON_object_instance_helper;->version_num:I

    .line 38
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 39
    .local v3, "r":Ljava/util/Random;
    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v5

    iput v5, v2, Lcom/example/jsondumper/JSON_dumper$JSON_object_instance_helper;->random_num:I

    .line 40
    sget-object v5, Lcom/example/jsondumper/JSON_dumper;->hm:Ljava/util/HashMap;

    invoke-virtual {v5, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v5, "Here, new one\n"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    nop

    .end local v2    # "carl":Lcom/example/jsondumper/JSON_dumper$JSON_object_instance_helper;
    .end local v3    # "r":Ljava/util/Random;
    goto :goto_0

    .line 44
    :cond_0
    sget-object v2, Lcom/example/jsondumper/JSON_dumper;->hm:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/example/jsondumper/JSON_dumper$JSON_object_instance_helper;

    .line 45
    .local v2, "carl_2":Lcom/example/jsondumper/JSON_dumper$JSON_object_instance_helper;
    iget v5, v2, Lcom/example/jsondumper/JSON_dumper$JSON_object_instance_helper;->version_num:I

    add-int/2addr v5, v3

    iput v5, v2, Lcom/example/jsondumper/JSON_dumper$JSON_object_instance_helper;->version_num:I

    .line 46
    sget-object v3, Lcom/example/jsondumper/JSON_dumper;->hm:Ljava/util/HashMap;

    invoke-virtual {v3, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .end local v2    # "carl_2":Lcom/example/jsondumper/JSON_dumper$JSON_object_instance_helper;
    :goto_0
    invoke-virtual {v1, p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "jsonInString":Ljava/lang/String;
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    sget-object v3, Lcom/example/jsondumper/JSON_dumper;->hm:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/example/jsondumper/JSON_dumper$JSON_object_instance_helper;

    .line 51
    .local v3, "final_carl":Lcom/example/jsondumper/JSON_dumper$JSON_object_instance_helper;
    new-instance v5, Ljava/io/File;

    invoke-virtual {p1, v4}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Lcom/example/jsondumper/JSON_dumper$JSON_object_instance_helper;->random_num:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "_v"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Lcom/example/jsondumper/JSON_dumper$JSON_object_instance_helper;->version_num:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ".txt"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v4, v5

    .line 55
    .local v4, "file":Ljava/io/File;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 56
    .local v5, "fileOutput":Ljava/io/FileOutputStream;
    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-direct {v6, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 57
    .local v6, "outputStreamWriter":Ljava/io/OutputStreamWriter;
    invoke-virtual {v6, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->flush()V

    .line 59
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/FileDescriptor;->sync()V

    .line 60
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->close()V

    .line 61
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/SyncFailedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    nop

    .end local v2    # "jsonInString":Ljava/lang/String;
    .end local v3    # "final_carl":Lcom/example/jsondumper/JSON_dumper$JSON_object_instance_helper;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fileOutput":Ljava/io/FileOutputStream;
    .end local v6    # "outputStreamWriter":Ljava/io/OutputStreamWriter;
    goto :goto_2

    .line 71
    :catch_0
    move-exception v2

    .line 72
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "IOException"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 69
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 70
    .local v2, "e":Ljava/io/SyncFailedException;
    const-string v3, "SyncFailedException"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/io/SyncFailedException;
    goto :goto_1

    .line 66
    :catch_2
    move-exception v2

    .line 67
    .local v2, "j":Ljava/io/FileNotFoundException;
    const-string v3, "Error File not found exception"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "j":Ljava/io/FileNotFoundException;
    goto :goto_1

    .line 63
    :catch_3
    move-exception v2

    .line 64
    .local v2, "je":Lcom/fasterxml/jackson/core/JsonProcessingException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error couldn\'t convert object to Json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .end local v2    # "je":Lcom/fasterxml/jackson/core/JsonProcessingException;
    :goto_1
    nop

    .line 74
    :goto_2
    return-void
.end method
