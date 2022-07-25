.class public abstract Lcom/fasterxml/jackson/core/JacksonException;
.super Ljava/io/IOException;
.source "JacksonException.java"


# static fields
.field private static final serialVersionUID:J = 0x7bL


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 18
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "rootCause"    # Ljava/lang/Throwable;

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 22
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 23
    return-void
.end method


# virtual methods
.method public abstract getLocation()Lcom/fasterxml/jackson/core/JsonLocation;
.end method

.method public abstract getOriginalMessage()Ljava/lang/String;
.end method

.method public abstract getProcessor()Ljava/lang/Object;
.end method
