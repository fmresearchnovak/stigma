.class public final Lcom/google/android/gms/common/stats/WakeLockEvent;
.super Lcom/google/android/gms/common/stats/StatsEvent;
.source "com.google.android.gms:play-services-basement@@17.1.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/stats/WakeLockEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private durationMillis:J

.field private final versionCode:I

.field private final zzgd:J

.field private zzge:I

.field private final zzgf:Ljava/lang/String;

.field private final zzgg:Ljava/lang/String;

.field private final zzgh:Ljava/lang/String;

.field private final zzgi:I

.field private final zzgj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzgk:Ljava/lang/String;

.field private final zzgl:J

.field private zzgm:I

.field private final zzgn:Ljava/lang/String;

.field private final zzgo:F

.field private final zzgp:J

.field private final zzgq:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 109
    new-instance v0, Lcom/google/android/gms/common/stats/zza;

    invoke-direct {v0}, Lcom/google/android/gms/common/stats/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJILjava/lang/String;ILjava/util/List;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;FJLjava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJI",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "JI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "FJ",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    invoke-direct {p0}, Lcom/google/android/gms/common/stats/StatsEvent;-><init>()V

    .line 2
    move v1, p1

    iput v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->versionCode:I

    .line 3
    move-wide v1, p2

    iput-wide v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzgd:J

    .line 4
    move v1, p4

    iput v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzge:I

    .line 5
    move-object v1, p5

    iput-object v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzgf:Ljava/lang/String;

    .line 6
    move-object v1, p12

    iput-object v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzgg:Ljava/lang/String;

    .line 7
    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzgh:Ljava/lang/String;

    .line 8
    move v1, p6

    iput v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzgi:I

    .line 9
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->durationMillis:J

    .line 10
    move-object v1, p7

    iput-object v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzgj:Ljava/util/List;

    .line 11
    move-object v1, p8

    iput-object v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzgk:Ljava/lang/String;

    .line 12
    move-wide v1, p9

    iput-wide v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzgl:J

    .line 13
    move v1, p11

    iput v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzgm:I

    .line 14
    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzgn:Ljava/lang/String;

    .line 15
    move/from16 v1, p14

    iput v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzgo:F

    .line 16
    move-wide/from16 v1, p15

    iput-wide v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzgp:J

    .line 17
    move/from16 v1, p18

    iput-boolean v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzgq:Z

    .line 18
    return-void
.end method

.method public constructor <init>(JILjava/lang/String;ILjava/util/List;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;FJLjava/lang/String;Z)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "JI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "FJ",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-wide/from16 v9, p8

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    move-wide/from16 v15, p14

    move-object/from16 v17, p16

    move/from16 v18, p17

    .line 19
    const/4 v1, 0x2

    invoke-direct/range {v0 .. v18}, Lcom/google/android/gms/common/stats/WakeLockEvent;-><init>(IJILjava/lang/String;ILjava/util/List;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;FJLjava/lang/String;Z)V

    .line 20
    return-void
.end method


# virtual methods
.method public final getEventType()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzge:I

    return v0
.end method

.method public final getTimeMillis()J
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzgd:J

    return-wide v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 24
    nop

    .line 25
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 26
    iget v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->versionCode:I

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 27
    nop

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/StatsEvent;->getTimeMillis()J

    move-result-wide v0

    .line 29
    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 30
    nop

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzgf:Ljava/lang/String;

    .line 32
    nop

    .line 33
    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 34
    nop

    .line 35
    iget v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzgi:I

    .line 36
    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 37
    nop

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzgj:Ljava/util/List;

    .line 39
    nop

    .line 40
    const/4 v1, 0x6

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeStringList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 41
    nop

    .line 42
    iget-wide v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzgl:J

    .line 43
    const/16 v3, 0x8

    invoke-static {p1, v3, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 44
    nop

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzgg:Ljava/lang/String;

    .line 46
    nop

    .line 47
    const/16 v1, 0xa

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 48
    nop

    .line 49
    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/StatsEvent;->getEventType()I

    move-result v0

    .line 50
    const/16 v1, 0xb

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 51
    nop

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzgk:Ljava/lang/String;

    .line 53
    nop

    .line 54
    const/16 v1, 0xc

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 55
    nop

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzgn:Ljava/lang/String;

    .line 57
    nop

    .line 58
    const/16 v1, 0xd

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 59
    nop

    .line 60
    iget v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzgm:I

    .line 61
    const/16 v1, 0xe

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 62
    nop

    .line 63
    iget v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzgo:F

    .line 64
    const/16 v1, 0xf

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    .line 65
    nop

    .line 66
    iget-wide v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzgp:J

    .line 67
    const/16 v3, 0x10

    invoke-static {p1, v3, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 68
    nop

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzgh:Ljava/lang/String;

    .line 70
    nop

    .line 71
    const/16 v1, 0x11

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 72
    nop

    .line 73
    iget-boolean v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzgq:Z

    .line 74
    const/16 v1, 0x12

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 75
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 76
    return-void
.end method

.method public final zzu()J
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->durationMillis:J

    return-wide v0
.end method

.method public final zzv()Ljava/lang/String;
    .locals 11

    .line 77
    nop

    .line 78
    iget-object v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzgf:Ljava/lang/String;

    .line 79
    nop

    .line 80
    iget v1, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzgi:I

    .line 81
    nop

    .line 82
    nop

    .line 83
    iget-object v2, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzgj:Ljava/util/List;

    .line 84
    const-string v3, ""

    if-nez v2, :cond_0

    .line 85
    move-object v2, v3

    goto :goto_0

    .line 86
    :cond_0
    nop

    .line 87
    nop

    .line 88
    const-string v4, ","

    invoke-static {v4, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 89
    :goto_0
    iget v4, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzgm:I

    .line 90
    nop

    .line 91
    nop

    .line 92
    iget-object v5, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzgg:Ljava/lang/String;

    .line 93
    if-nez v5, :cond_1

    move-object v5, v3

    goto :goto_1

    .line 94
    :cond_1
    nop

    .line 95
    :goto_1
    nop

    .line 96
    nop

    .line 97
    iget-object v6, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzgn:Ljava/lang/String;

    .line 98
    if-nez v6, :cond_2

    move-object v6, v3

    goto :goto_2

    .line 99
    :cond_2
    nop

    .line 100
    :goto_2
    nop

    .line 101
    iget v7, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzgo:F

    .line 102
    nop

    .line 103
    nop

    .line 104
    iget-object v8, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzgh:Ljava/lang/String;

    .line 105
    if-nez v8, :cond_3

    goto :goto_3

    .line 106
    :cond_3
    move-object v3, v8

    .line 107
    :goto_3
    iget-boolean v8, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzgq:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x33

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "\t"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    return-object v0
.end method
