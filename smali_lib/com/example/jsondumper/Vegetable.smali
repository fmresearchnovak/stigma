.class public Lcom/example/jsondumper/Vegetable;
.super Ljava/lang/Object;
.source "Vegetable.java"


# instance fields
.field public color:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private weight:D


# direct methods
.method public constructor <init>(Ljava/lang/String;D)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "weight"    # D

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/example/jsondumper/Vegetable;->name:Ljava/lang/String;

    .line 13
    iput-wide p2, p0, Lcom/example/jsondumper/Vegetable;->weight:D

    .line 14
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/example/jsondumper/Vegetable;->name:Ljava/lang/String;

    return-object v0
.end method
