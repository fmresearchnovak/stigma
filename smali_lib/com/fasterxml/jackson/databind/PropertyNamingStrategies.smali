.class public abstract Lcom/fasterxml/jackson/databind/PropertyNamingStrategies;
.super Ljava/lang/Object;
.source "PropertyNamingStrategies.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/PropertyNamingStrategies$LowerDotCaseStrategy;,
        Lcom/fasterxml/jackson/databind/PropertyNamingStrategies$KebabCaseStrategy;,
        Lcom/fasterxml/jackson/databind/PropertyNamingStrategies$LowerCaseStrategy;,
        Lcom/fasterxml/jackson/databind/PropertyNamingStrategies$UpperCamelCaseStrategy;,
        Lcom/fasterxml/jackson/databind/PropertyNamingStrategies$LowerCamelCaseStrategy;,
        Lcom/fasterxml/jackson/databind/PropertyNamingStrategies$UpperSnakeCaseStrategy;,
        Lcom/fasterxml/jackson/databind/PropertyNamingStrategies$SnakeCaseStrategy;,
        Lcom/fasterxml/jackson/databind/PropertyNamingStrategies$NamingBase;
    }
.end annotation


# static fields
.field public static final KEBAB_CASE:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

.field public static final LOWER_CAMEL_CASE:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

.field public static final LOWER_CASE:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

.field public static final LOWER_DOT_CASE:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

.field public static final SNAKE_CASE:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

.field public static final UPPER_CAMEL_CASE:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

.field public static final UPPER_SNAKE_CASE:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

.field private static final serialVersionUID:J = 0x2L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/fasterxml/jackson/databind/PropertyNamingStrategies$LowerCamelCaseStrategy;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategies$LowerCamelCaseStrategy;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/PropertyNamingStrategies;->LOWER_CAMEL_CASE:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 45
    new-instance v0, Lcom/fasterxml/jackson/databind/PropertyNamingStrategies$UpperCamelCaseStrategy;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategies$UpperCamelCaseStrategy;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/PropertyNamingStrategies;->UPPER_CAMEL_CASE:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 54
    new-instance v0, Lcom/fasterxml/jackson/databind/PropertyNamingStrategies$SnakeCaseStrategy;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategies$SnakeCaseStrategy;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/PropertyNamingStrategies;->SNAKE_CASE:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 62
    new-instance v0, Lcom/fasterxml/jackson/databind/PropertyNamingStrategies$UpperSnakeCaseStrategy;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategies$UpperSnakeCaseStrategy;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/PropertyNamingStrategies;->UPPER_SNAKE_CASE:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 71
    new-instance v0, Lcom/fasterxml/jackson/databind/PropertyNamingStrategies$LowerCaseStrategy;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategies$LowerCaseStrategy;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/PropertyNamingStrategies;->LOWER_CASE:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 80
    new-instance v0, Lcom/fasterxml/jackson/databind/PropertyNamingStrategies$KebabCaseStrategy;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategies$KebabCaseStrategy;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/PropertyNamingStrategies;->KEBAB_CASE:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 89
    new-instance v0, Lcom/fasterxml/jackson/databind/PropertyNamingStrategies$LowerDotCaseStrategy;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategies$LowerDotCaseStrategy;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/PropertyNamingStrategies;->LOWER_DOT_CASE:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
