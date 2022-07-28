.class Lcom/example/jsondumper/JSON_dumper$JSON_object_instance_helper;
.super Ljava/lang/Object;
.source "JSON_dumper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/jsondumper/JSON_dumper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JSON_object_instance_helper"
.end annotation


# instance fields
.field public random_num:I

.field public version_num:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/example/jsondumper/JSON_dumper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/example/jsondumper/JSON_dumper$1;

    .line 82
    invoke-direct {p0}, Lcom/example/jsondumper/JSON_dumper$JSON_object_instance_helper;-><init>()V

    return-void
.end method
