.class final Lcom/google/android/gms/dynamite/DynamiteModule$zzb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.1.0"

# interfaces
.implements Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/dynamite/DynamiteModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzb"
.end annotation


# instance fields
.field private final zzje:I

.field private final zzjf:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/dynamite/DynamiteModule$zzb;->zzje:I

    .line 3
    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/dynamite/DynamiteModule$zzb;->zzjf:I

    .line 4
    return-void
.end method


# virtual methods
.method public final getLocalVersion(Landroid/content/Context;Ljava/lang/String;)I
    .locals 0

    .line 6
    iget p1, p0, Lcom/google/android/gms/dynamite/DynamiteModule$zzb;->zzje:I

    return p1
.end method

.method public final zza(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 0

    .line 5
    const/4 p1, 0x0

    return p1
.end method
