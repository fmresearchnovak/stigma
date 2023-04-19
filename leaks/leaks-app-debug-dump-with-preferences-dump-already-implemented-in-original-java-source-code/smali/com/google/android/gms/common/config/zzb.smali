.class final Lcom/google/android/gms/common/config/zzb;
.super Lcom/google/android/gms/common/config/GservicesValue;
.source "com.google.android.gms:play-services-basement@@17.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/config/GservicesValue<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/config/GservicesValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zzd(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 2
    nop

    .line 3
    nop

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/common/config/zzb;->mKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/common/config/zzb;->zzcc:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-interface {v1, p1, v0}, Lcom/google/android/gms/common/config/GservicesValue$zza;->zza(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 5
    throw v1
.end method
