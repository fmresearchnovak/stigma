.class public final enum Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;
.super Ljava/lang/Enum;
.source "PolymorphicTypeValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Validity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;

.field public static final enum ALLOWED:Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;

.field public static final enum DENIED:Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;

.field public static final enum INDETERMINATE:Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 62
    new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;

    const-string v1, "ALLOWED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;->ALLOWED:Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;

    .line 67
    new-instance v1, Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;

    const-string v3, "DENIED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;->DENIED:Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;

    .line 76
    new-instance v3, Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;

    const-string v5, "INDETERMINATE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;->INDETERMINATE:Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;

    .line 58
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;->$VALUES:[Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 58
    const-class v0, Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;

    return-object v0
.end method

.method public static values()[Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;
    .locals 1

    .line 58
    sget-object v0, Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;->$VALUES:[Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;

    invoke-virtual {v0}, [Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;

    return-object v0
.end method
