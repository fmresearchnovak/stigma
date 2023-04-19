.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzbo;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@20.0.4"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzih;

.field public static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzih;

.field public static final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzih;

.field public static final zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzih;

.field public static final zze:Lcom/google/android/gms/internal/firebase-auth-api/zzih;

.field public static final zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzih;

.field public static final zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzih;

.field public static final zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzih;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbo;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzih;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzbo;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzih;

    .line 2
    const/16 v1, 0x20

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzbo;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzih;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzbo;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzih;

    .line 3
    invoke-static {v0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbo;->zzb(II)Lcom/google/android/gms/internal/firebase-auth-api/zzih;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzbo;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzih;

    .line 4
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbo;->zzb(II)Lcom/google/android/gms/internal/firebase-auth-api/zzih;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzbo;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzih;

    .line 5
    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzho;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzho;

    .line 6
    invoke-static {v0, v0, v1, v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzbo;->zzc(IIIILcom/google/android/gms/internal/firebase-auth-api/zzho;)Lcom/google/android/gms/internal/firebase-auth-api/zzih;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzbo;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzih;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzho;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzho;

    .line 7
    invoke-static {v1, v0, v1, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzbo;->zzc(IIIILcom/google/android/gms/internal/firebase-auth-api/zzho;)Lcom/google/android/gms/internal/firebase-auth-api/zzih;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzbo;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzih;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzih;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzig;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzcj;

    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzcj;-><init>()V

    .line 9
    const-string v1, "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzig;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzig;

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzji;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzji;

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzig;->zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzji;)Lcom/google/android/gms/internal/firebase-auth-api/zzig;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzw;->zzl()Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzih;

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzbo;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzih;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzih;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzig;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzct;

    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzct;-><init>()V

    .line 13
    const-string v1, "type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzig;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzig;

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzji;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzji;

    .line 14
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzig;->zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzji;)Lcom/google/android/gms/internal/firebase-auth-api/zzig;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzw;->zzl()Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzih;

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzbo;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzih;

    return-void
.end method

.method public static zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzih;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzfv;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzfu;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzfu;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzfu;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzw;->zzl()Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzfv;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzih;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzig;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzyj;->zzn()Lcom/google/android/gms/internal/firebase-auth-api/zzyy;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzig;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzyy;)Lcom/google/android/gms/internal/firebase-auth-api/zzig;

    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;-><init>()V

    .line 6
    const-string p0, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzig;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzig;

    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzji;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzji;

    .line 7
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzig;->zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzji;)Lcom/google/android/gms/internal/firebase-auth-api/zzig;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzw;->zzl()Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzih;

    return-object p0
.end method

.method public static zzb(II)Lcom/google/android/gms/internal/firebase-auth-api/zzih;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzfm;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzfl;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzfl;->zzb(I)Lcom/google/android/gms/internal/firebase-auth-api/zzfl;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzfp;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzfo;

    move-result-object p0

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzfo;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzfo;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzw;->zzl()Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzfp;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzfl;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzfp;)Lcom/google/android/gms/internal/firebase-auth-api/zzfl;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzw;->zzl()Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzfm;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzih;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzig;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzyj;->zzn()Lcom/google/android/gms/internal/firebase-auth-api/zzyy;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzig;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzyy;)Lcom/google/android/gms/internal/firebase-auth-api/zzig;

    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/zzca;

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzca;-><init>()V

    .line 7
    const-string p0, "type.googleapis.com/google.crypto.tink.AesEaxKey"

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzig;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzig;

    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzji;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzji;

    .line 8
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzig;->zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzji;)Lcom/google/android/gms/internal/firebase-auth-api/zzig;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzw;->zzl()Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzih;

    return-object p0
.end method

.method public static zzc(IIIILcom/google/android/gms/internal/firebase-auth-api/zzho;)Lcom/google/android/gms/internal/firebase-auth-api/zzih;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzfd;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzfc;

    move-result-object p1

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzfg;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzff;

    move-result-object p2

    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzff;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzff;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzzw;->zzl()Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/firebase-auth-api/zzfg;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzfc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzfg;)Lcom/google/android/gms/internal/firebase-auth-api/zzfc;

    .line 3
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzfc;->zzb(I)Lcom/google/android/gms/internal/firebase-auth-api/zzfc;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzw;->zzl()Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzfd;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzhu;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzht;

    move-result-object p1

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzhx;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzhw;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzhw;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzho;)Lcom/google/android/gms/internal/firebase-auth-api/zzhw;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzhw;->zzb(I)Lcom/google/android/gms/internal/firebase-auth-api/zzhw;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzzw;->zzl()Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/firebase-auth-api/zzhx;

    .line 7
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzht;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzhx;)Lcom/google/android/gms/internal/firebase-auth-api/zzht;

    .line 8
    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzht;->zzb(I)Lcom/google/android/gms/internal/firebase-auth-api/zzht;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzw;->zzl()Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzhu;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzex;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzew;

    move-result-object p2

    .line 11
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzew;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzfd;)Lcom/google/android/gms/internal/firebase-auth-api/zzew;

    .line 12
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzew;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzhu;)Lcom/google/android/gms/internal/firebase-auth-api/zzew;

    .line 13
    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzzw;->zzl()Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzex;

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzih;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzig;

    move-result-object p1

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzyj;->zzn()Lcom/google/android/gms/internal/firebase-auth-api/zzyy;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzig;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzyy;)Lcom/google/android/gms/internal/firebase-auth-api/zzig;

    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbu;

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbu;-><init>()V

    .line 16
    const-string p0, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzig;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzig;

    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzji;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzji;

    .line 17
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzig;->zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzji;)Lcom/google/android/gms/internal/firebase-auth-api/zzig;

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzw;->zzl()Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzih;

    return-object p0
.end method
