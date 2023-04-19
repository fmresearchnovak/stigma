.class public Lcom/fasterxml/jackson/databind/PropertyNamingStrategies$UpperSnakeCaseStrategy;
.super Lcom/fasterxml/jackson/databind/PropertyNamingStrategies$SnakeCaseStrategy;
.source "PropertyNamingStrategies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/PropertyNamingStrategies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpperSnakeCaseStrategy"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 268
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategies$SnakeCaseStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public translate(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    .line 274
    invoke-super {p0, p1}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategies$SnakeCaseStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "output":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 276
    const/4 v1, 0x0

    return-object v1

    .line 277
    :cond_0
    invoke-super {p0, p1}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategies$SnakeCaseStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
