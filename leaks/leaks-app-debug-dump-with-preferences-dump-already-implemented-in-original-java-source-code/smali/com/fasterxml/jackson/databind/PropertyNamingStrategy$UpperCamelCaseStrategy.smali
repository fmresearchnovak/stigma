.class public Lcom/fasterxml/jackson/databind/PropertyNamingStrategy$UpperCamelCaseStrategy;
.super Lcom/fasterxml/jackson/databind/PropertyNamingStrategy$PropertyNamingStrategyBase;
.source "PropertyNamingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpperCamelCaseStrategy"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 319
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy$PropertyNamingStrategyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public translate(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "input"    # Ljava/lang/String;

    .line 332
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 336
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 337
    .local v1, "c":C
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    .line 338
    .local v2, "uc":C
    if-ne v1, v2, :cond_1

    .line 339
    return-object p1

    .line 341
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 342
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v0, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 343
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 333
    .end local v1    # "c":C
    .end local v2    # "uc":C
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    :goto_0
    return-object p1
.end method
