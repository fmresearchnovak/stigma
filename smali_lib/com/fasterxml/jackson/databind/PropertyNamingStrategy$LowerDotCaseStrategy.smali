.class public Lcom/fasterxml/jackson/databind/PropertyNamingStrategy$LowerDotCaseStrategy;
.super Lcom/fasterxml/jackson/databind/PropertyNamingStrategy$PropertyNamingStrategyBase;
.source "PropertyNamingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LowerDotCaseStrategy"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 384
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy$PropertyNamingStrategyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public translate(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .line 387
    const/16 v0, 0x2e

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy$LowerDotCaseStrategy;->translateLowerCaseWithSeparator(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
