.class final Lcom/fasterxml/jackson/databind/cfg/ConfigOverride$Empty;
.super Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;
.source "ConfigOverride.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Empty"
.end annotation


# static fields
.field static final INSTANCE:Lcom/fasterxml/jackson/databind/cfg/ConfigOverride$Empty;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 133
    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverride$Empty;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/cfg/ConfigOverride$Empty;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverride$Empty;->INSTANCE:Lcom/fasterxml/jackson/databind/cfg/ConfigOverride$Empty;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;-><init>()V

    return-void
.end method
