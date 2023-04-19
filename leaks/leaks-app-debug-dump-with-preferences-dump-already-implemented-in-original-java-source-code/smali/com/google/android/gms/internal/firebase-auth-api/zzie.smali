.class public final enum Lcom/google/android/gms/internal/firebase-auth-api/zzie;
.super Ljava/lang/Enum;
.source "com.google.firebase:firebase-auth@@20.0.4"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzaac;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzie;",
        ">;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzaac;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/firebase-auth-api/zzie;

.field public static final enum zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzie;

.field public static final enum zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzie;

.field public static final enum zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzie;

.field public static final enum zze:Lcom/google/android/gms/internal/firebase-auth-api/zzie;

.field private static final zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzaad;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaad<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzie;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic zzh:[Lcom/google/android/gms/internal/firebase-auth-api/zzie;


# instance fields
.field private final zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzie;

    .line 1
    const-string v1, "UNKNOWN_STATUS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzie;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzie;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzie;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzie;

    .line 2
    const-string v3, "ENABLED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzie;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzie;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzie;

    new-instance v3, Lcom/google/android/gms/internal/firebase-auth-api/zzie;

    .line 3
    const-string v5, "DISABLED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzie;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzie;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzie;

    new-instance v5, Lcom/google/android/gms/internal/firebase-auth-api/zzie;

    .line 4
    const-string v7, "DESTROYED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzie;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/firebase-auth-api/zzie;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzie;

    new-instance v7, Lcom/google/android/gms/internal/firebase-auth-api/zzie;

    .line 5
    const-string v9, "UNRECOGNIZED"

    const/4 v10, 0x4

    const/4 v11, -0x1

    invoke-direct {v7, v9, v10, v11}, Lcom/google/android/gms/internal/firebase-auth-api/zzie;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/firebase-auth-api/zzie;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzie;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/google/android/gms/internal/firebase-auth-api/zzie;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/google/android/gms/internal/firebase-auth-api/zzie;->zzh:[Lcom/google/android/gms/internal/firebase-auth-api/zzie;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzid;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzid;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzie;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzaad;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzie;->zzg:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/firebase-auth-api/zzie;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzie;->zzh:[Lcom/google/android/gms/internal/firebase-auth-api/zzie;

    .line 1
    invoke-virtual {v0}, [Lcom/google/android/gms/internal/firebase-auth-api/zzie;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/firebase-auth-api/zzie;

    return-object v0
.end method

.method public static zzb(I)Lcom/google/android/gms/internal/firebase-auth-api/zzie;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzie;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzie;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzie;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzie;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzie;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzie;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzie;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzie;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    .line 1
    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzie;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzie;

    if-eq p0, v1, :cond_0

    .line 5
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzie;->zza()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    nop

    .line 6
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzie;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzie;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzie;

    if-eq p0, v0, :cond_0

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzie;->zzg:I

    return v0

    .line 0
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1
    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
