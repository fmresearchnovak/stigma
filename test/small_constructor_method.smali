.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Ledu/fandm/enovak/leaks/SimpleLeak;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ledu/fandm/enovak/leaks/SimpleLeak;->TAG:Ljava/lang/String;

    return-void
.end method