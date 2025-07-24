.class public Lj$/util/concurrent/ConcurrentHashMap;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;
.implements Ljava/io/Serializable;
.implements Lj$/util/concurrent/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;",
        "Lj$/util/concurrent/t;"
    }
.end annotation


# static fields
.field private static final g:I

.field private static final h:I

.field static final i:I

.field private static final j:Lsun/misc/Unsafe;

.field private static final k:J

.field private static final l:J

.field private static final m:J

.field private static final n:J

.field private static final o:J

.field private static final p:J

.field private static final q:I

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x6499de129d87293dL


# instance fields
.field volatile transient a:[Lj$/util/concurrent/k;

.field private volatile transient b:[Lj$/util/concurrent/k;

.field private volatile transient baseCount:J

.field private volatile transient c:[Lj$/util/concurrent/c;

.field private volatile transient cellsBusy:I

.field private transient d:Lj$/util/concurrent/h;

.field private transient e:Lj$/util/concurrent/r;

.field private transient f:Lj$/util/concurrent/h;

.field private volatile transient sizeCtl:I

.field private volatile transient transferIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x10

    rsub-int/lit8 v1, v0, 0x20

    const/4 v2, 0x1

    shl-int v1, v2, v1

    sub-int/2addr v1, v2

    sput v1, Lj$/util/concurrent/ConcurrentHashMap;->g:I

    rsub-int/lit8 v0, v0, 0x20

    sput v0, Lj$/util/concurrent/ConcurrentHashMap;->h:I

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lj$/util/concurrent/ConcurrentHashMap;->i:I

    new-instance v0, Ljava/io/ObjectStreamField;

    const-string v1, "segments"

    const-class v3, [Lj$/util/concurrent/m;

    invoke-direct {v0, v1, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    new-instance v1, Ljava/io/ObjectStreamField;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v4, "segmentMask"

    invoke-direct {v1, v4, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    new-instance v4, Ljava/io/ObjectStreamField;

    const-string v5, "segmentShift"

    invoke-direct {v4, v5, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/io/ObjectStreamField;

    const/4 v5, 0x0

    aput-object v0, v3, v5

    aput-object v1, v3, v2

    const/4 v0, 0x2

    aput-object v4, v3, v0

    sput-object v3, Lj$/util/concurrent/ConcurrentHashMap;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    :try_start_0
    invoke-static {}, Lj$/util/concurrent/u;->c()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lj$/util/concurrent/ConcurrentHashMap;->j:Lsun/misc/Unsafe;

    const-class v1, Lj$/util/concurrent/ConcurrentHashMap;

    const-string v3, "sizeCtl"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v0, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    sput-wide v3, Lj$/util/concurrent/ConcurrentHashMap;->k:J

    const-string v3, "transferIndex"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v0, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    sput-wide v3, Lj$/util/concurrent/ConcurrentHashMap;->l:J

    const-string v3, "baseCount"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v0, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    sput-wide v3, Lj$/util/concurrent/ConcurrentHashMap;->m:J

    const-string v3, "cellsBusy"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    sput-wide v3, Lj$/util/concurrent/ConcurrentHashMap;->n:J

    const-class v1, Lj$/util/concurrent/c;

    const-string v3, "value"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    sput-wide v3, Lj$/util/concurrent/ConcurrentHashMap;->o:J

    const-class v1, [Lj$/util/concurrent/k;

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v3

    int-to-long v3, v3

    sput-wide v3, Lj$/util/concurrent/ConcurrentHashMap;->p:J

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    sput v0, Lj$/util/concurrent/ConcurrentHashMap;->q:I

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/Error;

    const-string v1, "data type scale not a power of two"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    if-ltz p1, :cond_1

    const/high16 v0, 0x20000000

    if-lt p1, v0, :cond_0

    const/high16 p1, 0x40000000    # 2.0f

    goto :goto_0

    :cond_0
    ushr-int/lit8 v0, p1, 0x1

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lj$/util/concurrent/ConcurrentHashMap;->m(I)I

    move-result p1

    :goto_0
    iput p1, p0, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public constructor <init>(IFI)V
    .locals 2

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_2

    if-ltz p1, :cond_2

    if-lez p3, :cond_2

    if-ge p1, p3, :cond_0

    move p1, p3

    :cond_0
    int-to-long v0, p1

    long-to-float p1, v0

    div-float/2addr p1, p2

    float-to-double p1, p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr p1, v0

    double-to-long p1, p1

    const-wide/32 v0, 0x40000000

    cmp-long p3, p1, v0

    if-ltz p3, :cond_1

    const/high16 p1, 0x40000000    # 2.0f

    goto :goto_0

    :cond_1
    long-to-int p2, p1

    invoke-static {p2}, Lj$/util/concurrent/ConcurrentHashMap;->m(I)I

    move-result p1

    :goto_0
    iput p1, p0, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private final a(JI)V
    .locals 11

    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->c:[Lj$/util/concurrent/c;

    if-nez v0, :cond_0

    sget-object v1, Lj$/util/concurrent/ConcurrentHashMap;->j:Lsun/misc/Unsafe;

    sget-wide v3, Lj$/util/concurrent/ConcurrentHashMap;->m:J

    iget-wide v5, p0, Lj$/util/concurrent/ConcurrentHashMap;->baseCount:J

    add-long v9, v5, p1

    move-object v2, p0

    move-wide v7, v9

    invoke-virtual/range {v1 .. v8}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    const/4 v1, 0x1

    if-eqz v0, :cond_8

    array-length v2, v0

    sub-int/2addr v2, v1

    if-ltz v2, :cond_8

    invoke-static {}, Lj$/util/concurrent/ThreadLocalRandom;->b()I

    move-result v3

    and-int/2addr v2, v3

    aget-object v4, v0, v2

    if-eqz v4, :cond_8

    sget-object v3, Lj$/util/concurrent/ConcurrentHashMap;->j:Lsun/misc/Unsafe;

    sget-wide v5, Lj$/util/concurrent/ConcurrentHashMap;->o:J

    iget-wide v7, v4, Lj$/util/concurrent/c;->value:J

    add-long v9, v7, p1

    invoke-virtual/range {v3 .. v10}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-nez v0, :cond_1

    move v1, v0

    goto :goto_3

    :cond_1
    if-gt p3, v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap;->k()J

    move-result-wide v9

    :cond_3
    if-ltz p3, :cond_7

    :goto_0
    iget v4, p0, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    int-to-long p1, v4

    cmp-long p3, v9, p1

    if-ltz p3, :cond_7

    iget-object p1, p0, Lj$/util/concurrent/ConcurrentHashMap;->a:[Lj$/util/concurrent/k;

    if-eqz p1, :cond_7

    array-length p2, p1

    const/high16 p3, 0x40000000    # 2.0f

    if-ge p2, p3, :cond_7

    .line 0
    invoke-static {p2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p2

    const p3, 0x8000

    or-int/2addr p2, p3

    .line 0
    sget p3, Lj$/util/concurrent/ConcurrentHashMap;->h:I

    if-gez v4, :cond_5

    ushr-int p3, v4, p3

    if-ne p3, p2, :cond_7

    add-int/lit8 p3, p2, 0x1

    if-eq v4, p3, :cond_7

    sget p3, Lj$/util/concurrent/ConcurrentHashMap;->g:I

    add-int/2addr p2, p3

    if-eq v4, p2, :cond_7

    iget-object p2, p0, Lj$/util/concurrent/ConcurrentHashMap;->b:[Lj$/util/concurrent/k;

    if-eqz p2, :cond_7

    iget p3, p0, Lj$/util/concurrent/ConcurrentHashMap;->transferIndex:I

    if-gtz p3, :cond_4

    goto :goto_2

    :cond_4
    sget-object v0, Lj$/util/concurrent/ConcurrentHashMap;->j:Lsun/misc/Unsafe;

    sget-wide v2, Lj$/util/concurrent/ConcurrentHashMap;->k:J

    add-int/lit8 v5, v4, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-direct {p0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->n([Lj$/util/concurrent/k;[Lj$/util/concurrent/k;)V

    goto :goto_1

    :cond_5
    sget-object v0, Lj$/util/concurrent/ConcurrentHashMap;->j:Lsun/misc/Unsafe;

    sget-wide v2, Lj$/util/concurrent/ConcurrentHashMap;->k:J

    shl-int/2addr p2, p3

    add-int/lit8 v5, p2, 0x2

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result p2

    if-eqz p2, :cond_6

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->n([Lj$/util/concurrent/k;[Lj$/util/concurrent/k;)V

    :cond_6
    :goto_1
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap;->k()J

    move-result-wide v9

    goto :goto_0

    :cond_7
    :goto_2
    return-void

    :cond_8
    :goto_3
    invoke-direct {p0, p1, p2, v1}, Lj$/util/concurrent/ConcurrentHashMap;->d(JZ)V

    return-void
.end method

.method static final b([Lj$/util/concurrent/k;ILj$/util/concurrent/k;)Z
    .locals 5

    .line 0
    sget-object v0, Lj$/util/concurrent/ConcurrentHashMap;->j:Lsun/misc/Unsafe;

    int-to-long v1, p1

    sget p1, Lj$/util/concurrent/ConcurrentHashMap;->q:I

    shl-long/2addr v1, p1

    sget-wide v3, Lj$/util/concurrent/ConcurrentHashMap;->p:J

    add-long/2addr v1, v3

    invoke-static {v0, p0, v1, v2, p2}, Lj$/com/android/tools/r8/a;->h(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static c(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 6

    instance-of v0, p0, Ljava/lang/Comparable;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-class v0, Ljava/lang/String;

    if-ne p0, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    aget-object v3, v0, v2

    instance-of v4, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_1

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v4

    const-class v5, Ljava/lang/Comparable;

    if-ne v4, v5, :cond_1

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    if-eqz v3, :cond_1

    array-length v4, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    aget-object v3, v3, v1

    if-ne v3, p0, :cond_1

    return-object p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private final d(JZ)V
    .locals 24

    move-object/from16 v9, p0

    move-wide/from16 v10, p1

    invoke-static {}, Lj$/util/concurrent/ThreadLocalRandom;->b()I

    move-result v0

    const/4 v12, 0x1

    if-nez v0, :cond_0

    invoke-static {}, Lj$/util/concurrent/ThreadLocalRandom;->f()V

    invoke-static {}, Lj$/util/concurrent/ThreadLocalRandom;->b()I

    move-result v0

    move v1, v0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    move/from16 v0, p3

    :goto_0
    const/4 v13, 0x0

    move v14, v1

    :goto_1
    const/4 v15, 0x0

    :cond_1
    :goto_2
    iget-object v7, v9, Lj$/util/concurrent/ConcurrentHashMap;->c:[Lj$/util/concurrent/c;

    if-eqz v7, :cond_c

    array-length v8, v7

    if-lez v8, :cond_c

    add-int/lit8 v1, v8, -0x1

    and-int/2addr v1, v14

    aget-object v1, v7, v1

    if-nez v1, :cond_4

    iget v1, v9, Lj$/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    if-nez v1, :cond_3

    new-instance v7, Lj$/util/concurrent/c;

    invoke-direct {v7, v10, v11}, Lj$/util/concurrent/c;-><init>(J)V

    iget v1, v9, Lj$/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    if-nez v1, :cond_3

    sget-object v1, Lj$/util/concurrent/ConcurrentHashMap;->j:Lsun/misc/Unsafe;

    sget-wide v3, Lj$/util/concurrent/ConcurrentHashMap;->n:J

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_3

    :try_start_0
    iget-object v1, v9, Lj$/util/concurrent/ConcurrentHashMap;->c:[Lj$/util/concurrent/c;

    if-eqz v1, :cond_2

    array-length v2, v1

    if-lez v2, :cond_2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v14

    aget-object v3, v1, v2

    if-nez v3, :cond_2

    aput-object v7, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_2
    const/4 v1, 0x0

    :goto_3
    iput v13, v9, Lj$/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    if-eqz v1, :cond_1

    goto/16 :goto_b

    :goto_4
    iput v13, v9, Lj$/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    throw v0

    :cond_3
    :goto_5
    const/4 v15, 0x0

    goto :goto_8

    :cond_4
    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_8

    :cond_5
    sget-object v2, Lj$/util/concurrent/ConcurrentHashMap;->j:Lsun/misc/Unsafe;

    sget-wide v18, Lj$/util/concurrent/ConcurrentHashMap;->o:J

    iget-wide v3, v1, Lj$/util/concurrent/c;->value:J

    add-long v22, v3, v10

    move-object/from16 v16, v2

    move-object/from16 v17, v1

    move-wide/from16 v20, v3

    invoke-virtual/range {v16 .. v23}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v1

    if-eqz v1, :cond_6

    goto/16 :goto_b

    :cond_6
    iget-object v1, v9, Lj$/util/concurrent/ConcurrentHashMap;->c:[Lj$/util/concurrent/c;

    if-ne v1, v7, :cond_3

    sget v1, Lj$/util/concurrent/ConcurrentHashMap;->i:I

    if-lt v8, v1, :cond_7

    goto :goto_5

    :cond_7
    if-nez v15, :cond_8

    const/4 v15, 0x1

    goto :goto_8

    :cond_8
    iget v1, v9, Lj$/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    if-nez v1, :cond_b

    sget-wide v3, Lj$/util/concurrent/ConcurrentHashMap;->n:J

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v2

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_b

    :try_start_1
    iget-object v1, v9, Lj$/util/concurrent/ConcurrentHashMap;->c:[Lj$/util/concurrent/c;

    if-ne v1, v7, :cond_a

    shl-int/lit8 v1, v8, 0x1

    new-array v1, v1, [Lj$/util/concurrent/c;

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v8, :cond_9

    aget-object v3, v7, v2

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_7

    :cond_9
    iput-object v1, v9, Lj$/util/concurrent/ConcurrentHashMap;->c:[Lj$/util/concurrent/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_a
    iput v13, v9, Lj$/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    goto/16 :goto_1

    :goto_7
    iput v13, v9, Lj$/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    throw v0

    :cond_b
    :goto_8
    invoke-static {v14}, Lj$/util/concurrent/ThreadLocalRandom;->a(I)I

    move-result v1

    move v14, v1

    goto/16 :goto_2

    :cond_c
    iget v1, v9, Lj$/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    if-nez v1, :cond_e

    iget-object v1, v9, Lj$/util/concurrent/ConcurrentHashMap;->c:[Lj$/util/concurrent/c;

    if-ne v1, v7, :cond_e

    sget-object v1, Lj$/util/concurrent/ConcurrentHashMap;->j:Lsun/misc/Unsafe;

    sget-wide v3, Lj$/util/concurrent/ConcurrentHashMap;->n:J

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_e

    :try_start_2
    iget-object v1, v9, Lj$/util/concurrent/ConcurrentHashMap;->c:[Lj$/util/concurrent/c;

    if-ne v1, v7, :cond_d

    const/4 v1, 0x2

    new-array v1, v1, [Lj$/util/concurrent/c;

    and-int/lit8 v2, v14, 0x1

    new-instance v3, Lj$/util/concurrent/c;

    invoke-direct {v3, v10, v11}, Lj$/util/concurrent/c;-><init>(J)V

    aput-object v3, v1, v2

    iput-object v1, v9, Lj$/util/concurrent/ConcurrentHashMap;->c:[Lj$/util/concurrent/c;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v1, 0x1

    goto :goto_9

    :catchall_2
    move-exception v0

    goto :goto_a

    :cond_d
    const/4 v1, 0x0

    :goto_9
    iput v13, v9, Lj$/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    if-eqz v1, :cond_1

    goto :goto_b

    :goto_a
    iput v13, v9, Lj$/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    throw v0

    :cond_e
    sget-object v1, Lj$/util/concurrent/ConcurrentHashMap;->j:Lsun/misc/Unsafe;

    sget-wide v3, Lj$/util/concurrent/ConcurrentHashMap;->m:J

    iget-wide v5, v9, Lj$/util/concurrent/ConcurrentHashMap;->baseCount:J

    add-long v7, v5, v10

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v8}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_b
    return-void
.end method

.method private final f()[Lj$/util/concurrent/k;
    .locals 8

    :cond_0
    :goto_0
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->a:[Lj$/util/concurrent/k;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_6

    :cond_1
    iget v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    if-gez v0, :cond_2

    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    :cond_2
    sget-object v2, Lj$/util/concurrent/ConcurrentHashMap;->j:Lsun/misc/Unsafe;

    sget-wide v4, Lj$/util/concurrent/ConcurrentHashMap;->k:J

    const/4 v7, -0x1

    move-object v3, p0

    move v6, v0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lj$/util/concurrent/ConcurrentHashMap;->a:[Lj$/util/concurrent/k;

    if-eqz v1, :cond_3

    array-length v2, v1

    if-nez v2, :cond_5

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_3
    :goto_1
    if-lez v0, :cond_4

    move v1, v0

    goto :goto_2

    :cond_4
    const/16 v1, 0x10

    :goto_2
    new-array v2, v1, [Lj$/util/concurrent/k;

    iput-object v2, p0, Lj$/util/concurrent/ConcurrentHashMap;->a:[Lj$/util/concurrent/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    ushr-int/lit8 v0, v1, 0x2

    sub-int v0, v1, v0

    move-object v1, v2

    :cond_5
    iput v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    move-object v0, v1

    :cond_6
    return-object v0

    :goto_3
    iput v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4
.end method

.method static final i([Lj$/util/concurrent/k;ILj$/util/concurrent/k;)V
    .locals 5

    sget-object v0, Lj$/util/concurrent/ConcurrentHashMap;->j:Lsun/misc/Unsafe;

    int-to-long v1, p1

    sget p1, Lj$/util/concurrent/ConcurrentHashMap;->q:I

    shl-long/2addr v1, p1

    sget-wide v3, Lj$/util/concurrent/ConcurrentHashMap;->p:J

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2, p2}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method static final j(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr p0, v0

    const v0, 0x7fffffff

    and-int/2addr p0, v0

    return p0
.end method

.method static final l([Lj$/util/concurrent/k;I)Lj$/util/concurrent/k;
    .locals 5

    sget-object v0, Lj$/util/concurrent/ConcurrentHashMap;->j:Lsun/misc/Unsafe;

    int-to-long v1, p1

    sget p1, Lj$/util/concurrent/ConcurrentHashMap;->q:I

    shl-long/2addr v1, p1

    sget-wide v3, Lj$/util/concurrent/ConcurrentHashMap;->p:J

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj$/util/concurrent/k;

    return-object p0
.end method

.method private static final m(I)I
    .locals 2

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    ushr-int/lit8 v1, p0, 0x1

    or-int/2addr p0, v1

    ushr-int/lit8 v1, p0, 0x2

    or-int/2addr p0, v1

    ushr-int/lit8 v1, p0, 0x4

    or-int/2addr p0, v1

    ushr-int/lit8 v1, p0, 0x8

    or-int/2addr p0, v1

    ushr-int/lit8 v1, p0, 0x10

    or-int/2addr p0, v1

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    if-lt p0, v1, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    :cond_1
    add-int/2addr v0, p0

    :goto_0
    return v0
.end method

.method private final n([Lj$/util/concurrent/k;[Lj$/util/concurrent/k;)V
    .locals 29

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    array-length v8, v0

    sget v1, Lj$/util/concurrent/ConcurrentHashMap;->i:I

    const/4 v9, 0x1

    if-le v1, v9, :cond_0

    ushr-int/lit8 v2, v8, 0x3

    div-int/2addr v2, v1

    goto :goto_0

    :cond_0
    move v2, v8

    :goto_0
    const/16 v1, 0x10

    if-ge v2, v1, :cond_1

    const/16 v10, 0x10

    goto :goto_1

    :cond_1
    move v10, v2

    :goto_1
    if-nez p2, :cond_2

    shl-int/lit8 v1, v8, 0x1

    :try_start_0
    new-array v1, v1, [Lj$/util/concurrent/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, v7, Lj$/util/concurrent/ConcurrentHashMap;->b:[Lj$/util/concurrent/k;

    iput v8, v7, Lj$/util/concurrent/ConcurrentHashMap;->transferIndex:I

    move-object v11, v1

    goto :goto_2

    :catchall_0
    const v0, 0x7fffffff

    iput v0, v7, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    return-void

    :cond_2
    move-object/from16 v11, p2

    :goto_2
    array-length v12, v11

    new-instance v13, Lj$/util/concurrent/f;

    invoke-direct {v13, v11}, Lj$/util/concurrent/f;-><init>([Lj$/util/concurrent/k;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    :goto_3
    const/4 v1, -0x1

    if-eqz v15, :cond_8

    add-int/lit8 v6, v6, -0x1

    if-ge v6, v5, :cond_3

    if-eqz v16, :cond_4

    :cond_3
    move/from16 v17, v5

    move/from16 v18, v6

    goto :goto_6

    :cond_4
    iget v3, v7, Lj$/util/concurrent/ConcurrentHashMap;->transferIndex:I

    if-gtz v3, :cond_5

    const/4 v6, -0x1

    :goto_4
    const/4 v15, 0x0

    goto :goto_3

    :cond_5
    sget-object v1, Lj$/util/concurrent/ConcurrentHashMap;->j:Lsun/misc/Unsafe;

    sget-wide v17, Lj$/util/concurrent/ConcurrentHashMap;->l:J

    if-le v3, v10, :cond_6

    sub-int v2, v3, v10

    move/from16 v19, v2

    goto :goto_5

    :cond_6
    const/16 v19, 0x0

    :goto_5
    move-object/from16 v2, p0

    move/from16 v20, v3

    move-wide/from16 v3, v17

    move/from16 v17, v5

    move/from16 v5, v20

    move/from16 v18, v6

    move/from16 v6, v19

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_7

    add-int/lit8 v3, v20, -0x1

    move v6, v3

    move/from16 v5, v19

    goto :goto_4

    :cond_7
    move/from16 v5, v17

    move/from16 v6, v18

    goto :goto_3

    :goto_6
    move/from16 v5, v17

    move/from16 v6, v18

    goto :goto_4

    :cond_8
    move/from16 v17, v5

    const/4 v2, 0x0

    if-ltz v6, :cond_9

    if-ge v6, v8, :cond_9

    add-int v3, v6, v8

    if-lt v3, v12, :cond_a

    :cond_9
    move/from16 v19, v10

    move/from16 v20, v12

    move-object v7, v13

    goto/16 :goto_16

    :cond_a
    invoke-static {v0, v6}, Lj$/util/concurrent/ConcurrentHashMap;->l([Lj$/util/concurrent/k;I)Lj$/util/concurrent/k;

    move-result-object v4

    if-nez v4, :cond_b

    invoke-static {v0, v6, v13}, Lj$/util/concurrent/ConcurrentHashMap;->b([Lj$/util/concurrent/k;ILj$/util/concurrent/k;)Z

    move-result v1

    move v15, v1

    move-object v9, v7

    move/from16 v19, v10

    move/from16 v20, v12

    move-object v7, v13

    :goto_7
    const/4 v10, 0x1

    goto/16 :goto_17

    :cond_b
    iget v5, v4, Lj$/util/concurrent/k;->a:I

    if-ne v5, v1, :cond_c

    move-object v9, v7

    move/from16 v19, v10

    move/from16 v20, v12

    move-object v7, v13

    const/4 v10, 0x1

    const/4 v15, 0x1

    goto/16 :goto_17

    :cond_c
    monitor-enter v4

    :try_start_1
    invoke-static {v0, v6}, Lj$/util/concurrent/ConcurrentHashMap;->l([Lj$/util/concurrent/k;I)Lj$/util/concurrent/k;

    move-result-object v1

    if-ne v1, v4, :cond_1c

    if-ltz v5, :cond_12

    and-int v1, v5, v8

    iget-object v5, v4, Lj$/util/concurrent/k;->d:Lj$/util/concurrent/k;

    move-object v15, v4

    :goto_8
    if-eqz v5, :cond_e

    iget v14, v5, Lj$/util/concurrent/k;->a:I

    and-int/2addr v14, v8

    if-eq v14, v1, :cond_d

    move-object v15, v5

    move v1, v14

    :cond_d
    iget-object v5, v5, Lj$/util/concurrent/k;->d:Lj$/util/concurrent/k;

    goto :goto_8

    :catchall_1
    move-exception v0

    goto/16 :goto_15

    :cond_e
    if-nez v1, :cond_f

    move-object v1, v2

    move-object v2, v15

    goto :goto_9

    :cond_f
    move-object v1, v15

    :goto_9
    move-object v5, v4

    :goto_a
    if-eq v5, v15, :cond_11

    iget v14, v5, Lj$/util/concurrent/k;->a:I

    iget-object v9, v5, Lj$/util/concurrent/k;->b:Ljava/lang/Object;

    move/from16 v19, v10

    iget-object v10, v5, Lj$/util/concurrent/k;->c:Ljava/lang/Object;

    and-int v20, v14, v8

    if-nez v20, :cond_10

    move/from16 v20, v12

    new-instance v12, Lj$/util/concurrent/k;

    invoke-direct {v12, v14, v9, v10, v2}, Lj$/util/concurrent/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/k;)V

    move-object v2, v12

    goto :goto_b

    :cond_10
    move/from16 v20, v12

    new-instance v12, Lj$/util/concurrent/k;

    invoke-direct {v12, v14, v9, v10, v1}, Lj$/util/concurrent/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/k;)V

    move-object v1, v12

    :goto_b
    iget-object v5, v5, Lj$/util/concurrent/k;->d:Lj$/util/concurrent/k;

    move/from16 v10, v19

    move/from16 v12, v20

    const/4 v9, 0x1

    goto :goto_a

    :cond_11
    move/from16 v19, v10

    move/from16 v20, v12

    invoke-static {v11, v6, v2}, Lj$/util/concurrent/ConcurrentHashMap;->i([Lj$/util/concurrent/k;ILj$/util/concurrent/k;)V

    invoke-static {v11, v3, v1}, Lj$/util/concurrent/ConcurrentHashMap;->i([Lj$/util/concurrent/k;ILj$/util/concurrent/k;)V

    invoke-static {v0, v6, v13}, Lj$/util/concurrent/ConcurrentHashMap;->i([Lj$/util/concurrent/k;ILj$/util/concurrent/k;)V

    move-object v7, v13

    :goto_c
    const/4 v15, 0x1

    goto/16 :goto_14

    :cond_12
    move/from16 v19, v10

    move/from16 v20, v12

    instance-of v1, v4, Lj$/util/concurrent/p;

    if-eqz v1, :cond_1b

    move-object v1, v4

    check-cast v1, Lj$/util/concurrent/p;

    iget-object v5, v1, Lj$/util/concurrent/p;->f:Lj$/util/concurrent/q;

    move-object v9, v2

    move-object v10, v9

    move-object v12, v5

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v5, v10

    :goto_d
    if-eqz v12, :cond_16

    move-object/from16 v27, v1

    iget v1, v12, Lj$/util/concurrent/k;->a:I

    new-instance v7, Lj$/util/concurrent/q;

    iget-object v0, v12, Lj$/util/concurrent/k;->b:Ljava/lang/Object;

    move-object/from16 v28, v13

    iget-object v13, v12, Lj$/util/concurrent/k;->c:Ljava/lang/Object;

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v21, v7

    move/from16 v22, v1

    move-object/from16 v23, v0

    move-object/from16 v24, v13

    invoke-direct/range {v21 .. v26}, Lj$/util/concurrent/q;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/q;Lj$/util/concurrent/q;)V

    and-int v0, v1, v8

    if-nez v0, :cond_14

    iput-object v10, v7, Lj$/util/concurrent/q;->h:Lj$/util/concurrent/q;

    if-nez v10, :cond_13

    move-object v2, v7

    goto :goto_e

    :cond_13
    iput-object v7, v10, Lj$/util/concurrent/k;->d:Lj$/util/concurrent/k;

    :goto_e
    add-int/lit8 v14, v14, 0x1

    move-object v10, v7

    goto :goto_10

    :cond_14
    iput-object v9, v7, Lj$/util/concurrent/q;->h:Lj$/util/concurrent/q;

    if-nez v9, :cond_15

    move-object v5, v7

    goto :goto_f

    :cond_15
    iput-object v7, v9, Lj$/util/concurrent/k;->d:Lj$/util/concurrent/k;

    :goto_f
    add-int/lit8 v15, v15, 0x1

    move-object v9, v7

    :goto_10
    iget-object v12, v12, Lj$/util/concurrent/k;->d:Lj$/util/concurrent/k;

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move-object/from16 v13, v28

    goto :goto_d

    :cond_16
    move-object/from16 v27, v1

    move-object/from16 v28, v13

    const/4 v0, 0x6

    if-gt v14, v0, :cond_17

    invoke-static {v2}, Lj$/util/concurrent/ConcurrentHashMap;->q(Lj$/util/concurrent/q;)Lj$/util/concurrent/k;

    move-result-object v1

    goto :goto_11

    :cond_17
    if-eqz v15, :cond_18

    new-instance v1, Lj$/util/concurrent/p;

    invoke-direct {v1, v2}, Lj$/util/concurrent/p;-><init>(Lj$/util/concurrent/q;)V

    goto :goto_11

    :cond_18
    move-object/from16 v1, v27

    :goto_11
    if-gt v15, v0, :cond_19

    invoke-static {v5}, Lj$/util/concurrent/ConcurrentHashMap;->q(Lj$/util/concurrent/q;)Lj$/util/concurrent/k;

    move-result-object v0

    goto :goto_12

    :cond_19
    if-eqz v14, :cond_1a

    new-instance v0, Lj$/util/concurrent/p;

    invoke-direct {v0, v5}, Lj$/util/concurrent/p;-><init>(Lj$/util/concurrent/q;)V

    goto :goto_12

    :cond_1a
    move-object/from16 v0, v27

    :goto_12
    invoke-static {v11, v6, v1}, Lj$/util/concurrent/ConcurrentHashMap;->i([Lj$/util/concurrent/k;ILj$/util/concurrent/k;)V

    invoke-static {v11, v3, v0}, Lj$/util/concurrent/ConcurrentHashMap;->i([Lj$/util/concurrent/k;ILj$/util/concurrent/k;)V

    move-object/from16 v0, p1

    move-object/from16 v7, v28

    invoke-static {v0, v6, v7}, Lj$/util/concurrent/ConcurrentHashMap;->i([Lj$/util/concurrent/k;ILj$/util/concurrent/k;)V

    goto/16 :goto_c

    :cond_1b
    :goto_13
    move-object v7, v13

    goto :goto_14

    :cond_1c
    move/from16 v19, v10

    move/from16 v20, v12

    goto :goto_13

    :goto_14
    monitor-exit v4

    move-object/from16 v9, p0

    goto/16 :goto_7

    :goto_15
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :goto_16
    move-object/from16 v9, p0

    if-eqz v16, :cond_1d

    iput-object v2, v9, Lj$/util/concurrent/ConcurrentHashMap;->b:[Lj$/util/concurrent/k;

    iput-object v11, v9, Lj$/util/concurrent/ConcurrentHashMap;->a:[Lj$/util/concurrent/k;

    shl-int/lit8 v0, v8, 0x1

    const/4 v10, 0x1

    ushr-int/lit8 v1, v8, 0x1

    sub-int/2addr v0, v1

    iput v0, v9, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    return-void

    :cond_1d
    const/4 v10, 0x1

    sget-object v1, Lj$/util/concurrent/ConcurrentHashMap;->j:Lsun/misc/Unsafe;

    sget-wide v3, Lj$/util/concurrent/ConcurrentHashMap;->k:J

    iget v12, v9, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    add-int/lit8 v13, v12, -0x1

    move-object/from16 v2, p0

    move v5, v12

    move v14, v6

    move v6, v13

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_1f

    add-int/lit8 v12, v12, -0x2

    .line 0
    invoke-static {v8}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    const v2, 0x8000

    or-int/2addr v1, v2

    .line 0
    sget v2, Lj$/util/concurrent/ConcurrentHashMap;->h:I

    shl-int/2addr v1, v2

    if-eq v12, v1, :cond_1e

    return-void

    :cond_1e
    move v6, v8

    const/4 v15, 0x1

    const/16 v16, 0x1

    goto :goto_17

    :cond_1f
    move v6, v14

    :goto_17
    move-object v13, v7

    move-object v7, v9

    move/from16 v5, v17

    move/from16 v10, v19

    move/from16 v12, v20

    const/4 v9, 0x1

    goto/16 :goto_3
.end method

.method private final o([Lj$/util/concurrent/k;I)V
    .locals 11

    array-length v0, p1

    const/16 v1, 0x40

    if-ge v0, v1, :cond_0

    shl-int/lit8 p1, v0, 0x1

    invoke-direct {p0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->p(I)V

    goto :goto_3

    :cond_0
    invoke-static {p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->l([Lj$/util/concurrent/k;I)Lj$/util/concurrent/k;

    move-result-object v0

    if-eqz v0, :cond_4

    iget v1, v0, Lj$/util/concurrent/k;->a:I

    if-ltz v1, :cond_4

    monitor-enter v0

    :try_start_0
    invoke-static {p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->l([Lj$/util/concurrent/k;I)Lj$/util/concurrent/k;

    move-result-object v1

    if-ne v1, v0, :cond_3

    const/4 v1, 0x0

    move-object v3, v0

    move-object v2, v1

    :goto_0
    if-eqz v3, :cond_2

    new-instance v10, Lj$/util/concurrent/q;

    iget v5, v3, Lj$/util/concurrent/k;->a:I

    iget-object v6, v3, Lj$/util/concurrent/k;->b:Ljava/lang/Object;

    iget-object v7, v3, Lj$/util/concurrent/k;->c:Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lj$/util/concurrent/q;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/q;Lj$/util/concurrent/q;)V

    iput-object v2, v10, Lj$/util/concurrent/q;->h:Lj$/util/concurrent/q;

    if-nez v2, :cond_1

    move-object v1, v10

    goto :goto_1

    :cond_1
    iput-object v10, v2, Lj$/util/concurrent/k;->d:Lj$/util/concurrent/k;

    :goto_1
    iget-object v3, v3, Lj$/util/concurrent/k;->d:Lj$/util/concurrent/k;

    move-object v2, v10

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    new-instance v2, Lj$/util/concurrent/p;

    invoke-direct {v2, v1}, Lj$/util/concurrent/p;-><init>(Lj$/util/concurrent/q;)V

    invoke-static {p1, p2, v2}, Lj$/util/concurrent/ConcurrentHashMap;->i([Lj$/util/concurrent/k;ILj$/util/concurrent/k;)V

    :cond_3
    monitor-exit v0

    goto :goto_3

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    :goto_3
    return-void
.end method

.method private final p(I)V
    .locals 10

    const/high16 v0, 0x20000000

    const/high16 v1, 0x40000000    # 2.0f

    if-lt p1, v0, :cond_0

    const/high16 p1, 0x40000000    # 2.0f

    goto :goto_0

    :cond_0
    ushr-int/lit8 v0, p1, 0x1

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lj$/util/concurrent/ConcurrentHashMap;->m(I)I

    move-result p1

    :cond_1
    :goto_0
    iget v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    if-ltz v0, :cond_9

    iget-object v8, p0, Lj$/util/concurrent/ConcurrentHashMap;->a:[Lj$/util/concurrent/k;

    if-eqz v8, :cond_6

    array-length v2, v8

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    if-le p1, v0, :cond_9

    if-lt v2, v1, :cond_3

    goto/16 :goto_5

    :cond_3
    iget-object v3, p0, Lj$/util/concurrent/ConcurrentHashMap;->a:[Lj$/util/concurrent/k;

    if-ne v8, v3, :cond_1

    .line 0
    invoke-static {v2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v2

    const v3, 0x8000

    or-int/2addr v2, v3

    .line 0
    sget v3, Lj$/util/concurrent/ConcurrentHashMap;->h:I

    if-gez v0, :cond_5

    ushr-int v3, v0, v3

    if-ne v3, v2, :cond_9

    add-int/lit8 v3, v2, 0x1

    if-eq v0, v3, :cond_9

    sget v3, Lj$/util/concurrent/ConcurrentHashMap;->g:I

    add-int/2addr v2, v3

    if-eq v0, v2, :cond_9

    iget-object v9, p0, Lj$/util/concurrent/ConcurrentHashMap;->b:[Lj$/util/concurrent/k;

    if-eqz v9, :cond_9

    iget v2, p0, Lj$/util/concurrent/ConcurrentHashMap;->transferIndex:I

    if-gtz v2, :cond_4

    goto :goto_5

    :cond_4
    sget-object v2, Lj$/util/concurrent/ConcurrentHashMap;->j:Lsun/misc/Unsafe;

    sget-wide v4, Lj$/util/concurrent/ConcurrentHashMap;->k:J

    add-int/lit8 v7, v0, 0x1

    move-object v3, p0

    move v6, v0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v8, v9}, Lj$/util/concurrent/ConcurrentHashMap;->n([Lj$/util/concurrent/k;[Lj$/util/concurrent/k;)V

    goto :goto_0

    :cond_5
    sget-object v4, Lj$/util/concurrent/ConcurrentHashMap;->j:Lsun/misc/Unsafe;

    sget-wide v5, Lj$/util/concurrent/ConcurrentHashMap;->k:J

    shl-int/2addr v2, v3

    add-int/lit8 v7, v2, 0x2

    move-object v2, v4

    move-object v3, p0

    move-wide v4, v5

    move v6, v0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v8, v0}, Lj$/util/concurrent/ConcurrentHashMap;->n([Lj$/util/concurrent/k;[Lj$/util/concurrent/k;)V

    goto :goto_0

    :cond_6
    :goto_1
    if-le v0, p1, :cond_7

    move v9, v0

    goto :goto_2

    :cond_7
    move v9, p1

    :goto_2
    sget-object v2, Lj$/util/concurrent/ConcurrentHashMap;->j:Lsun/misc/Unsafe;

    sget-wide v4, Lj$/util/concurrent/ConcurrentHashMap;->k:J

    const/4 v7, -0x1

    move-object v3, p0

    move v6, v0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lj$/util/concurrent/ConcurrentHashMap;->a:[Lj$/util/concurrent/k;

    if-ne v2, v8, :cond_8

    new-array v2, v9, [Lj$/util/concurrent/k;

    iput-object v2, p0, Lj$/util/concurrent/ConcurrentHashMap;->a:[Lj$/util/concurrent/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    ushr-int/lit8 v0, v9, 0x2

    sub-int v0, v9, v0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_8
    :goto_3
    iput v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    goto/16 :goto_0

    :goto_4
    iput v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    throw p1

    :cond_9
    :goto_5
    return-void
.end method

.method static q(Lj$/util/concurrent/q;)Lj$/util/concurrent/k;
    .locals 7

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    :goto_0
    if-eqz p0, :cond_1

    .line 0
    new-instance v3, Lj$/util/concurrent/k;

    iget v4, p0, Lj$/util/concurrent/k;->a:I

    iget-object v5, p0, Lj$/util/concurrent/k;->b:Ljava/lang/Object;

    iget-object v6, p0, Lj$/util/concurrent/k;->c:Ljava/lang/Object;

    invoke-direct {v3, v4, v5, v6, v0}, Lj$/util/concurrent/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/k;)V

    if-nez v2, :cond_0

    move-object v1, v3

    goto :goto_1

    :cond_0
    iput-object v3, v2, Lj$/util/concurrent/k;->d:Lj$/util/concurrent/k;

    :goto_1
    iget-object p0, p0, Lj$/util/concurrent/k;->d:Lj$/util/concurrent/k;

    move-object v2, v3

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 24

    move-object/from16 v0, p0

    const/4 v1, -0x1

    iput v1, v0, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    const-wide/16 v1, 0x0

    move-wide v4, v1

    const/4 v6, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v8

    const-wide/16 v9, 0x1

    if-eqz v7, :cond_0

    if-eqz v8, :cond_0

    new-instance v11, Lj$/util/concurrent/k;

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v12

    invoke-static {v12}, Lj$/util/concurrent/ConcurrentHashMap;->j(I)I

    move-result v12

    invoke-direct {v11, v12, v7, v8, v6}, Lj$/util/concurrent/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/k;)V

    add-long/2addr v4, v9

    move-object v6, v11

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    cmp-long v8, v4, v1

    if-nez v8, :cond_1

    iput v7, v0, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    goto/16 :goto_9

    :cond_1
    const-wide/32 v11, 0x20000000

    const/4 v8, 0x1

    cmp-long v13, v4, v11

    if-ltz v13, :cond_2

    const/high16 v4, 0x40000000    # 2.0f

    goto :goto_1

    :cond_2
    long-to-int v5, v4

    ushr-int/lit8 v4, v5, 0x1

    add-int/2addr v5, v4

    add-int/2addr v5, v8

    invoke-static {v5}, Lj$/util/concurrent/ConcurrentHashMap;->m(I)I

    move-result v4

    :goto_1
    new-array v5, v4, [Lj$/util/concurrent/k;

    add-int/lit8 v11, v4, -0x1

    :goto_2
    if-eqz v6, :cond_d

    iget-object v12, v6, Lj$/util/concurrent/k;->d:Lj$/util/concurrent/k;

    iget v13, v6, Lj$/util/concurrent/k;->a:I

    and-int v14, v13, v11

    invoke-static {v5, v14}, Lj$/util/concurrent/ConcurrentHashMap;->l([Lj$/util/concurrent/k;I)Lj$/util/concurrent/k;

    move-result-object v15

    if-nez v15, :cond_3

    const/4 v3, 0x1

    goto/16 :goto_8

    :cond_3
    iget-object v3, v6, Lj$/util/concurrent/k;->b:Ljava/lang/Object;

    iget v7, v15, Lj$/util/concurrent/k;->a:I

    if-gez v7, :cond_5

    move-object v7, v15

    check-cast v7, Lj$/util/concurrent/p;

    iget-object v8, v6, Lj$/util/concurrent/k;->c:Ljava/lang/Object;

    invoke-virtual {v7, v13, v3, v8}, Lj$/util/concurrent/p;->f(ILjava/lang/Object;Ljava/lang/Object;)Lj$/util/concurrent/q;

    move-result-object v3

    if-nez v3, :cond_4

    add-long/2addr v1, v9

    :cond_4
    :goto_3
    const/4 v3, 0x0

    goto/16 :goto_8

    :cond_5
    move-object v7, v15

    const/4 v8, 0x0

    :goto_4
    if-eqz v7, :cond_8

    iget v9, v7, Lj$/util/concurrent/k;->a:I

    if-ne v9, v13, :cond_7

    iget-object v9, v7, Lj$/util/concurrent/k;->b:Ljava/lang/Object;

    if-eq v9, v3, :cond_6

    if-eqz v9, :cond_7

    invoke-virtual {v3, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_6
    const/4 v3, 0x0

    goto :goto_5

    :cond_7
    add-int/lit8 v8, v8, 0x1

    iget-object v7, v7, Lj$/util/concurrent/k;->d:Lj$/util/concurrent/k;

    const-wide/16 v9, 0x1

    goto :goto_4

    :cond_8
    const/4 v3, 0x1

    :goto_5
    if-eqz v3, :cond_b

    const/16 v7, 0x8

    if-lt v8, v7, :cond_b

    const-wide/16 v7, 0x1

    add-long/2addr v1, v7

    iput-object v15, v6, Lj$/util/concurrent/k;->d:Lj$/util/concurrent/k;

    move-object v3, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_6
    if-eqz v3, :cond_a

    new-instance v9, Lj$/util/concurrent/q;

    iget v10, v3, Lj$/util/concurrent/k;->a:I

    iget-object v13, v3, Lj$/util/concurrent/k;->b:Ljava/lang/Object;

    move-wide/from16 v22, v1

    iget-object v1, v3, Lj$/util/concurrent/k;->c:Ljava/lang/Object;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v9

    move/from16 v17, v10

    move-object/from16 v18, v13

    move-object/from16 v19, v1

    invoke-direct/range {v16 .. v21}, Lj$/util/concurrent/q;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/q;Lj$/util/concurrent/q;)V

    iput-object v8, v9, Lj$/util/concurrent/q;->h:Lj$/util/concurrent/q;

    if-nez v8, :cond_9

    move-object v7, v9

    goto :goto_7

    :cond_9
    iput-object v9, v8, Lj$/util/concurrent/k;->d:Lj$/util/concurrent/k;

    :goto_7
    iget-object v3, v3, Lj$/util/concurrent/k;->d:Lj$/util/concurrent/k;

    move-object v8, v9

    move-wide/from16 v1, v22

    goto :goto_6

    :cond_a
    move-wide/from16 v22, v1

    new-instance v1, Lj$/util/concurrent/p;

    invoke-direct {v1, v7}, Lj$/util/concurrent/p;-><init>(Lj$/util/concurrent/q;)V

    invoke-static {v5, v14, v1}, Lj$/util/concurrent/ConcurrentHashMap;->i([Lj$/util/concurrent/k;ILj$/util/concurrent/k;)V

    move-wide/from16 v1, v22

    goto :goto_3

    :cond_b
    :goto_8
    const-wide/16 v7, 0x1

    if-eqz v3, :cond_c

    add-long/2addr v1, v7

    iput-object v15, v6, Lj$/util/concurrent/k;->d:Lj$/util/concurrent/k;

    invoke-static {v5, v14, v6}, Lj$/util/concurrent/ConcurrentHashMap;->i([Lj$/util/concurrent/k;ILj$/util/concurrent/k;)V

    :cond_c
    move-wide v9, v7

    move-object v6, v12

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto/16 :goto_2

    :cond_d
    iput-object v5, v0, Lj$/util/concurrent/ConcurrentHashMap;->a:[Lj$/util/concurrent/k;

    ushr-int/lit8 v3, v4, 0x2

    sub-int/2addr v4, v3

    iput v4, v0, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    iput-wide v1, v0, Lj$/util/concurrent/ConcurrentHashMap;->baseCount:J

    :goto_9
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x10

    if-ge v2, v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    shl-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    rsub-int/lit8 v3, v3, 0x20

    sub-int/2addr v2, v1

    new-array v1, v4, [Lj$/util/concurrent/m;

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    new-instance v6, Lj$/util/concurrent/m;

    invoke-direct {v6}, Lj$/util/concurrent/m;-><init>()V

    aput-object v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v4

    const-string v5, "segments"

    invoke-virtual {v4, v5, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v1

    const-string v4, "segmentShift"

    invoke-virtual {v1, v4, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v1

    const-string v3, "segmentMask"

    invoke-virtual {v1, v3, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    iget-object v1, p0, Lj$/util/concurrent/ConcurrentHashMap;->a:[Lj$/util/concurrent/k;

    if-eqz v1, :cond_2

    new-instance v2, Lj$/util/concurrent/o;

    array-length v3, v1

    array-length v4, v1

    invoke-direct {v2, v1, v3, v0, v4}, Lj$/util/concurrent/o;-><init>([Lj$/util/concurrent/k;III)V

    :goto_2
    invoke-virtual {v2}, Lj$/util/concurrent/o;->b()Lj$/util/concurrent/k;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, v0, Lj$/util/concurrent/k;->b:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, v0, Lj$/util/concurrent/k;->c:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 12

    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->a:[Lj$/util/concurrent/k;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v5, v1

    :goto_0
    const/4 v4, 0x0

    :goto_1
    const/4 v7, -0x1

    if-eqz v0, :cond_6

    array-length v8, v0

    if-ge v4, v8, :cond_6

    invoke-static {v0, v4}, Lj$/util/concurrent/ConcurrentHashMap;->l([Lj$/util/concurrent/k;I)Lj$/util/concurrent/k;

    move-result-object v8

    if-nez v8, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    iget v9, v8, Lj$/util/concurrent/k;->a:I

    if-ne v9, v7, :cond_1

    invoke-virtual {p0, v0, v8}, Lj$/util/concurrent/ConcurrentHashMap;->e([Lj$/util/concurrent/k;Lj$/util/concurrent/k;)[Lj$/util/concurrent/k;

    move-result-object v0

    goto :goto_0

    :cond_1
    monitor-enter v8

    :try_start_0
    invoke-static {v0, v4}, Lj$/util/concurrent/ConcurrentHashMap;->l([Lj$/util/concurrent/k;I)Lj$/util/concurrent/k;

    move-result-object v7

    if-ne v7, v8, :cond_5

    const/4 v7, 0x0

    if-ltz v9, :cond_2

    move-object v9, v8

    goto :goto_2

    :cond_2
    instance-of v9, v8, Lj$/util/concurrent/p;

    if-eqz v9, :cond_3

    move-object v9, v8

    check-cast v9, Lj$/util/concurrent/p;

    iget-object v9, v9, Lj$/util/concurrent/p;->f:Lj$/util/concurrent/q;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_3
    move-object v9, v7

    :goto_2
    if-eqz v9, :cond_4

    const-wide/16 v10, 0x1

    sub-long/2addr v5, v10

    iget-object v9, v9, Lj$/util/concurrent/k;->d:Lj$/util/concurrent/k;

    goto :goto_2

    :cond_4
    add-int/lit8 v9, v4, 0x1

    invoke-static {v0, v4, v7}, Lj$/util/concurrent/ConcurrentHashMap;->i([Lj$/util/concurrent/k;ILj$/util/concurrent/k;)V

    move v4, v9

    :cond_5
    monitor-exit v8

    goto :goto_1

    :goto_3
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_6
    cmp-long v0, v5, v1

    if-eqz v0, :cond_7

    invoke-direct {p0, v5, v6, v7}, Lj$/util/concurrent/ConcurrentHashMap;->a(JI)V

    :cond_7
    return-void
.end method

.method public final compute(Ljava/lang/Object;Lj$/util/function/BiFunction;)Ljava/lang/Object;
    .locals 13

    const/4 v0, 0x0

    if-eqz p1, :cond_17

    if-eqz p2, :cond_17

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lj$/util/concurrent/ConcurrentHashMap;->j(I)I

    move-result v1

    iget-object v2, p0, Lj$/util/concurrent/ConcurrentHashMap;->a:[Lj$/util/concurrent/k;

    const/4 v3, 0x0

    move-object v5, v0

    const/4 v4, 0x0

    :cond_0
    :goto_0
    if-eqz v2, :cond_16

    array-length v6, v2

    if-nez v6, :cond_1

    goto/16 :goto_10

    :cond_1
    add-int/lit8 v6, v6, -0x1

    and-int/2addr v6, v1

    invoke-static {v2, v6}, Lj$/util/concurrent/ConcurrentHashMap;->l([Lj$/util/concurrent/k;I)Lj$/util/concurrent/k;

    move-result-object v7

    const/4 v8, 0x1

    if-nez v7, :cond_4

    new-instance v9, Lj$/util/concurrent/l;

    invoke-direct {v9}, Lj$/util/concurrent/l;-><init>()V

    monitor-enter v9

    :try_start_0
    invoke-static {v2, v6, v9}, Lj$/util/concurrent/ConcurrentHashMap;->b([Lj$/util/concurrent/k;ILj$/util/concurrent/k;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v7, :cond_3

    :try_start_1
    invoke-interface {p2, p1, v0}, Lj$/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    new-instance v3, Lj$/util/concurrent/k;

    invoke-direct {v3, v1, p1, v5, v0}, Lj$/util/concurrent/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/k;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    move-object v3, v0

    :goto_1
    :try_start_2
    invoke-static {v2, v6, v3}, Lj$/util/concurrent/ConcurrentHashMap;->i([Lj$/util/concurrent/k;ILj$/util/concurrent/k;)V

    const/4 v3, 0x1

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_4

    :goto_2
    invoke-static {v2, v6, v0}, Lj$/util/concurrent/ConcurrentHashMap;->i([Lj$/util/concurrent/k;ILj$/util/concurrent/k;)V

    throw p1

    :cond_3
    :goto_3
    monitor-exit v9

    if-eqz v3, :cond_0

    goto/16 :goto_e

    :goto_4
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_4
    iget v9, v7, Lj$/util/concurrent/k;->a:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_5

    invoke-virtual {p0, v2, v7}, Lj$/util/concurrent/ConcurrentHashMap;->e([Lj$/util/concurrent/k;Lj$/util/concurrent/k;)[Lj$/util/concurrent/k;

    move-result-object v2

    goto :goto_0

    :cond_5
    monitor-enter v7

    :try_start_3
    invoke-static {v2, v6}, Lj$/util/concurrent/ConcurrentHashMap;->l([Lj$/util/concurrent/k;I)Lj$/util/concurrent/k;

    move-result-object v11

    if-ne v11, v7, :cond_13

    if-ltz v9, :cond_c

    move-object v9, v0

    move-object v5, v7

    const/4 v3, 0x1

    :goto_5
    iget v11, v5, Lj$/util/concurrent/k;->a:I

    if-ne v11, v1, :cond_9

    iget-object v11, v5, Lj$/util/concurrent/k;->b:Ljava/lang/Object;

    if-eq v11, p1, :cond_6

    if-eqz v11, :cond_9

    invoke-virtual {p1, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    goto :goto_6

    :catchall_2
    move-exception p1

    goto/16 :goto_f

    :cond_6
    :goto_6
    iget-object v8, v5, Lj$/util/concurrent/k;->c:Ljava/lang/Object;

    invoke-interface {p2, p1, v8}, Lj$/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_7

    iput-object v8, v5, Lj$/util/concurrent/k;->c:Ljava/lang/Object;

    move-object v5, v8

    goto/16 :goto_d

    :cond_7
    iget-object v4, v5, Lj$/util/concurrent/k;->d:Lj$/util/concurrent/k;

    if-eqz v9, :cond_8

    iput-object v4, v9, Lj$/util/concurrent/k;->d:Lj$/util/concurrent/k;

    goto :goto_7

    :cond_8
    invoke-static {v2, v6, v4}, Lj$/util/concurrent/ConcurrentHashMap;->i([Lj$/util/concurrent/k;ILj$/util/concurrent/k;)V

    :goto_7
    move-object v5, v8

    goto/16 :goto_b

    :cond_9
    iget-object v9, v5, Lj$/util/concurrent/k;->d:Lj$/util/concurrent/k;

    if-nez v9, :cond_b

    invoke-interface {p2, p1, v0}, Lj$/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_a

    new-instance v4, Lj$/util/concurrent/k;

    invoke-direct {v4, v1, p1, v9, v0}, Lj$/util/concurrent/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/k;)V

    iput-object v4, v5, Lj$/util/concurrent/k;->d:Lj$/util/concurrent/k;

    move-object v5, v9

    goto :goto_a

    :cond_a
    move-object v5, v9

    goto :goto_d

    :cond_b
    add-int/lit8 v3, v3, 0x1

    move-object v12, v9

    move-object v9, v5

    move-object v5, v12

    goto :goto_5

    :cond_c
    instance-of v9, v7, Lj$/util/concurrent/p;

    if-eqz v9, :cond_13

    move-object v3, v7

    check-cast v3, Lj$/util/concurrent/p;

    iget-object v5, v3, Lj$/util/concurrent/p;->e:Lj$/util/concurrent/q;

    if-eqz v5, :cond_d

    invoke-virtual {v5, v1, p1, v0}, Lj$/util/concurrent/q;->b(ILjava/lang/Object;Ljava/lang/Class;)Lj$/util/concurrent/q;

    move-result-object v5

    goto :goto_8

    :cond_d
    move-object v5, v0

    :goto_8
    if-nez v5, :cond_e

    move-object v9, v0

    goto :goto_9

    :cond_e
    iget-object v9, v5, Lj$/util/concurrent/k;->c:Ljava/lang/Object;

    :goto_9
    invoke-interface {p2, p1, v9}, Lj$/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_10

    if-eqz v5, :cond_f

    iput-object v9, v5, Lj$/util/concurrent/k;->c:Ljava/lang/Object;

    goto :goto_c

    :cond_f
    invoke-virtual {v3, v1, p1, v9}, Lj$/util/concurrent/p;->f(ILjava/lang/Object;Ljava/lang/Object;)Lj$/util/concurrent/q;

    move-object v5, v9

    const/4 v3, 0x1

    :goto_a
    const/4 v4, 0x1

    goto :goto_d

    :cond_10
    if-eqz v5, :cond_12

    invoke-virtual {v3, v5}, Lj$/util/concurrent/p;->g(Lj$/util/concurrent/q;)Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v3, v3, Lj$/util/concurrent/p;->f:Lj$/util/concurrent/q;

    invoke-static {v3}, Lj$/util/concurrent/ConcurrentHashMap;->q(Lj$/util/concurrent/q;)Lj$/util/concurrent/k;

    move-result-object v3

    invoke-static {v2, v6, v3}, Lj$/util/concurrent/ConcurrentHashMap;->i([Lj$/util/concurrent/k;ILj$/util/concurrent/k;)V

    :cond_11
    move-object v5, v9

    const/4 v3, 0x1

    :goto_b
    const/4 v4, -0x1

    goto :goto_d

    :cond_12
    :goto_c
    move-object v5, v9

    const/4 v3, 0x1

    :cond_13
    :goto_d
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v3, :cond_0

    const/16 p1, 0x8

    if-lt v3, p1, :cond_14

    invoke-direct {p0, v2, v6}, Lj$/util/concurrent/ConcurrentHashMap;->o([Lj$/util/concurrent/k;I)V

    :cond_14
    :goto_e
    if-eqz v4, :cond_15

    int-to-long p1, v4

    invoke-direct {p0, p1, p2, v3}, Lj$/util/concurrent/ConcurrentHashMap;->a(JI)V

    :cond_15
    return-object v5

    :goto_f
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1

    :cond_16
    :goto_10
    invoke-direct {p0}, Lj$/util/concurrent/ConcurrentHashMap;->f()[Lj$/util/concurrent/k;

    move-result-object v2

    goto/16 :goto_0

    :cond_17
    goto :goto_12

    :goto_11
    throw v0

    :goto_12
    goto :goto_11
.end method

.method public final synthetic compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 0

    invoke-static {p2}, Lj$/util/function/BiFunction$VivifiedWrapper;->convert(Ljava/util/function/BiFunction;)Lj$/util/function/BiFunction;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->compute(Ljava/lang/Object;Lj$/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final computeIfAbsent(Ljava/lang/Object;Lj$/util/function/Function;)Ljava/lang/Object;
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_12

    if-eqz p2, :cond_12

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lj$/util/concurrent/ConcurrentHashMap;->j(I)I

    move-result v1

    iget-object v2, p0, Lj$/util/concurrent/ConcurrentHashMap;->a:[Lj$/util/concurrent/k;

    const/4 v3, 0x0

    move-object v5, v0

    const/4 v4, 0x0

    :cond_0
    :goto_0
    if-eqz v2, :cond_11

    array-length v6, v2

    if-nez v6, :cond_1

    goto/16 :goto_b

    :cond_1
    add-int/lit8 v6, v6, -0x1

    and-int/2addr v6, v1

    invoke-static {v2, v6}, Lj$/util/concurrent/ConcurrentHashMap;->l([Lj$/util/concurrent/k;I)Lj$/util/concurrent/k;

    move-result-object v7

    const/4 v8, 0x1

    if-nez v7, :cond_4

    new-instance v9, Lj$/util/concurrent/l;

    invoke-direct {v9}, Lj$/util/concurrent/l;-><init>()V

    monitor-enter v9

    :try_start_0
    invoke-static {v2, v6, v9}, Lj$/util/concurrent/ConcurrentHashMap;->b([Lj$/util/concurrent/k;ILj$/util/concurrent/k;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v7, :cond_3

    :try_start_1
    invoke-interface {p2, p1}, Lj$/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    new-instance v4, Lj$/util/concurrent/k;

    invoke-direct {v4, v1, p1, v5, v0}, Lj$/util/concurrent/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/k;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    move-object v4, v0

    :goto_1
    :try_start_2
    invoke-static {v2, v6, v4}, Lj$/util/concurrent/ConcurrentHashMap;->i([Lj$/util/concurrent/k;ILj$/util/concurrent/k;)V

    const/4 v4, 0x1

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_4

    :goto_2
    invoke-static {v2, v6, v0}, Lj$/util/concurrent/ConcurrentHashMap;->i([Lj$/util/concurrent/k;ILj$/util/concurrent/k;)V

    throw p1

    :cond_3
    :goto_3
    monitor-exit v9

    if-eqz v4, :cond_0

    goto/16 :goto_9

    :goto_4
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_4
    iget v9, v7, Lj$/util/concurrent/k;->a:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_5

    invoke-virtual {p0, v2, v7}, Lj$/util/concurrent/ConcurrentHashMap;->e([Lj$/util/concurrent/k;Lj$/util/concurrent/k;)[Lj$/util/concurrent/k;

    move-result-object v2

    goto :goto_0

    :cond_5
    monitor-enter v7

    :try_start_3
    invoke-static {v2, v6}, Lj$/util/concurrent/ConcurrentHashMap;->l([Lj$/util/concurrent/k;I)Lj$/util/concurrent/k;

    move-result-object v10

    if-ne v10, v7, :cond_c

    if-ltz v9, :cond_a

    move-object v5, v7

    const/4 v4, 0x1

    :goto_5
    iget v9, v5, Lj$/util/concurrent/k;->a:I

    if-ne v9, v1, :cond_7

    iget-object v9, v5, Lj$/util/concurrent/k;->b:Ljava/lang/Object;

    if-eq v9, p1, :cond_6

    if-eqz v9, :cond_7

    invoke-virtual {p1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    goto :goto_6

    :catchall_2
    move-exception p1

    goto :goto_a

    :cond_6
    :goto_6
    iget-object v5, v5, Lj$/util/concurrent/k;->c:Ljava/lang/Object;

    goto :goto_7

    :cond_7
    iget-object v9, v5, Lj$/util/concurrent/k;->d:Lj$/util/concurrent/k;

    if-nez v9, :cond_9

    invoke-interface {p2, p1}, Lj$/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_8

    new-instance v10, Lj$/util/concurrent/k;

    invoke-direct {v10, v1, p1, v9, v0}, Lj$/util/concurrent/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/k;)V

    iput-object v10, v5, Lj$/util/concurrent/k;->d:Lj$/util/concurrent/k;

    move-object v5, v9

    goto :goto_8

    :cond_8
    move-object v5, v9

    goto :goto_7

    :cond_9
    add-int/lit8 v4, v4, 0x1

    move-object v5, v9

    goto :goto_5

    :cond_a
    instance-of v9, v7, Lj$/util/concurrent/p;

    if-eqz v9, :cond_c

    move-object v4, v7

    check-cast v4, Lj$/util/concurrent/p;

    iget-object v5, v4, Lj$/util/concurrent/p;->e:Lj$/util/concurrent/q;

    const/4 v9, 0x2

    if-eqz v5, :cond_d

    invoke-virtual {v5, v1, p1, v0}, Lj$/util/concurrent/q;->b(ILjava/lang/Object;Ljava/lang/Class;)Lj$/util/concurrent/q;

    move-result-object v5

    if-eqz v5, :cond_d

    iget-object v5, v5, Lj$/util/concurrent/k;->c:Ljava/lang/Object;

    :cond_b
    const/4 v4, 0x2

    :cond_c
    :goto_7
    const/4 v8, 0x0

    goto :goto_8

    :cond_d
    invoke-interface {p2, p1}, Lj$/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {v4, v1, p1, v5}, Lj$/util/concurrent/p;->f(ILjava/lang/Object;Ljava/lang/Object;)Lj$/util/concurrent/q;

    const/4 v4, 0x2

    :goto_8
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v4, :cond_0

    const/16 p1, 0x8

    if-lt v4, p1, :cond_e

    invoke-direct {p0, v2, v6}, Lj$/util/concurrent/ConcurrentHashMap;->o([Lj$/util/concurrent/k;I)V

    :cond_e
    if-nez v8, :cond_f

    return-object v5

    :cond_f
    :goto_9
    if-eqz v5, :cond_10

    const-wide/16 p1, 0x1

    invoke-direct {p0, p1, p2, v4}, Lj$/util/concurrent/ConcurrentHashMap;->a(JI)V

    :cond_10
    return-object v5

    :goto_a
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1

    :cond_11
    :goto_b
    invoke-direct {p0}, Lj$/util/concurrent/ConcurrentHashMap;->f()[Lj$/util/concurrent/k;

    move-result-object v2

    goto/16 :goto_0

    :cond_12
    goto :goto_d

    :goto_c
    throw v0

    :goto_d
    goto :goto_c
.end method

.method public final synthetic computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 0

    invoke-static {p2}, Lj$/util/function/Function$VivifiedWrapper;->convert(Ljava/util/function/Function;)Lj$/util/function/Function;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Lj$/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final computeIfPresent(Ljava/lang/Object;Lj$/util/function/BiFunction;)Ljava/lang/Object;
    .locals 13

    const/4 v0, 0x0

    if-eqz p1, :cond_10

    if-eqz p2, :cond_10

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lj$/util/concurrent/ConcurrentHashMap;->j(I)I

    move-result v1

    iget-object v2, p0, Lj$/util/concurrent/ConcurrentHashMap;->a:[Lj$/util/concurrent/k;

    const/4 v3, 0x0

    move-object v5, v0

    const/4 v4, 0x0

    :cond_0
    :goto_0
    if-eqz v2, :cond_f

    array-length v6, v2

    if-nez v6, :cond_1

    goto/16 :goto_8

    :cond_1
    add-int/lit8 v6, v6, -0x1

    and-int/2addr v6, v1

    invoke-static {v2, v6}, Lj$/util/concurrent/ConcurrentHashMap;->l([Lj$/util/concurrent/k;I)Lj$/util/concurrent/k;

    move-result-object v7

    if-nez v7, :cond_2

    goto/16 :goto_6

    :cond_2
    iget v8, v7, Lj$/util/concurrent/k;->a:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_3

    invoke-virtual {p0, v2, v7}, Lj$/util/concurrent/ConcurrentHashMap;->e([Lj$/util/concurrent/k;Lj$/util/concurrent/k;)[Lj$/util/concurrent/k;

    move-result-object v2

    goto :goto_0

    :cond_3
    monitor-enter v7

    :try_start_0
    invoke-static {v2, v6}, Lj$/util/concurrent/ConcurrentHashMap;->l([Lj$/util/concurrent/k;I)Lj$/util/concurrent/k;

    move-result-object v10

    if-ne v10, v7, :cond_d

    if-ltz v8, :cond_9

    const/4 v4, 0x1

    move-object v10, v0

    move-object v8, v7

    :goto_1
    iget v11, v8, Lj$/util/concurrent/k;->a:I

    if-ne v11, v1, :cond_7

    iget-object v11, v8, Lj$/util/concurrent/k;->b:Ljava/lang/Object;

    if-eq v11, p1, :cond_4

    if-eqz v11, :cond_7

    invoke-virtual {p1, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_7

    :cond_4
    :goto_2
    iget-object v5, v8, Lj$/util/concurrent/k;->c:Ljava/lang/Object;

    invoke-interface {p2, p1, v5}, Lj$/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5

    iput-object v5, v8, Lj$/util/concurrent/k;->c:Ljava/lang/Object;

    goto :goto_5

    :cond_5
    iget-object v3, v8, Lj$/util/concurrent/k;->d:Lj$/util/concurrent/k;

    if-eqz v10, :cond_6

    iput-object v3, v10, Lj$/util/concurrent/k;->d:Lj$/util/concurrent/k;

    goto :goto_3

    :cond_6
    invoke-static {v2, v6, v3}, Lj$/util/concurrent/ConcurrentHashMap;->i([Lj$/util/concurrent/k;ILj$/util/concurrent/k;)V

    :goto_3
    const/4 v3, -0x1

    goto :goto_5

    :cond_7
    iget-object v10, v8, Lj$/util/concurrent/k;->d:Lj$/util/concurrent/k;

    if-nez v10, :cond_8

    goto :goto_5

    :cond_8
    add-int/lit8 v4, v4, 0x1

    move-object v12, v10

    move-object v10, v8

    move-object v8, v12

    goto :goto_1

    :cond_9
    instance-of v8, v7, Lj$/util/concurrent/p;

    if-eqz v8, :cond_d

    move-object v4, v7

    check-cast v4, Lj$/util/concurrent/p;

    iget-object v8, v4, Lj$/util/concurrent/p;->e:Lj$/util/concurrent/q;

    const/4 v10, 0x2

    if-eqz v8, :cond_a

    invoke-virtual {v8, v1, p1, v0}, Lj$/util/concurrent/q;->b(ILjava/lang/Object;Ljava/lang/Class;)Lj$/util/concurrent/q;

    move-result-object v8

    if-eqz v8, :cond_a

    iget-object v5, v8, Lj$/util/concurrent/k;->c:Ljava/lang/Object;

    invoke-interface {p2, p1, v5}, Lj$/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_b

    iput-object v5, v8, Lj$/util/concurrent/k;->c:Ljava/lang/Object;

    :cond_a
    :goto_4
    const/4 v4, 0x2

    goto :goto_5

    :cond_b
    invoke-virtual {v4, v8}, Lj$/util/concurrent/p;->g(Lj$/util/concurrent/q;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, v4, Lj$/util/concurrent/p;->f:Lj$/util/concurrent/q;

    invoke-static {v3}, Lj$/util/concurrent/ConcurrentHashMap;->q(Lj$/util/concurrent/q;)Lj$/util/concurrent/k;

    move-result-object v3

    invoke-static {v2, v6, v3}, Lj$/util/concurrent/ConcurrentHashMap;->i([Lj$/util/concurrent/k;ILj$/util/concurrent/k;)V

    :cond_c
    const/4 v3, -0x1

    goto :goto_4

    :cond_d
    :goto_5
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    :goto_6
    if-eqz v3, :cond_e

    int-to-long p1, v3

    invoke-direct {p0, p1, p2, v4}, Lj$/util/concurrent/ConcurrentHashMap;->a(JI)V

    :cond_e
    return-object v5

    :goto_7
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_f
    :goto_8
    invoke-direct {p0}, Lj$/util/concurrent/ConcurrentHashMap;->f()[Lj$/util/concurrent/k;

    move-result-object v2

    goto/16 :goto_0

    :cond_10
    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9
.end method

.method public final synthetic computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 0

    invoke-static {p2}, Lj$/util/function/BiFunction$VivifiedWrapper;->convert(Ljava/util/function/BiFunction;)Lj$/util/function/BiFunction;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->computeIfPresent(Ljava/lang/Object;Lj$/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->a:[Lj$/util/concurrent/k;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    new-instance v2, Lj$/util/concurrent/o;

    array-length v3, v0

    array-length v4, v0

    invoke-direct {v2, v0, v3, v1, v4}, Lj$/util/concurrent/o;-><init>([Lj$/util/concurrent/k;III)V

    :cond_0
    invoke-virtual {v2}, Lj$/util/concurrent/o;->b()Lj$/util/concurrent/k;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lj$/util/concurrent/k;->c:Ljava/lang/Object;

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method final e([Lj$/util/concurrent/k;Lj$/util/concurrent/k;)[Lj$/util/concurrent/k;
    .locals 8

    instance-of v0, p2, Lj$/util/concurrent/f;

    if-eqz v0, :cond_3

    check-cast p2, Lj$/util/concurrent/f;

    iget-object p2, p2, Lj$/util/concurrent/f;->e:[Lj$/util/concurrent/k;

    if-eqz p2, :cond_3

    array-length v0, p1

    .line 0
    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    const v1, 0x8000

    or-int/2addr v0, v1

    .line 0
    :cond_0
    iget-object v1, p0, Lj$/util/concurrent/ConcurrentHashMap;->b:[Lj$/util/concurrent/k;

    if-ne p2, v1, :cond_2

    iget-object v1, p0, Lj$/util/concurrent/ConcurrentHashMap;->a:[Lj$/util/concurrent/k;

    if-ne v1, p1, :cond_2

    iget v6, p0, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    if-gez v6, :cond_2

    sget v1, Lj$/util/concurrent/ConcurrentHashMap;->h:I

    ushr-int v1, v6, v1

    if-ne v1, v0, :cond_2

    add-int/lit8 v1, v0, 0x1

    if-eq v6, v1, :cond_2

    sget v1, Lj$/util/concurrent/ConcurrentHashMap;->g:I

    add-int/2addr v1, v0

    if-eq v6, v1, :cond_2

    iget v1, p0, Lj$/util/concurrent/ConcurrentHashMap;->transferIndex:I

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Lj$/util/concurrent/ConcurrentHashMap;->j:Lsun/misc/Unsafe;

    sget-wide v4, Lj$/util/concurrent/ConcurrentHashMap;->k:J

    add-int/lit8 v7, v6, 0x1

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->n([Lj$/util/concurrent/k;[Lj$/util/concurrent/k;)V

    :cond_2
    :goto_0
    return-object p2

    :cond_3
    iget-object p1, p0, Lj$/util/concurrent/ConcurrentHashMap;->a:[Lj$/util/concurrent/k;

    return-object p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->f:Lj$/util/concurrent/h;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lj$/util/concurrent/h;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lj$/util/concurrent/h;-><init>(Lj$/util/concurrent/ConcurrentHashMap;I)V

    iput-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->f:Lj$/util/concurrent/h;

    :goto_0
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p1, p0, :cond_7

    instance-of v0, p1, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljava/util/Map;

    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->a:[Lj$/util/concurrent/k;

    if-nez v0, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    array-length v2, v0

    :goto_0
    new-instance v3, Lj$/util/concurrent/o;

    invoke-direct {v3, v0, v2, v1, v2}, Lj$/util/concurrent/o;-><init>([Lj$/util/concurrent/k;III)V

    :cond_2
    invoke-virtual {v3}, Lj$/util/concurrent/o;->b()Lj$/util/concurrent/k;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, v0, Lj$/util/concurrent/k;->c:Ljava/lang/Object;

    iget-object v0, v0, Lj$/util/concurrent/k;->b:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_3
    return v1

    :cond_4
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, v2}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    if-eq v0, v2, :cond_5

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_6
    return v1

    :cond_7
    const/4 p1, 0x1

    return p1
.end method

.method public final forEach(Lj$/util/function/BiConsumer;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->a:[Lj$/util/concurrent/k;

    if-eqz v0, :cond_0

    new-instance v1, Lj$/util/concurrent/o;

    array-length v2, v0

    const/4 v3, 0x0

    array-length v4, v0

    invoke-direct {v1, v0, v2, v3, v4}, Lj$/util/concurrent/o;-><init>([Lj$/util/concurrent/k;III)V

    :goto_0
    invoke-virtual {v1}, Lj$/util/concurrent/o;->b()Lj$/util/concurrent/k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lj$/util/concurrent/k;->b:Ljava/lang/Object;

    iget-object v0, v0, Lj$/util/concurrent/k;->c:Ljava/lang/Object;

    invoke-interface {p1, v2, v0}, Lj$/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final synthetic forEach(Ljava/util/function/BiConsumer;)V
    .locals 0

    invoke-static {p1}, Lj$/util/function/BiConsumer$VivifiedWrapper;->convert(Ljava/util/function/BiConsumer;)Lj$/util/function/BiConsumer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->forEach(Lj$/util/function/BiConsumer;)V

    return-void
.end method

.method final g(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_f

    if-eqz p2, :cond_f

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lj$/util/concurrent/ConcurrentHashMap;->j(I)I

    move-result v1

    iget-object v2, p0, Lj$/util/concurrent/ConcurrentHashMap;->a:[Lj$/util/concurrent/k;

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-eqz v2, :cond_e

    array-length v4, v2

    if-nez v4, :cond_1

    goto/16 :goto_8

    :cond_1
    add-int/lit8 v4, v4, -0x1

    and-int/2addr v4, v1

    invoke-static {v2, v4}, Lj$/util/concurrent/ConcurrentHashMap;->l([Lj$/util/concurrent/k;I)Lj$/util/concurrent/k;

    move-result-object v5

    if-nez v5, :cond_2

    new-instance v5, Lj$/util/concurrent/k;

    invoke-direct {v5, v1, p1, p2, v0}, Lj$/util/concurrent/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/k;)V

    invoke-static {v2, v4, v5}, Lj$/util/concurrent/ConcurrentHashMap;->b([Lj$/util/concurrent/k;ILj$/util/concurrent/k;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_6

    :cond_2
    iget v6, v5, Lj$/util/concurrent/k;->a:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    invoke-virtual {p0, v2, v5}, Lj$/util/concurrent/ConcurrentHashMap;->e([Lj$/util/concurrent/k;Lj$/util/concurrent/k;)[Lj$/util/concurrent/k;

    move-result-object v2

    goto :goto_0

    :cond_3
    monitor-enter v5

    :try_start_0
    invoke-static {v2, v4}, Lj$/util/concurrent/ConcurrentHashMap;->l([Lj$/util/concurrent/k;I)Lj$/util/concurrent/k;

    move-result-object v7

    if-ne v7, v5, :cond_a

    if-ltz v6, :cond_7

    const/4 v3, 0x1

    move-object v6, v5

    :goto_1
    iget v7, v6, Lj$/util/concurrent/k;->a:I

    if-ne v7, v1, :cond_5

    iget-object v7, v6, Lj$/util/concurrent/k;->b:Ljava/lang/Object;

    if-eq v7, p1, :cond_4

    if-eqz v7, :cond_5

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_7

    :cond_4
    :goto_2
    iget-object v7, v6, Lj$/util/concurrent/k;->c:Ljava/lang/Object;

    if-nez p3, :cond_b

    iput-object p2, v6, Lj$/util/concurrent/k;->c:Ljava/lang/Object;

    goto :goto_5

    :cond_5
    iget-object v7, v6, Lj$/util/concurrent/k;->d:Lj$/util/concurrent/k;

    if-nez v7, :cond_6

    new-instance v7, Lj$/util/concurrent/k;

    invoke-direct {v7, v1, p1, p2, v0}, Lj$/util/concurrent/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/k;)V

    iput-object v7, v6, Lj$/util/concurrent/k;->d:Lj$/util/concurrent/k;

    goto :goto_4

    :cond_6
    add-int/lit8 v3, v3, 0x1

    move-object v6, v7

    goto :goto_1

    :cond_7
    instance-of v6, v5, Lj$/util/concurrent/p;

    if-eqz v6, :cond_a

    move-object v3, v5

    check-cast v3, Lj$/util/concurrent/p;

    invoke-virtual {v3, v1, p1, p2}, Lj$/util/concurrent/p;->f(ILjava/lang/Object;Ljava/lang/Object;)Lj$/util/concurrent/q;

    move-result-object v3

    const/4 v6, 0x2

    if-eqz v3, :cond_9

    iget-object v7, v3, Lj$/util/concurrent/k;->c:Ljava/lang/Object;

    if-nez p3, :cond_8

    iput-object p2, v3, Lj$/util/concurrent/k;->c:Ljava/lang/Object;

    :cond_8
    :goto_3
    const/4 v3, 0x2

    goto :goto_5

    :cond_9
    move-object v7, v0

    goto :goto_3

    :cond_a
    :goto_4
    move-object v7, v0

    :cond_b
    :goto_5
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    const/16 p1, 0x8

    if-lt v3, p1, :cond_c

    invoke-direct {p0, v2, v4}, Lj$/util/concurrent/ConcurrentHashMap;->o([Lj$/util/concurrent/k;I)V

    :cond_c
    if-eqz v7, :cond_d

    return-object v7

    :cond_d
    :goto_6
    const-wide/16 p1, 0x1

    invoke-direct {p0, p1, p2, v3}, Lj$/util/concurrent/ConcurrentHashMap;->a(JI)V

    return-object v0

    :goto_7
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_e
    :goto_8
    invoke-direct {p0}, Lj$/util/concurrent/ConcurrentHashMap;->f()[Lj$/util/concurrent/k;

    move-result-object v2

    goto/16 :goto_0

    :cond_f
    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lj$/util/concurrent/ConcurrentHashMap;->j(I)I

    move-result v0

    iget-object v1, p0, Lj$/util/concurrent/ConcurrentHashMap;->a:[Lj$/util/concurrent/k;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    array-length v3, v1

    if-lez v3, :cond_5

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v3, v0

    invoke-static {v1, v3}, Lj$/util/concurrent/ConcurrentHashMap;->l([Lj$/util/concurrent/k;I)Lj$/util/concurrent/k;

    move-result-object v1

    if-eqz v1, :cond_5

    iget v3, v1, Lj$/util/concurrent/k;->a:I

    if-ne v3, v0, :cond_1

    iget-object v3, v1, Lj$/util/concurrent/k;->b:Ljava/lang/Object;

    if-eq v3, p1, :cond_0

    if-eqz v3, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    iget-object p1, v1, Lj$/util/concurrent/k;->c:Ljava/lang/Object;

    return-object p1

    :cond_1
    if-gez v3, :cond_3

    invoke-virtual {v1, p1, v0}, Lj$/util/concurrent/k;->a(Ljava/lang/Object;I)Lj$/util/concurrent/k;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v2, p1, Lj$/util/concurrent/k;->c:Ljava/lang/Object;

    :cond_2
    return-object v2

    :cond_3
    iget-object v1, v1, Lj$/util/concurrent/k;->d:Lj$/util/concurrent/k;

    if-eqz v1, :cond_5

    iget v3, v1, Lj$/util/concurrent/k;->a:I

    if-ne v3, v0, :cond_3

    iget-object v3, v1, Lj$/util/concurrent/k;->b:Ljava/lang/Object;

    if-eq v3, p1, :cond_4

    if-eqz v3, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_4
    iget-object p1, v1, Lj$/util/concurrent/k;->c:Ljava/lang/Object;

    return-object p1

    :cond_5
    return-object v2
.end method

.method public final getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    return-object p2
.end method

.method final h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lj$/util/concurrent/ConcurrentHashMap;->j(I)I

    move-result v0

    iget-object v1, p0, Lj$/util/concurrent/ConcurrentHashMap;->a:[Lj$/util/concurrent/k;

    :cond_0
    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_10

    array-length v3, v1

    if-eqz v3, :cond_10

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v3, v0

    invoke-static {v1, v3}, Lj$/util/concurrent/ConcurrentHashMap;->l([Lj$/util/concurrent/k;I)Lj$/util/concurrent/k;

    move-result-object v4

    if-nez v4, :cond_1

    goto/16 :goto_7

    :cond_1
    iget v5, v4, Lj$/util/concurrent/k;->a:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    invoke-virtual {p0, v1, v4}, Lj$/util/concurrent/ConcurrentHashMap;->e([Lj$/util/concurrent/k;Lj$/util/concurrent/k;)[Lj$/util/concurrent/k;

    move-result-object v1

    goto :goto_0

    :cond_2
    monitor-enter v4

    :try_start_0
    invoke-static {v1, v3}, Lj$/util/concurrent/ConcurrentHashMap;->l([Lj$/util/concurrent/k;I)Lj$/util/concurrent/k;

    move-result-object v7

    if-ne v7, v4, :cond_d

    const/4 v7, 0x1

    if-ltz v5, :cond_9

    move-object v8, v2

    move-object v5, v4

    :goto_1
    iget v9, v5, Lj$/util/concurrent/k;->a:I

    if-ne v9, v0, :cond_7

    iget-object v9, v5, Lj$/util/concurrent/k;->b:Ljava/lang/Object;

    if-eq v9, p1, :cond_3

    if-eqz v9, :cond_7

    invoke-virtual {p1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_3
    :goto_2
    iget-object v9, v5, Lj$/util/concurrent/k;->c:Ljava/lang/Object;

    if-eqz p3, :cond_4

    if-eq p3, v9, :cond_4

    if-eqz v9, :cond_c

    invoke-virtual {p3, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    :cond_4
    if-eqz p2, :cond_5

    iput-object p2, v5, Lj$/util/concurrent/k;->c:Ljava/lang/Object;

    goto :goto_5

    :cond_5
    if-eqz v8, :cond_6

    iget-object v3, v5, Lj$/util/concurrent/k;->d:Lj$/util/concurrent/k;

    iput-object v3, v8, Lj$/util/concurrent/k;->d:Lj$/util/concurrent/k;

    goto :goto_5

    :cond_6
    iget-object v5, v5, Lj$/util/concurrent/k;->d:Lj$/util/concurrent/k;

    :goto_3
    invoke-static {v1, v3, v5}, Lj$/util/concurrent/ConcurrentHashMap;->i([Lj$/util/concurrent/k;ILj$/util/concurrent/k;)V

    goto :goto_5

    :cond_7
    iget-object v8, v5, Lj$/util/concurrent/k;->d:Lj$/util/concurrent/k;

    if-nez v8, :cond_8

    goto :goto_4

    :cond_8
    move-object v11, v8

    move-object v8, v5

    move-object v5, v11

    goto :goto_1

    :cond_9
    instance-of v5, v4, Lj$/util/concurrent/p;

    if-eqz v5, :cond_d

    move-object v5, v4

    check-cast v5, Lj$/util/concurrent/p;

    iget-object v8, v5, Lj$/util/concurrent/p;->e:Lj$/util/concurrent/q;

    if-eqz v8, :cond_c

    invoke-virtual {v8, v0, p1, v2}, Lj$/util/concurrent/q;->b(ILjava/lang/Object;Ljava/lang/Class;)Lj$/util/concurrent/q;

    move-result-object v8

    if-eqz v8, :cond_c

    iget-object v9, v8, Lj$/util/concurrent/k;->c:Ljava/lang/Object;

    if-eqz p3, :cond_a

    if-eq p3, v9, :cond_a

    if-eqz v9, :cond_c

    invoke-virtual {p3, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    :cond_a
    if-eqz p2, :cond_b

    iput-object p2, v8, Lj$/util/concurrent/k;->c:Ljava/lang/Object;

    goto :goto_5

    :cond_b
    invoke-virtual {v5, v8}, Lj$/util/concurrent/p;->g(Lj$/util/concurrent/q;)Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v5, v5, Lj$/util/concurrent/p;->f:Lj$/util/concurrent/q;

    invoke-static {v5}, Lj$/util/concurrent/ConcurrentHashMap;->q(Lj$/util/concurrent/q;)Lj$/util/concurrent/k;

    move-result-object v5

    goto :goto_3

    :cond_c
    :goto_4
    move-object v9, v2

    goto :goto_5

    :cond_d
    const/4 v7, 0x0

    goto :goto_4

    :cond_e
    :goto_5
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_0

    if-eqz v9, :cond_10

    if-nez p2, :cond_f

    const-wide/16 p1, -0x1

    invoke-direct {p0, p1, p2, v6}, Lj$/util/concurrent/ConcurrentHashMap;->a(JI)V

    :cond_f
    return-object v9

    :goto_6
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_10
    :goto_7
    return-object v2
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->a:[Lj$/util/concurrent/k;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v2, Lj$/util/concurrent/o;

    array-length v3, v0

    array-length v4, v0

    invoke-direct {v2, v0, v3, v1, v4}, Lj$/util/concurrent/o;-><init>([Lj$/util/concurrent/k;III)V

    :goto_0
    invoke-virtual {v2}, Lj$/util/concurrent/o;->b()Lj$/util/concurrent/k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, v0, Lj$/util/concurrent/k;->b:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    iget-object v0, v0, Lj$/util/concurrent/k;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    xor-int/2addr v0, v3

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    return v1
.end method

.method public isEmpty()Z
    .locals 5

    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap;->k()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final k()J
    .locals 6

    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->c:[Lj$/util/concurrent/c;

    iget-wide v1, p0, Lj$/util/concurrent/ConcurrentHashMap;->baseCount:J

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    iget-wide v4, v4, Lj$/util/concurrent/c;->value:J

    add-long/2addr v1, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->d:Lj$/util/concurrent/h;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lj$/util/concurrent/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lj$/util/concurrent/h;-><init>(Lj$/util/concurrent/ConcurrentHashMap;I)V

    iput-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->d:Lj$/util/concurrent/h;

    :goto_0
    return-object v0
.end method

.method public final merge(Ljava/lang/Object;Ljava/lang/Object;Lj$/util/function/BiFunction;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    if-eqz v0, :cond_14

    if-eqz v2, :cond_14

    if-eqz v3, :cond_14

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Lj$/util/concurrent/ConcurrentHashMap;->j(I)I

    move-result v5

    iget-object v6, v1, Lj$/util/concurrent/ConcurrentHashMap;->a:[Lj$/util/concurrent/k;

    const/4 v7, 0x0

    move-object v9, v4

    const/4 v8, 0x0

    :cond_0
    :goto_0
    if-eqz v6, :cond_13

    array-length v10, v6

    if-nez v10, :cond_1

    goto/16 :goto_c

    :cond_1
    add-int/lit8 v10, v10, -0x1

    and-int/2addr v10, v5

    invoke-static {v6, v10}, Lj$/util/concurrent/ConcurrentHashMap;->l([Lj$/util/concurrent/k;I)Lj$/util/concurrent/k;

    move-result-object v11

    const/4 v12, 0x1

    if-nez v11, :cond_2

    new-instance v11, Lj$/util/concurrent/k;

    invoke-direct {v11, v5, v0, v2, v4}, Lj$/util/concurrent/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/k;)V

    invoke-static {v6, v10, v11}, Lj$/util/concurrent/ConcurrentHashMap;->b([Lj$/util/concurrent/k;ILj$/util/concurrent/k;)Z

    move-result v10

    if-eqz v10, :cond_0

    goto/16 :goto_a

    :cond_2
    iget v13, v11, Lj$/util/concurrent/k;->a:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_3

    invoke-virtual {v1, v6, v11}, Lj$/util/concurrent/ConcurrentHashMap;->e([Lj$/util/concurrent/k;Lj$/util/concurrent/k;)[Lj$/util/concurrent/k;

    move-result-object v6

    goto :goto_0

    :cond_3
    monitor-enter v11

    :try_start_0
    invoke-static {v6, v10}, Lj$/util/concurrent/ConcurrentHashMap;->l([Lj$/util/concurrent/k;I)Lj$/util/concurrent/k;

    move-result-object v15

    if-ne v15, v11, :cond_10

    if-ltz v13, :cond_9

    move-object v13, v4

    move-object v9, v11

    const/4 v7, 0x1

    :goto_1
    iget v15, v9, Lj$/util/concurrent/k;->a:I

    if-ne v15, v5, :cond_7

    iget-object v15, v9, Lj$/util/concurrent/k;->b:Ljava/lang/Object;

    if-eq v15, v0, :cond_4

    if-eqz v15, :cond_7

    invoke-virtual {v0, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :cond_4
    :goto_2
    iget-object v12, v9, Lj$/util/concurrent/k;->c:Ljava/lang/Object;

    invoke-interface {v3, v12, v2}, Lj$/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_5

    iput-object v12, v9, Lj$/util/concurrent/k;->c:Ljava/lang/Object;

    move-object v9, v12

    goto/16 :goto_9

    :cond_5
    iget-object v8, v9, Lj$/util/concurrent/k;->d:Lj$/util/concurrent/k;

    if-eqz v13, :cond_6

    iput-object v8, v13, Lj$/util/concurrent/k;->d:Lj$/util/concurrent/k;

    goto :goto_3

    :cond_6
    invoke-static {v6, v10, v8}, Lj$/util/concurrent/ConcurrentHashMap;->i([Lj$/util/concurrent/k;ILj$/util/concurrent/k;)V

    :goto_3
    move-object v9, v12

    goto :goto_7

    :cond_7
    iget-object v13, v9, Lj$/util/concurrent/k;->d:Lj$/util/concurrent/k;

    if-nez v13, :cond_8

    new-instance v8, Lj$/util/concurrent/k;

    invoke-direct {v8, v5, v0, v2, v4}, Lj$/util/concurrent/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/k;)V

    iput-object v8, v9, Lj$/util/concurrent/k;->d:Lj$/util/concurrent/k;

    move-object v9, v2

    goto :goto_6

    :cond_8
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v16, v13

    move-object v13, v9

    move-object/from16 v9, v16

    goto :goto_1

    :cond_9
    instance-of v13, v11, Lj$/util/concurrent/p;

    if-eqz v13, :cond_10

    move-object v7, v11

    check-cast v7, Lj$/util/concurrent/p;

    iget-object v9, v7, Lj$/util/concurrent/p;->e:Lj$/util/concurrent/q;

    if-nez v9, :cond_a

    move-object v9, v4

    goto :goto_4

    :cond_a
    invoke-virtual {v9, v5, v0, v4}, Lj$/util/concurrent/q;->b(ILjava/lang/Object;Ljava/lang/Class;)Lj$/util/concurrent/q;

    move-result-object v9

    :goto_4
    if-nez v9, :cond_b

    move-object v13, v2

    goto :goto_5

    :cond_b
    iget-object v13, v9, Lj$/util/concurrent/k;->c:Ljava/lang/Object;

    invoke-interface {v3, v13, v2}, Lj$/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    :goto_5
    const/4 v15, 0x2

    if-eqz v13, :cond_d

    if-eqz v9, :cond_c

    iput-object v13, v9, Lj$/util/concurrent/k;->c:Ljava/lang/Object;

    goto :goto_8

    :cond_c
    invoke-virtual {v7, v5, v0, v13}, Lj$/util/concurrent/p;->f(ILjava/lang/Object;Ljava/lang/Object;)Lj$/util/concurrent/q;

    move-object v9, v13

    const/4 v7, 0x2

    :goto_6
    const/4 v8, 0x1

    goto :goto_9

    :cond_d
    if-eqz v9, :cond_f

    invoke-virtual {v7, v9}, Lj$/util/concurrent/p;->g(Lj$/util/concurrent/q;)Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v7, v7, Lj$/util/concurrent/p;->f:Lj$/util/concurrent/q;

    invoke-static {v7}, Lj$/util/concurrent/ConcurrentHashMap;->q(Lj$/util/concurrent/q;)Lj$/util/concurrent/k;

    move-result-object v7

    invoke-static {v6, v10, v7}, Lj$/util/concurrent/ConcurrentHashMap;->i([Lj$/util/concurrent/k;ILj$/util/concurrent/k;)V

    :cond_e
    move-object v9, v13

    const/4 v7, 0x2

    :goto_7
    const/4 v8, -0x1

    goto :goto_9

    :cond_f
    :goto_8
    move-object v9, v13

    const/4 v7, 0x2

    :cond_10
    :goto_9
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_0

    const/16 v0, 0x8

    if-lt v7, v0, :cond_11

    invoke-direct {v1, v6, v10}, Lj$/util/concurrent/ConcurrentHashMap;->o([Lj$/util/concurrent/k;I)V

    :cond_11
    move v12, v8

    move-object v2, v9

    :goto_a
    if-eqz v12, :cond_12

    int-to-long v3, v12

    invoke-direct {v1, v3, v4, v7}, Lj$/util/concurrent/ConcurrentHashMap;->a(JI)V

    :cond_12
    return-object v2

    :goto_b
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_13
    :goto_c
    invoke-direct/range {p0 .. p0}, Lj$/util/concurrent/ConcurrentHashMap;->f()[Lj$/util/concurrent/k;

    move-result-object v6

    goto/16 :goto_0

    :cond_14
    goto :goto_e

    :goto_d
    throw v4

    :goto_e
    goto :goto_d
.end method

.method public final synthetic merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 0

    invoke-static {p3}, Lj$/util/function/BiFunction$VivifiedWrapper;->convert(Ljava/util/function/BiFunction;)Lj$/util/function/BiFunction;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lj$/util/concurrent/ConcurrentHashMap;->merge(Ljava/lang/Object;Ljava/lang/Object;Lj$/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lj$/util/concurrent/ConcurrentHashMap;->g(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lj$/util/concurrent/ConcurrentHashMap;->p(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lj$/util/concurrent/ConcurrentHashMap;->g(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lj$/util/concurrent/ConcurrentHashMap;->g(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lj$/util/concurrent/ConcurrentHashMap;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lj$/util/concurrent/ConcurrentHashMap;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p2, v0}, Lj$/util/concurrent/ConcurrentHashMap;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    throw v0
.end method

.method public final replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p0, p1, p3, p2}, Lj$/util/concurrent/ConcurrentHashMap;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_1
    const/4 p1, 0x0

    throw p1
.end method

.method public final replaceAll(Lj$/util/function/BiFunction;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->a:[Lj$/util/concurrent/k;

    if-eqz v0, :cond_2

    new-instance v1, Lj$/util/concurrent/o;

    array-length v2, v0

    const/4 v3, 0x0

    array-length v4, v0

    invoke-direct {v1, v0, v2, v3, v4}, Lj$/util/concurrent/o;-><init>([Lj$/util/concurrent/k;III)V

    :cond_0
    :goto_0
    invoke-virtual {v1}, Lj$/util/concurrent/o;->b()Lj$/util/concurrent/k;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, v0, Lj$/util/concurrent/k;->c:Ljava/lang/Object;

    iget-object v0, v0, Lj$/util/concurrent/k;->b:Ljava/lang/Object;

    :cond_1
    invoke-interface {p1, v0, v2}, Lj$/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v0, v3, v2}, Lj$/util/concurrent/ConcurrentHashMap;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v0}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final synthetic replaceAll(Ljava/util/function/BiFunction;)V
    .locals 0

    invoke-static {p1}, Lj$/util/function/BiFunction$VivifiedWrapper;->convert(Ljava/util/function/BiFunction;)Lj$/util/function/BiFunction;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->replaceAll(Lj$/util/function/BiFunction;)V

    return-void
.end method

.method public size()I
    .locals 5

    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap;->k()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    const v0, 0x7fffffff

    goto :goto_0

    :cond_1
    long-to-int v0, v0

    :goto_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->a:[Lj$/util/concurrent/k;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    array-length v2, v0

    :goto_0
    new-instance v3, Lj$/util/concurrent/o;

    invoke-direct {v3, v0, v2, v1, v2}, Lj$/util/concurrent/o;-><init>([Lj$/util/concurrent/k;III)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lj$/util/concurrent/o;->b()Lj$/util/concurrent/k;

    move-result-object v1

    if-eqz v1, :cond_4

    :goto_1
    iget-object v2, v1, Lj$/util/concurrent/k;->b:Ljava/lang/Object;

    iget-object v1, v1, Lj$/util/concurrent/k;->c:Ljava/lang/Object;

    const-string v4, "(this Map)"

    if-ne v2, p0, :cond_1

    move-object v2, v4

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ne v1, p0, :cond_2

    move-object v1, v4

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lj$/util/concurrent/o;->b()Lj$/util/concurrent/k;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    :goto_2
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->e:Lj$/util/concurrent/r;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lj$/util/concurrent/r;

    invoke-direct {v0, p0}, Lj$/util/concurrent/r;-><init>(Lj$/util/concurrent/ConcurrentHashMap;)V

    iput-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->e:Lj$/util/concurrent/r;

    :goto_0
    return-object v0
.end method
