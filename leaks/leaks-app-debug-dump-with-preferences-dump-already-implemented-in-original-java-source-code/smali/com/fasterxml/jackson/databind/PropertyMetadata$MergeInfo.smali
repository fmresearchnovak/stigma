.class public final Lcom/fasterxml/jackson/databind/PropertyMetadata$MergeInfo;
.super Ljava/lang/Object;
.source "PropertyMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/PropertyMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MergeInfo"
.end annotation


# instance fields
.field public final fromDefaults:Z

.field public final getter:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Z)V
    .locals 0
    .param p1, "getter"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .param p2, "fromDefaults"    # Z

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/PropertyMetadata$MergeInfo;->getter:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 48
    iput-boolean p2, p0, Lcom/fasterxml/jackson/databind/PropertyMetadata$MergeInfo;->fromDefaults:Z

    .line 49
    return-void
.end method

.method public static createForDefaults(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/PropertyMetadata$MergeInfo;
    .locals 2
    .param p0, "getter"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 52
    new-instance v0, Lcom/fasterxml/jackson/databind/PropertyMetadata$MergeInfo;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/PropertyMetadata$MergeInfo;-><init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Z)V

    return-object v0
.end method

.method public static createForPropertyOverride(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/PropertyMetadata$MergeInfo;
    .locals 2
    .param p0, "getter"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 60
    new-instance v0, Lcom/fasterxml/jackson/databind/PropertyMetadata$MergeInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/PropertyMetadata$MergeInfo;-><init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Z)V

    return-object v0
.end method

.method public static createForTypeOverride(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/PropertyMetadata$MergeInfo;
    .locals 2
    .param p0, "getter"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 56
    new-instance v0, Lcom/fasterxml/jackson/databind/PropertyMetadata$MergeInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/PropertyMetadata$MergeInfo;-><init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Z)V

    return-object v0
.end method
