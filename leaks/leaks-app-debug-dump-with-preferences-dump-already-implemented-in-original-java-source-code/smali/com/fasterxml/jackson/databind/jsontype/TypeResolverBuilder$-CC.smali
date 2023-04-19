.class public final synthetic Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder$-CC;
.super Ljava/lang/Object;
.source "TypeResolverBuilder.java"


# annotations
.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    kind = 0x7
    versionHash = "5e5398f0546d1d7afd62641edb14d82894f11ddc41bce363a0c8d0dac82c9c5a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static $default$withDefaultImpl(Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
    .locals 1
    .param p0, "_this"    # Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    .line 174
    .local p0, "this":Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;, "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder<TT;>;"
    .local p1, "defaultImpl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->defaultImpl(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v0

    return-object v0
.end method
