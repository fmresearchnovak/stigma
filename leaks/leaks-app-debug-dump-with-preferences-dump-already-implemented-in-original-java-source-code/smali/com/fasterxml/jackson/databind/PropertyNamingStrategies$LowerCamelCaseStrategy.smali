.class public Lcom/fasterxml/jackson/databind/PropertyNamingStrategies$LowerCamelCaseStrategy;
.super Lcom/fasterxml/jackson/databind/PropertyNamingStrategies$NamingBase;
.source "PropertyNamingStrategies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/PropertyNamingStrategies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LowerCamelCaseStrategy"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 285
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategies$NamingBase;-><init>()V

    return-void
.end method


# virtual methods
.method public translate(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "input"    # Ljava/lang/String;

    .line 291
    return-object p1
.end method
