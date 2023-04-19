.class public final synthetic Lcom/fasterxml/jackson/databind/deser/Deserializers$-CC;
.super Ljava/lang/Object;
.source "Deserializers.java"


# annotations
.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    kind = 0x7
    versionHash = "5e5398f0546d1d7afd62641edb14d82894f11ddc41bce363a0c8d0dac82c9c5a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static $default$hasDeserializerFor(Lcom/fasterxml/jackson/databind/deser/Deserializers;Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;)Z
    .locals 1
    .param p0, "_this"    # Lcom/fasterxml/jackson/databind/deser/Deserializers;
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 254
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    return v0
.end method
