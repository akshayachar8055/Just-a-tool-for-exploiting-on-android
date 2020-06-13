.class public Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;
.super Lorg/pocketworkstation/pckeyboard/Dictionary;
.source "ExpandableDictionary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$LoadDictionaryTask;,
        Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NextWord;,
        Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;,
        Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;
    }
.end annotation


# static fields
.field static final BASE_CHARS:[C

.field protected static final MAX_WORD_LENGTH:I = 0x20

.field private static final QUOTE:C = '\''


# instance fields
.field private mCodes:[[I

.field private mContext:Landroid/content/Context;

.field private mDicTypeId:I

.field private mInputLength:I

.field private mMaxDepth:I

.field private mNextLettersFrequencies:[I

.field private mRequiresReload:Z

.field private mRoots:Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;

.field private mUpdatingDictionary:Z

.field private mUpdatingLock:Ljava/lang/Object;

.field private mWordBuilder:[C

.field private sb:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x500

    .line 524
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->BASE_CHARS:[C

    return-void

    :array_0
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x3s
        0x4s
        0x5s
        0x6s
        0x7s
        0x8s
        0x9s
        0xas
        0xbs
        0xcs
        0xds
        0xes
        0xfs
        0x10s
        0x11s
        0x12s
        0x13s
        0x14s
        0x15s
        0x16s
        0x17s
        0x18s
        0x19s
        0x1as
        0x1bs
        0x1cs
        0x1ds
        0x1es
        0x1fs
        0x20s
        0x21s
        0x22s
        0x23s
        0x24s
        0x25s
        0x26s
        0x27s
        0x28s
        0x29s
        0x2as
        0x2bs
        0x2cs
        0x2ds
        0x2es
        0x2fs
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x3as
        0x3bs
        0x3cs
        0x3ds
        0x3es
        0x3fs
        0x40s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x5bs
        0x5cs
        0x5ds
        0x5es
        0x5fs
        0x60s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x7bs
        0x7cs
        0x7ds
        0x7es
        0x7fs
        0x80s
        0x81s
        0x82s
        0x83s
        0x84s
        0x85s
        0x86s
        0x87s
        0x88s
        0x89s
        0x8as
        0x8bs
        0x8cs
        0x8ds
        0x8es
        0x8fs
        0x90s
        0x91s
        0x92s
        0x93s
        0x94s
        0x95s
        0x96s
        0x97s
        0x98s
        0x99s
        0x9as
        0x9bs
        0x9cs
        0x9ds
        0x9es
        0x9fs
        0x20s
        0xa1s
        0xa2s
        0xa3s
        0xa4s
        0xa5s
        0xa6s
        0xa7s
        0x20s
        0xa9s
        0x61s
        0xabs
        0xacs
        0xads
        0xaes
        0x20s
        0xb0s
        0xb1s
        0x32s
        0x33s
        0x20s
        0x3bcs
        0xb6s
        0xb7s
        0x20s
        0x31s
        0x6fs
        0xbbs
        0x31s
        0x31s
        0x33s
        0xbfs
        0x41s
        0x41s
        0x41s
        0x41s
        0x41s
        0x41s
        0xc6s
        0x43s
        0x45s
        0x45s
        0x45s
        0x45s
        0x49s
        0x49s
        0x49s
        0x49s
        0xd0s
        0x4es
        0x4fs
        0x4fs
        0x4fs
        0x4fs
        0x4fs
        0xd7s
        0x4fs
        0x55s
        0x55s
        0x55s
        0x55s
        0x59s
        0xdes
        0x73s
        0x61s
        0x61s
        0x61s
        0x61s
        0x61s
        0x61s
        0xe6s
        0x63s
        0x65s
        0x65s
        0x65s
        0x65s
        0x69s
        0x69s
        0x69s
        0x69s
        0xf0s
        0x6es
        0x6fs
        0x6fs
        0x6fs
        0x6fs
        0x6fs
        0xf7s
        0x6fs
        0x75s
        0x75s
        0x75s
        0x75s
        0x79s
        0xfes
        0x79s
        0x41s
        0x61s
        0x41s
        0x61s
        0x41s
        0x61s
        0x43s
        0x63s
        0x43s
        0x63s
        0x43s
        0x63s
        0x43s
        0x63s
        0x44s
        0x64s
        0x110s
        0x111s
        0x45s
        0x65s
        0x45s
        0x65s
        0x45s
        0x65s
        0x45s
        0x65s
        0x45s
        0x65s
        0x47s
        0x67s
        0x47s
        0x67s
        0x47s
        0x67s
        0x47s
        0x67s
        0x48s
        0x68s
        0x126s
        0x127s
        0x49s
        0x69s
        0x49s
        0x69s
        0x49s
        0x69s
        0x49s
        0x69s
        0x49s
        0x131s
        0x49s
        0x69s
        0x4as
        0x6as
        0x4bs
        0x6bs
        0x138s
        0x4cs
        0x6cs
        0x4cs
        0x6cs
        0x4cs
        0x6cs
        0x4cs
        0x6cs
        0x141s
        0x142s
        0x4es
        0x6es
        0x4es
        0x6es
        0x4es
        0x6es
        0x2bcs
        0x14as
        0x14bs
        0x4fs
        0x6fs
        0x4fs
        0x6fs
        0x4fs
        0x6fs
        0x152s
        0x153s
        0x52s
        0x72s
        0x52s
        0x72s
        0x52s
        0x72s
        0x53s
        0x73s
        0x53s
        0x73s
        0x53s
        0x73s
        0x53s
        0x73s
        0x54s
        0x74s
        0x54s
        0x74s
        0x166s
        0x167s
        0x55s
        0x75s
        0x55s
        0x75s
        0x55s
        0x75s
        0x55s
        0x75s
        0x55s
        0x75s
        0x55s
        0x75s
        0x57s
        0x77s
        0x59s
        0x79s
        0x59s
        0x5as
        0x7as
        0x5as
        0x7as
        0x5as
        0x7as
        0x73s
        0x180s
        0x181s
        0x182s
        0x183s
        0x184s
        0x185s
        0x186s
        0x187s
        0x188s
        0x189s
        0x18as
        0x18bs
        0x18cs
        0x18ds
        0x18es
        0x18fs
        0x190s
        0x191s
        0x192s
        0x193s
        0x194s
        0x195s
        0x196s
        0x197s
        0x198s
        0x199s
        0x19as
        0x19bs
        0x19cs
        0x19ds
        0x19es
        0x19fs
        0x4fs
        0x6fs
        0x1a2s
        0x1a3s
        0x1a4s
        0x1a5s
        0x1a6s
        0x1a7s
        0x1a8s
        0x1a9s
        0x1aas
        0x1abs
        0x1acs
        0x1ads
        0x1aes
        0x55s
        0x75s
        0x1b1s
        0x1b2s
        0x1b3s
        0x1b4s
        0x1b5s
        0x1b6s
        0x1b7s
        0x1b8s
        0x1b9s
        0x1bas
        0x1bbs
        0x1bcs
        0x1bds
        0x1bes
        0x1bfs
        0x1c0s
        0x1c1s
        0x1c2s
        0x1c3s
        0x44s
        0x44s
        0x64s
        0x4cs
        0x4cs
        0x6cs
        0x4es
        0x4es
        0x6es
        0x41s
        0x61s
        0x49s
        0x69s
        0x4fs
        0x6fs
        0x55s
        0x75s
        0xdcs
        0xfcs
        0xdcs
        0xfcs
        0xdcs
        0xfcs
        0xdcs
        0xfcs
        0x1dds
        0xc4s
        0xe4s
        0x226s
        0x227s
        0xc6s
        0xe6s
        0x1e4s
        0x1e5s
        0x47s
        0x67s
        0x4bs
        0x6bs
        0x4fs
        0x6fs
        0x1eas
        0x1ebs
        0x1b7s
        0x292s
        0x6as
        0x44s
        0x44s
        0x64s
        0x47s
        0x67s
        0x1f6s
        0x1f7s
        0x4es
        0x6es
        0xc5s
        0xe5s
        0xc6s
        0xe6s
        0xd8s
        0xf8s
        0x41s
        0x61s
        0x41s
        0x61s
        0x45s
        0x65s
        0x45s
        0x65s
        0x49s
        0x69s
        0x49s
        0x69s
        0x4fs
        0x6fs
        0x4fs
        0x6fs
        0x52s
        0x72s
        0x52s
        0x72s
        0x55s
        0x75s
        0x55s
        0x75s
        0x53s
        0x73s
        0x54s
        0x74s
        0x21cs
        0x21ds
        0x48s
        0x68s
        0x220s
        0x221s
        0x222s
        0x223s
        0x224s
        0x225s
        0x41s
        0x61s
        0x45s
        0x65s
        0xd6s
        0xf6s
        0xd5s
        0xf5s
        0x4fs
        0x6fs
        0x22es
        0x22fs
        0x59s
        0x79s
        0x234s
        0x235s
        0x236s
        0x237s
        0x238s
        0x239s
        0x23as
        0x23bs
        0x23cs
        0x23ds
        0x23es
        0x23fs
        0x240s
        0x241s
        0x242s
        0x243s
        0x244s
        0x245s
        0x246s
        0x247s
        0x248s
        0x249s
        0x24as
        0x24bs
        0x24cs
        0x24ds
        0x24es
        0x24fs
        0x250s
        0x251s
        0x252s
        0x253s
        0x254s
        0x255s
        0x256s
        0x257s
        0x258s
        0x259s
        0x25as
        0x25bs
        0x25cs
        0x25ds
        0x25es
        0x25fs
        0x260s
        0x261s
        0x262s
        0x263s
        0x264s
        0x265s
        0x266s
        0x267s
        0x268s
        0x269s
        0x26as
        0x26bs
        0x26cs
        0x26ds
        0x26es
        0x26fs
        0x270s
        0x271s
        0x272s
        0x273s
        0x274s
        0x275s
        0x276s
        0x277s
        0x278s
        0x279s
        0x27as
        0x27bs
        0x27cs
        0x27ds
        0x27es
        0x27fs
        0x280s
        0x281s
        0x282s
        0x283s
        0x284s
        0x285s
        0x286s
        0x287s
        0x288s
        0x289s
        0x28as
        0x28bs
        0x28cs
        0x28ds
        0x28es
        0x28fs
        0x290s
        0x291s
        0x292s
        0x293s
        0x294s
        0x295s
        0x296s
        0x297s
        0x298s
        0x299s
        0x29as
        0x29bs
        0x29cs
        0x29ds
        0x29es
        0x29fs
        0x2a0s
        0x2a1s
        0x2a2s
        0x2a3s
        0x2a4s
        0x2a5s
        0x2a6s
        0x2a7s
        0x2a8s
        0x2a9s
        0x2aas
        0x2abs
        0x2acs
        0x2ads
        0x2aes
        0x2afs
        0x68s
        0x266s
        0x6as
        0x72s
        0x279s
        0x27bs
        0x281s
        0x77s
        0x79s
        0x2b9s
        0x2bas
        0x2bbs
        0x2bcs
        0x2bds
        0x2bes
        0x2bfs
        0x2c0s
        0x2c1s
        0x2c2s
        0x2c3s
        0x2c4s
        0x2c5s
        0x2c6s
        0x2c7s
        0x2c8s
        0x2c9s
        0x2cas
        0x2cbs
        0x2ccs
        0x2cds
        0x2ces
        0x2cfs
        0x2d0s
        0x2d1s
        0x2d2s
        0x2d3s
        0x2d4s
        0x2d5s
        0x2d6s
        0x2d7s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x2des
        0x2dfs
        0x263s
        0x6cs
        0x73s
        0x78s
        0x295s
        0x2e5s
        0x2e6s
        0x2e7s
        0x2e8s
        0x2e9s
        0x2eas
        0x2ebs
        0x2ecs
        0x2eds
        0x2ees
        0x2efs
        0x2f0s
        0x2f1s
        0x2f2s
        0x2f3s
        0x2f4s
        0x2f5s
        0x2f6s
        0x2f7s
        0x2f8s
        0x2f9s
        0x2fas
        0x2fbs
        0x2fcs
        0x2fds
        0x2fes
        0x2ffs
        0x300s
        0x301s
        0x302s
        0x303s
        0x304s
        0x305s
        0x306s
        0x307s
        0x308s
        0x309s
        0x30as
        0x30bs
        0x30cs
        0x30ds
        0x30es
        0x30fs
        0x310s
        0x311s
        0x312s
        0x313s
        0x314s
        0x315s
        0x316s
        0x317s
        0x318s
        0x319s
        0x31as
        0x31bs
        0x31cs
        0x31ds
        0x31es
        0x31fs
        0x320s
        0x321s
        0x322s
        0x323s
        0x324s
        0x325s
        0x326s
        0x327s
        0x328s
        0x329s
        0x32as
        0x32bs
        0x32cs
        0x32ds
        0x32es
        0x32fs
        0x330s
        0x331s
        0x332s
        0x333s
        0x334s
        0x335s
        0x336s
        0x337s
        0x338s
        0x339s
        0x33as
        0x33bs
        0x33cs
        0x33ds
        0x33es
        0x33fs
        0x300s
        0x301s
        0x342s
        0x313s
        0x308s
        0x345s
        0x346s
        0x347s
        0x348s
        0x349s
        0x34as
        0x34bs
        0x34cs
        0x34ds
        0x34es
        0x34fs
        0x350s
        0x351s
        0x352s
        0x353s
        0x354s
        0x355s
        0x356s
        0x357s
        0x358s
        0x359s
        0x35as
        0x35bs
        0x35cs
        0x35ds
        0x35es
        0x35fs
        0x360s
        0x361s
        0x362s
        0x363s
        0x364s
        0x365s
        0x366s
        0x367s
        0x368s
        0x369s
        0x36as
        0x36bs
        0x36cs
        0x36ds
        0x36es
        0x36fs
        0x370s
        0x371s
        0x372s
        0x373s
        0x2b9s
        0x375s
        0x376s
        0x377s
        0x378s
        0x379s
        0x20s
        0x37bs
        0x37cs
        0x37ds
        0x3bs
        0x37fs
        0x380s
        0x381s
        0x382s
        0x383s
        0x20s
        0xa8s
        0x391s
        0xb7s
        0x395s
        0x397s
        0x399s
        0x38bs
        0x39fs
        0x38ds
        0x3a5s
        0x3a9s
        0x3cas
        0x391s
        0x392s
        0x393s
        0x394s
        0x395s
        0x396s
        0x397s
        0x398s
        0x399s
        0x39as
        0x39bs
        0x39cs
        0x39ds
        0x39es
        0x39fs
        0x3a0s
        0x3a1s
        0x3a2s
        0x3a3s
        0x3a4s
        0x3a5s
        0x3a6s
        0x3a7s
        0x3a8s
        0x3a9s
        0x399s
        0x3a5s
        0x3b1s
        0x3b5s
        0x3b7s
        0x3b9s
        0x3cbs
        0x3b1s
        0x3b2s
        0x3b3s
        0x3b4s
        0x3b5s
        0x3b6s
        0x3b7s
        0x3b8s
        0x3b9s
        0x3bas
        0x3bbs
        0x3bcs
        0x3bds
        0x3bes
        0x3bfs
        0x3c0s
        0x3c1s
        0x3c2s
        0x3c3s
        0x3c4s
        0x3c5s
        0x3c6s
        0x3c7s
        0x3c8s
        0x3c9s
        0x3b9s
        0x3c5s
        0x3bfs
        0x3c5s
        0x3c9s
        0x3cfs
        0x3b2s
        0x3b8s
        0x3a5s
        0x3d2s
        0x3d2s
        0x3c6s
        0x3c0s
        0x3d7s
        0x3d8s
        0x3d9s
        0x3das
        0x3dbs
        0x3dcs
        0x3dds
        0x3des
        0x3dfs
        0x3e0s
        0x3e1s
        0x3e2s
        0x3e3s
        0x3e4s
        0x3e5s
        0x3e6s
        0x3e7s
        0x3e8s
        0x3e9s
        0x3eas
        0x3ebs
        0x3ecs
        0x3eds
        0x3ees
        0x3efs
        0x3bas
        0x3c1s
        0x3c2s
        0x3f3s
        0x398s
        0x3b5s
        0x3f6s
        0x3f7s
        0x3f8s
        0x3a3s
        0x3fas
        0x3fbs
        0x3fcs
        0x3fds
        0x3fes
        0x3ffs
        0x415s
        0x415s
        0x402s
        0x413s
        0x404s
        0x405s
        0x406s
        0x406s
        0x408s
        0x409s
        0x40as
        0x40bs
        0x41as
        0x418s
        0x423s
        0x40fs
        0x410s
        0x411s
        0x412s
        0x413s
        0x414s
        0x415s
        0x416s
        0x417s
        0x418s
        0x418s
        0x41as
        0x41bs
        0x41cs
        0x41ds
        0x41es
        0x41fs
        0x420s
        0x421s
        0x422s
        0x423s
        0x424s
        0x425s
        0x426s
        0x427s
        0x428s
        0x429s
        0x42as
        0x42bs
        0x42cs
        0x42ds
        0x42es
        0x42fs
        0x430s
        0x431s
        0x432s
        0x433s
        0x434s
        0x435s
        0x436s
        0x437s
        0x438s
        0x438s
        0x43as
        0x43bs
        0x43cs
        0x43ds
        0x43es
        0x43fs
        0x440s
        0x441s
        0x442s
        0x443s
        0x444s
        0x445s
        0x446s
        0x447s
        0x448s
        0x449s
        0x44as
        0x44bs
        0x44cs
        0x44ds
        0x44es
        0x44fs
        0x435s
        0x435s
        0x452s
        0x433s
        0x454s
        0x455s
        0x456s
        0x456s
        0x458s
        0x459s
        0x45as
        0x45bs
        0x43as
        0x438s
        0x443s
        0x45fs
        0x460s
        0x461s
        0x462s
        0x463s
        0x464s
        0x465s
        0x466s
        0x467s
        0x468s
        0x469s
        0x46as
        0x46bs
        0x46cs
        0x46ds
        0x46es
        0x46fs
        0x470s
        0x471s
        0x472s
        0x473s
        0x474s
        0x475s
        0x474s
        0x475s
        0x478s
        0x479s
        0x47as
        0x47bs
        0x47cs
        0x47ds
        0x47es
        0x47fs
        0x480s
        0x481s
        0x482s
        0x483s
        0x484s
        0x485s
        0x486s
        0x487s
        0x488s
        0x489s
        0x48as
        0x48bs
        0x48cs
        0x48ds
        0x48es
        0x48fs
        0x490s
        0x491s
        0x492s
        0x493s
        0x494s
        0x495s
        0x496s
        0x497s
        0x498s
        0x499s
        0x49as
        0x49bs
        0x49cs
        0x49ds
        0x49es
        0x49fs
        0x4a0s
        0x4a1s
        0x4a2s
        0x4a3s
        0x4a4s
        0x4a5s
        0x4a6s
        0x4a7s
        0x4a8s
        0x4a9s
        0x4aas
        0x4abs
        0x4acs
        0x4ads
        0x4aes
        0x4afs
        0x4b0s
        0x4b1s
        0x4b2s
        0x4b3s
        0x4b4s
        0x4b5s
        0x4b6s
        0x4b7s
        0x4b8s
        0x4b9s
        0x4bas
        0x4bbs
        0x4bcs
        0x4bds
        0x4bes
        0x4bfs
        0x4c0s
        0x416s
        0x436s
        0x4c3s
        0x4c4s
        0x4c5s
        0x4c6s
        0x4c7s
        0x4c8s
        0x4c9s
        0x4cas
        0x4cbs
        0x4ccs
        0x4cds
        0x4ces
        0x4cfs
        0x410s
        0x430s
        0x410s
        0x430s
        0x4d4s
        0x4d5s
        0x415s
        0x435s
        0x4d8s
        0x4d9s
        0x4d8s
        0x4d9s
        0x416s
        0x436s
        0x417s
        0x437s
        0x4e0s
        0x4e1s
        0x418s
        0x438s
        0x418s
        0x438s
        0x41es
        0x43es
        0x4e8s
        0x4e9s
        0x4e8s
        0x4e9s
        0x42ds
        0x44ds
        0x423s
        0x443s
        0x423s
        0x443s
        0x423s
        0x443s
        0x427s
        0x447s
        0x4f6s
        0x4f7s
        0x42bs
        0x44bs
        0x4fas
        0x4fbs
        0x4fcs
        0x4fds
        0x4fes
        0x4ffs
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 98
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/Dictionary;-><init>()V

    const/16 v0, 0x20

    .line 36
    new-array v1, v0, [C

    iput-object v1, p0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->mWordBuilder:[C

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v1, p0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->sb:Ljava/lang/StringBuilder;

    .line 50
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->mUpdatingLock:Ljava/lang/Object;

    .line 99
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->mContext:Landroid/content/Context;

    .line 100
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->clearDictionary()V

    .line 101
    new-array p1, v0, [[I

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->mCodes:[[I

    .line 102
    iput p2, p0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->mDicTypeId:I

    return-void
.end method

.method static synthetic access$100(Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;)Ljava/lang/Object;
    .locals 0

    .line 28
    iget-object p0, p0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->mUpdatingLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$202(Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->mUpdatingDictionary:Z

    return p1
.end method

.method private addOrSetBigram(Ljava/lang/String;Ljava/lang/String;IZ)I
    .locals 3

    .line 341
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->mRoots:Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v2, v1}, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->searchWord(Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;Ljava/lang/String;ILorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;)Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;

    move-result-object p1

    .line 342
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->mRoots:Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;

    invoke-direct {p0, v0, p2, v2, v1}, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->searchWord(Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;Ljava/lang/String;ILorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;)Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;

    move-result-object p2

    .line 343
    iget-object v0, p1, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;->ngrams:Ljava/util/LinkedList;

    if-eqz v0, :cond_3

    .line 344
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 348
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NextWord;

    .line 349
    iget-object v2, v1, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NextWord;->word:Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;

    if-ne v2, p2, :cond_1

    if-eqz p4, :cond_2

    .line 351
    iget p1, v1, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NextWord;->frequency:I

    add-int/2addr p1, p3

    iput p1, v1, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NextWord;->frequency:I

    goto :goto_0

    .line 353
    :cond_2
    iput p3, v1, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NextWord;->frequency:I

    .line 355
    :goto_0
    iget p1, v1, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NextWord;->frequency:I

    return p1

    .line 345
    :cond_3
    :goto_1
    new-instance p4, Ljava/util/LinkedList;

    invoke-direct {p4}, Ljava/util/LinkedList;-><init>()V

    iput-object p4, p1, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;->ngrams:Ljava/util/LinkedList;

    .line 346
    iget-object p4, p1, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;->ngrams:Ljava/util/LinkedList;

    .line 359
    :cond_4
    new-instance p4, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NextWord;

    invoke-direct {p4, p2, p3}, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NextWord;-><init>(Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;I)V

    .line 360
    iget-object p1, p1, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;->ngrams:Ljava/util/LinkedList;

    invoke-virtual {p1, p4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return p3
.end method

.method private addWordRec(Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;Ljava/lang/String;IILorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;)V
    .locals 14

    move-object v0, p1

    .line 147
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 148
    invoke-virtual/range {p2 .. p3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 150
    iget v3, v0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;->length:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v5

    const/4 v5, 0x0

    :goto_0
    const/4 v7, 0x1

    if-ge v5, v3, :cond_1

    .line 154
    iget-object v6, v0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;->data:[Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;

    aget-object v6, v6, v5

    .line 155
    iget-char v8, v6, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;->code:C

    if-ne v8, v2, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v4, :cond_2

    .line 161
    new-instance v6, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;

    invoke-direct {v6}, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;-><init>()V

    .line 162
    iput-char v2, v6, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;->code:C

    move-object/from16 v2, p5

    .line 163
    iput-object v2, v6, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;->parent:Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;

    .line 164
    invoke-virtual {p1, v6}, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;->add(Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;)V

    :cond_2
    move-object v13, v6

    add-int/lit8 v11, p3, 0x1

    if-ne v1, v11, :cond_4

    .line 168
    iput-boolean v7, v13, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;->terminal:Z

    .line 169
    iget v0, v13, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;->frequency:I

    move/from16 v1, p4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v13, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;->frequency:I

    .line 170
    iget v0, v13, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;->frequency:I

    const/16 v1, 0xff

    if-le v0, v1, :cond_3

    iput v1, v13, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;->frequency:I

    :cond_3
    return-void

    :cond_4
    move/from16 v1, p4

    .line 173
    iget-object v0, v13, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;->children:Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;

    if-nez v0, :cond_5

    .line 174
    new-instance v0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;

    invoke-direct {v0}, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;-><init>()V

    iput-object v0, v13, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;->children:Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;

    .line 176
    :cond_5
    iget-object v9, v13, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;->children:Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;

    move-object v8, p0

    move-object/from16 v10, p2

    move/from16 v12, p4

    invoke-direct/range {v8 .. v13}, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->addWordRec(Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;Ljava/lang/String;IILorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;)V

    return-void
.end method

.method private reverseLookUp(Ljava/util/LinkedList;Lorg/pocketworkstation/pckeyboard/Dictionary$WordCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NextWord;",
            ">;",
            "Lorg/pocketworkstation/pckeyboard/Dictionary$WordCallback;",
            ")V"
        }
    .end annotation

    .line 446
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NextWord;

    .line 447
    iget-object v1, v0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NextWord;->word:Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;

    .line 448
    iget v6, v0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NextWord;->frequency:I

    const/16 v0, 0xc

    if-lt v6, v0, :cond_0

    .line 451
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->sb:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 453
    :cond_1
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->sb:Ljava/lang/StringBuilder;

    iget-char v3, v1, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;->code:C

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 454
    iget-object v1, v1, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;->parent:Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;

    if-nez v1, :cond_1

    .line 458
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    iget v7, p0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->mDicTypeId:I

    sget-object v8, Lorg/pocketworkstation/pckeyboard/Dictionary$DataType;->BIGRAM:Lorg/pocketworkstation/pckeyboard/Dictionary$DataType;

    move-object v2, p2

    invoke-interface/range {v2 .. v8}, Lorg/pocketworkstation/pckeyboard/Dictionary$WordCallback;->addWord([CIIIILorg/pocketworkstation/pckeyboard/Dictionary$DataType;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private runReverseLookUp(Ljava/lang/CharSequence;Lorg/pocketworkstation/pckeyboard/Dictionary$WordCallback;)V
    .locals 3

    .line 410
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->mRoots:Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v2, v1}, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->searchNode(Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;Ljava/lang/CharSequence;II)Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 411
    iget-object v0, p1, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;->ngrams:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 412
    iget-object p1, p1, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;->ngrams:Ljava/util/LinkedList;

    invoke-direct {p0, p1, p2}, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->reverseLookUp(Ljava/util/LinkedList;Lorg/pocketworkstation/pckeyboard/Dictionary$WordCallback;)V

    :cond_0
    return-void
.end method

.method private searchNode(Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;Ljava/lang/CharSequence;II)Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;
    .locals 5

    .line 471
    iget v0, p1, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;->length:I

    .line 472
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 474
    iget-object v3, p1, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;->data:[Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;

    aget-object v3, v3, v2

    .line 475
    iget-char v4, v3, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;->code:C

    if-ne v4, v1, :cond_1

    add-int/lit8 v4, p4, -0x1

    if-ne p3, v4, :cond_0

    .line 477
    iget-boolean v4, v3, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;->terminal:Z

    if-eqz v4, :cond_1

    return-object v3

    .line 481
    :cond_0
    iget-object v4, v3, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;->children:Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;

    if-eqz v4, :cond_1

    .line 482
    iget-object v3, v3, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;->children:Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;

    add-int/lit8 v4, p3, 0x1

    invoke-direct {p0, v3, p2, v4, p4}, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->searchNode(Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;Ljava/lang/CharSequence;II)Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;

    move-result-object v3

    if-eqz v3, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private searchWord(Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;Ljava/lang/String;ILorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;)Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;
    .locals 8

    .line 369
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 370
    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 372
    iget v2, p1, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;->length:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v4

    const/4 v4, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v4, v2, :cond_1

    .line 376
    iget-object v5, p1, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;->data:[Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;

    aget-object v5, v5, v4

    .line 377
    iget-char v7, v5, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;->code:C

    if-ne v7, v1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v3, :cond_2

    .line 383
    new-instance v5, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;

    invoke-direct {v5}, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;-><init>()V

    .line 384
    iput-char v1, v5, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;->code:C

    .line 385
    iput-object p4, v5, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;->parent:Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;

    .line 386
    invoke-virtual {p1, v5}, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;->add(Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;)V

    :cond_2
    add-int/2addr p3, v6

    if-ne v0, p3, :cond_3

    .line 390
    iput-boolean v6, v5, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;->terminal:Z

    return-object v5

    .line 393
    :cond_3
    iget-object p1, v5, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;->children:Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;

    if-nez p1, :cond_4

    .line 394
    new-instance p1, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;

    invoke-direct {p1}, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;-><init>()V

    iput-object p1, v5, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;->children:Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;

    .line 396
    :cond_4
    iget-object p1, v5, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;->children:Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;

    invoke-direct {p0, p1, p2, p3, v5}, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->searchWord(Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;Ljava/lang/String;ILorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;)Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;

    move-result-object p1

    return-object p1
.end method

.method static toLowerCase(C)C
    .locals 1

    .line 507
    sget-object v0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->BASE_CHARS:[C

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 508
    sget-object v0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->BASE_CHARS:[C

    aget-char p0, v0, p0

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1

    or-int/lit8 p0, p0, 0x20

    int-to-char p0, p0

    goto :goto_0

    :cond_1
    const/16 v0, 0x7f

    if-le p0, v0, :cond_2

    .line 513
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p0

    :cond_2
    :goto_0
    return p0
.end method


# virtual methods
.method protected addBigram(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x1

    .line 331
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->addOrSetBigram(Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result p1

    return p1
.end method

.method public addWord(Ljava/lang/String;I)V
    .locals 6

    .line 142
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->mRoots:Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->addWordRec(Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;Ljava/lang/String;IILorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;)V

    return-void
.end method

.method protected clearDictionary()V
    .locals 1

    .line 492
    new-instance v0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;

    invoke-direct {v0}, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;-><init>()V

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->mRoots:Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;

    return-void
.end method

.method public getBigrams(Lorg/pocketworkstation/pckeyboard/WordComposer;Ljava/lang/CharSequence;Lorg/pocketworkstation/pckeyboard/Dictionary$WordCallback;[I)V
    .locals 0

    .line 419
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->reloadDictionaryIfRequired()Z

    move-result p1

    if-nez p1, :cond_0

    .line 420
    invoke-direct {p0, p2, p3}, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->runReverseLookUp(Ljava/lang/CharSequence;Lorg/pocketworkstation/pckeyboard/Dictionary$WordCallback;)V

    :cond_0
    return-void
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getMaxWordLength()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public getRequiresReload()Z
    .locals 1

    .line 126
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->mRequiresReload:Z

    return v0
.end method

.method public getWordFrequency(Ljava/lang/CharSequence;)I
    .locals 3

    .line 218
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->mRoots:Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v2, v1}, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->searchNode(Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;Ljava/lang/CharSequence;II)Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 219
    :cond_0
    iget p1, p1, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;->frequency:I

    :goto_0
    return p1
.end method

.method public getWords(Lorg/pocketworkstation/pckeyboard/WordComposer;Lorg/pocketworkstation/pckeyboard/Dictionary$WordCallback;[I)V
    .locals 13

    move-object v11, p0

    .line 182
    iget-object v1, v11, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->mUpdatingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 184
    :try_start_0
    iget-boolean v0, v11, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->mRequiresReload:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->startDictionaryLoadingTaskLocked()V

    .line 186
    :cond_0
    iget-boolean v0, v11, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->mUpdatingDictionary:Z

    if-eqz v0, :cond_1

    monitor-exit v1

    return-void

    .line 187
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/WordComposer;->size()I

    move-result v0

    iput v0, v11, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->mInputLength:I

    move-object/from16 v0, p3

    .line 190
    iput-object v0, v11, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->mNextLettersFrequencies:[I

    .line 191
    iget-object v0, v11, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->mCodes:[[I

    array-length v0, v0

    iget v1, v11, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->mInputLength:I

    if-ge v0, v1, :cond_2

    iget v0, v11, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->mInputLength:I

    new-array v0, v0, [[I

    iput-object v0, v11, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->mCodes:[[I

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 193
    :goto_0
    iget v2, v11, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->mInputLength:I

    if-ge v1, v2, :cond_3

    .line 194
    iget-object v2, v11, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->mCodes:[[I

    move-object v12, p1

    invoke-virtual {p1, v1}, Lorg/pocketworkstation/pckeyboard/WordComposer;->getCodesAt(I)[I

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move-object v12, p1

    .line 196
    iget v1, v11, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->mInputLength:I

    mul-int/lit8 v1, v1, 0x3

    iput v1, v11, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->mMaxDepth:I

    .line 197
    iget-object v2, v11, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->mRoots:Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;

    iget-object v4, v11, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->mWordBuilder:[C

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    move-object v1, p0

    move-object v3, p1

    move-object v10, p2

    invoke-virtual/range {v1 .. v10}, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->getWordsRec(Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;Lorg/pocketworkstation/pckeyboard/WordComposer;[CIZIIILorg/pocketworkstation/pckeyboard/Dictionary$WordCallback;)V

    .line 198
    :goto_1
    iget v1, v11, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->mInputLength:I

    if-ge v0, v1, :cond_4

    .line 199
    iget-object v2, v11, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->mRoots:Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;

    iget-object v4, v11, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->mWordBuilder:[C

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    move-object v3, p1

    move v9, v0

    move-object v10, p2

    invoke-virtual/range {v1 .. v10}, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->getWordsRec(Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;Lorg/pocketworkstation/pckeyboard/WordComposer;[CIZIIILorg/pocketworkstation/pckeyboard/Dictionary$WordCallback;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    .line 187
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected getWordsRec(Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;Lorg/pocketworkstation/pckeyboard/WordComposer;[CIZIIILorg/pocketworkstation/pckeyboard/Dictionary$WordCallback;)V
    .locals 31

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p3

    move/from16 v13, p4

    move/from16 v15, p7

    move/from16 v9, p8

    .line 244
    iget v8, v11, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;->length:I

    .line 245
    iget v7, v10, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->mInputLength:I

    .line 247
    iget v0, v10, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->mMaxDepth:I

    if-le v13, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/16 v16, 0x1

    if-gt v7, v15, :cond_1

    move-object v6, v0

    const/16 v17, 0x1

    goto :goto_0

    .line 254
    :cond_1
    iget-object v0, v10, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->mCodes:[[I

    aget-object v0, v0, v15

    move/from16 v17, p5

    move-object v6, v0

    :goto_0
    const/16 v18, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v8, :cond_16

    .line 258
    iget-object v0, v11, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;->data:[Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;

    aget-object v0, v0, v5

    .line 259
    iget-char v4, v0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;->code:C

    .line 260
    invoke-static {v4}, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->toLowerCase(C)C

    move-result v3

    .line 261
    iget-boolean v2, v0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;->terminal:Z

    .line 262
    iget-object v1, v0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;->children:Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;

    .line 263
    iget v0, v0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;->frequency:I

    if-eqz v17, :cond_7

    .line 265
    aput-char v4, v12, v13

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    add-int/lit8 v3, v13, 0x1

    mul-int v4, v0, p6

    .line 267
    iget v0, v10, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->mDicTypeId:I

    sget-object v19, Lorg/pocketworkstation/pckeyboard/Dictionary$DataType;->UNIGRAM:Lorg/pocketworkstation/pckeyboard/Dictionary$DataType;

    move/from16 v20, v0

    move-object/from16 v0, p9

    move-object/from16 v21, v1

    move-object/from16 v1, p3

    move/from16 v22, v5

    move/from16 v5, v20

    move-object v11, v6

    move-object/from16 v6, v19

    invoke-interface/range {v0 .. v6}, Lorg/pocketworkstation/pckeyboard/Dictionary$WordCallback;->addWord([CIIIILorg/pocketworkstation/pckeyboard/Dictionary$DataType;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 272
    :cond_2
    iget-object v0, v10, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->mNextLettersFrequencies:[I

    if-eqz v0, :cond_4

    if-lt v13, v15, :cond_4

    if-gez v9, :cond_4

    iget-object v0, v10, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->mNextLettersFrequencies:[I

    array-length v0, v0

    aget-char v1, v12, v15

    if-le v0, v1, :cond_4

    .line 274
    iget-object v0, v10, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->mNextLettersFrequencies:[I

    aget-char v1, v12, v15

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    goto :goto_2

    :cond_3
    move-object/from16 v21, v1

    move/from16 v22, v5

    move-object v11, v6

    :cond_4
    :goto_2
    if-eqz v21, :cond_6

    add-int/lit8 v4, v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v5, v17

    move/from16 v6, p6

    move v14, v7

    move/from16 v7, p7

    move/from16 v19, v8

    move/from16 v8, p8

    move v10, v9

    move-object/from16 v9, p9

    .line 278
    invoke-virtual/range {v0 .. v9}, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->getWordsRec(Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;Lorg/pocketworkstation/pckeyboard/WordComposer;[CIZIIILorg/pocketworkstation/pckeyboard/Dictionary$WordCallback;)V

    :cond_5
    :goto_3
    move/from16 v20, v10

    move/from16 v23, v14

    goto :goto_4

    :cond_6
    move/from16 v19, v8

    move/from16 v23, v7

    move/from16 v20, v9

    :goto_4
    move-object/from16 v10, p0

    goto/16 :goto_b

    :cond_7
    move-object/from16 v21, v1

    move/from16 v22, v5

    move-object v11, v6

    move v14, v7

    move/from16 v19, v8

    move v10, v9

    const/16 v1, 0x27

    if-ne v4, v1, :cond_8

    .line 281
    aget v5, v11, v18

    if-ne v5, v1, :cond_9

    :cond_8
    if-ne v13, v10, :cond_a

    .line 283
    :cond_9
    aput-char v4, v12, v13

    if-eqz v21, :cond_5

    add-int/lit8 v4, v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v5, v17

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    .line 285
    invoke-virtual/range {v0 .. v9}, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->getWordsRec(Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;Lorg/pocketworkstation/pckeyboard/WordComposer;[CIZIIILorg/pocketworkstation/pckeyboard/Dictionary$WordCallback;)V

    goto :goto_3

    :cond_a
    if-ltz v10, :cond_b

    const/4 v9, 0x1

    goto :goto_5

    .line 290
    :cond_b
    array-length v1, v11

    move v9, v1

    :goto_5
    const/4 v8, 0x0

    :goto_6
    if-ge v8, v9, :cond_5

    if-lez v8, :cond_c

    const/4 v7, 0x1

    goto :goto_7

    :cond_c
    const/4 v1, 0x2

    const/4 v7, 0x2

    .line 293
    :goto_7
    aget v1, v11, v8

    const/4 v5, -0x1

    if-ne v1, v5, :cond_d

    goto :goto_3

    :cond_d
    if-eq v1, v3, :cond_f

    if-ne v1, v4, :cond_e

    goto :goto_8

    :cond_e
    move/from16 v27, v0

    move/from16 v29, v2

    move/from16 v25, v3

    move/from16 v30, v4

    move/from16 v26, v8

    move/from16 v28, v9

    move/from16 v20, v10

    move/from16 v23, v14

    move-object/from16 v10, p0

    goto/16 :goto_a

    .line 298
    :cond_f
    :goto_8
    aput-char v4, v12, v13

    add-int/lit8 v6, v15, 0x1

    if-ne v14, v6, :cond_14

    if-eqz v2, :cond_12

    add-int/lit8 v5, v13, 0x1

    .line 303
    invoke-virtual/range {p2 .. p2}, Lorg/pocketworkstation/pckeyboard/WordComposer;->getTypedWord()Ljava/lang/CharSequence;

    move-result-object v1

    move/from16 v20, v10

    move-object/from16 v10, p0

    invoke-virtual {v10, v12, v5, v1}, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->same([CILjava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    move/from16 v23, v14

    mul-int v1, v0, p6

    mul-int v1, v1, v7

    if-gez v20, :cond_10

    mul-int/lit8 v1, v1, 0x2

    :cond_10
    move/from16 v24, v1

    const/16 v25, 0x0

    .line 306
    iget v1, v10, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->mDicTypeId:I

    sget-object v26, Lorg/pocketworkstation/pckeyboard/Dictionary$DataType;->UNIGRAM:Lorg/pocketworkstation/pckeyboard/Dictionary$DataType;

    move/from16 v27, v0

    move-object/from16 v0, p9

    move/from16 v28, v1

    move-object/from16 v1, p3

    move/from16 v29, v2

    move/from16 v2, v25

    move/from16 v25, v3

    move v3, v5

    move/from16 v30, v4

    move/from16 v4, v24

    move/from16 v5, v28

    move/from16 v24, v6

    move-object/from16 v6, v26

    invoke-interface/range {v0 .. v6}, Lorg/pocketworkstation/pckeyboard/Dictionary$WordCallback;->addWord([CIIIILorg/pocketworkstation/pckeyboard/Dictionary$DataType;)Z

    goto :goto_9

    :cond_11
    move/from16 v27, v0

    move/from16 v29, v2

    move/from16 v25, v3

    move/from16 v30, v4

    move/from16 v24, v6

    move/from16 v23, v14

    goto :goto_9

    :cond_12
    move/from16 v27, v0

    move/from16 v29, v2

    move/from16 v25, v3

    move/from16 v30, v4

    move/from16 v24, v6

    move/from16 v20, v10

    move/from16 v23, v14

    move-object/from16 v10, p0

    :goto_9
    if-eqz v21, :cond_13

    add-int/lit8 v4, v13, 0x1

    const/4 v5, 0x1

    mul-int v6, p6, v7

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v7, v24

    move/from16 v26, v8

    move/from16 v8, p8

    move/from16 v28, v9

    move-object/from16 v9, p9

    .line 311
    invoke-virtual/range {v0 .. v9}, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->getWordsRec(Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;Lorg/pocketworkstation/pckeyboard/WordComposer;[CIZIIILorg/pocketworkstation/pckeyboard/Dictionary$WordCallback;)V

    goto :goto_a

    :cond_13
    move/from16 v26, v8

    move/from16 v28, v9

    goto :goto_a

    :cond_14
    move/from16 v27, v0

    move/from16 v29, v2

    move/from16 v25, v3

    move/from16 v30, v4

    move/from16 v24, v6

    move/from16 v26, v8

    move/from16 v28, v9

    move/from16 v20, v10

    move/from16 v23, v14

    move-object/from16 v10, p0

    if-eqz v21, :cond_15

    add-int/lit8 v4, v13, 0x1

    const/4 v5, 0x0

    mul-int v6, p6, v7

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v7, v24

    move/from16 v8, p8

    move-object/from16 v9, p9

    .line 316
    invoke-virtual/range {v0 .. v9}, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->getWordsRec(Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;Lorg/pocketworkstation/pckeyboard/WordComposer;[CIZIIILorg/pocketworkstation/pckeyboard/Dictionary$WordCallback;)V

    :cond_15
    :goto_a
    add-int/lit8 v8, v26, 0x1

    move/from16 v10, v20

    move/from16 v14, v23

    move/from16 v3, v25

    move/from16 v0, v27

    move/from16 v9, v28

    move/from16 v2, v29

    move/from16 v4, v30

    goto/16 :goto_6

    :goto_b
    add-int/lit8 v5, v22, 0x1

    move-object v6, v11

    move/from16 v8, v19

    move/from16 v9, v20

    move/from16 v7, v23

    move-object/from16 v11, p1

    goto/16 :goto_1

    :cond_16
    return-void
.end method

.method public declared-synchronized isValidWord(Ljava/lang/CharSequence;)Z
    .locals 3

    monitor-enter p0

    .line 205
    :try_start_0
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->mUpdatingLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 207
    :try_start_1
    iget-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->mRequiresReload:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->startDictionaryLoadingTaskLocked()V

    .line 208
    :cond_0
    iget-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->mUpdatingDictionary:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v2

    .line 209
    :cond_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 210
    :try_start_3
    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->getWordFrequency(Ljava/lang/CharSequence;)I

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v0, -0x1

    if-le p1, v0, :cond_2

    const/4 v2, 0x1

    .line 211
    :cond_2
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    .line 209
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    .line 204
    monitor-exit p0

    throw p1
.end method

.method public loadDictionary()V
    .locals 2

    .line 106
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->mUpdatingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    :try_start_0
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->startDictionaryLoadingTaskLocked()V

    .line 108
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public loadDictionaryAsync()V
    .locals 0

    return-void
.end method

.method reloadDictionaryIfRequired()Z
    .locals 2

    .line 401
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->mUpdatingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 403
    :try_start_0
    iget-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->mRequiresReload:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->startDictionaryLoadingTaskLocked()V

    .line 405
    :cond_0
    iget-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->mUpdatingDictionary:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 406
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected setBigram(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x0

    .line 327
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->addOrSetBigram(Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result p1

    return p1
.end method

.method public setRequiresReload(Z)V
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->mUpdatingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_0
    iput-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->mRequiresReload:Z

    .line 122
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public startDictionaryLoadingTaskLocked()V
    .locals 3

    .line 112
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->mUpdatingDictionary:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->mUpdatingDictionary:Z

    const/4 v0, 0x0

    .line 114
    iput-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->mRequiresReload:Z

    .line 115
    new-instance v1, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$LoadDictionaryTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$LoadDictionaryTask;-><init>(Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$1;)V

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$LoadDictionaryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method waitForDictionaryLoading()V
    .locals 2

    .line 429
    :goto_0
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->mUpdatingDictionary:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x64

    .line 431
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_0
    return-void
.end method
