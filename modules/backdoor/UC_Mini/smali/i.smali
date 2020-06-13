.class final Li;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/xmlpull/v1/XmlSerializer;


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private final b:[C

.field private c:I

.field private d:Ljava/io/Writer;

.field private e:Ljava/io/OutputStream;

.field private f:Ljava/nio/charset/CharsetEncoder;

.field private g:Ljava/nio/ByteBuffer;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v3, v0, v1

    const/4 v1, 0x1

    aput-object v3, v0, v1

    const/4 v1, 0x2

    aput-object v3, v0, v1

    const/4 v1, 0x3

    aput-object v3, v0, v1

    const/4 v1, 0x4

    aput-object v3, v0, v1

    const/4 v1, 0x5

    aput-object v3, v0, v1

    const/4 v1, 0x6

    aput-object v3, v0, v1

    const/4 v1, 0x7

    aput-object v3, v0, v1

    const/16 v1, 0x8

    aput-object v3, v0, v1

    const/16 v1, 0x9

    aput-object v3, v0, v1

    const/16 v1, 0xa

    aput-object v3, v0, v1

    const/16 v1, 0xb

    aput-object v3, v0, v1

    const/16 v1, 0xc

    aput-object v3, v0, v1

    const/16 v1, 0xd

    aput-object v3, v0, v1

    const/16 v1, 0xe

    aput-object v3, v0, v1

    const/16 v1, 0xf

    aput-object v3, v0, v1

    const/16 v1, 0x10

    aput-object v3, v0, v1

    const/16 v1, 0x11

    aput-object v3, v0, v1

    const/16 v1, 0x12

    aput-object v3, v0, v1

    const/16 v1, 0x13

    aput-object v3, v0, v1

    const/16 v1, 0x14

    aput-object v3, v0, v1

    const/16 v1, 0x15

    aput-object v3, v0, v1

    const/16 v1, 0x16

    aput-object v3, v0, v1

    const/16 v1, 0x17

    aput-object v3, v0, v1

    const/16 v1, 0x18

    aput-object v3, v0, v1

    const/16 v1, 0x19

    aput-object v3, v0, v1

    const/16 v1, 0x1a

    aput-object v3, v0, v1

    const/16 v1, 0x1b

    aput-object v3, v0, v1

    const/16 v1, 0x1c

    aput-object v3, v0, v1

    const/16 v1, 0x1d

    aput-object v3, v0, v1

    const/16 v1, 0x1e

    aput-object v3, v0, v1

    const/16 v1, 0x1f

    aput-object v3, v0, v1

    const/16 v1, 0x20

    aput-object v3, v0, v1

    const/16 v1, 0x21

    aput-object v3, v0, v1

    const/16 v1, 0x22

    const-string v2, "&quot;"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    aput-object v3, v0, v1

    const/16 v1, 0x24

    aput-object v3, v0, v1

    const/16 v1, 0x25

    aput-object v3, v0, v1

    const/16 v1, 0x26

    const-string v2, "&amp;"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    aput-object v3, v0, v1

    const/16 v1, 0x28

    aput-object v3, v0, v1

    const/16 v1, 0x29

    aput-object v3, v0, v1

    const/16 v1, 0x2a

    aput-object v3, v0, v1

    const/16 v1, 0x2b

    aput-object v3, v0, v1

    const/16 v1, 0x2c

    aput-object v3, v0, v1

    const/16 v1, 0x2d

    aput-object v3, v0, v1

    const/16 v1, 0x2e

    aput-object v3, v0, v1

    const/16 v1, 0x2f

    aput-object v3, v0, v1

    const/16 v1, 0x30

    aput-object v3, v0, v1

    const/16 v1, 0x31

    aput-object v3, v0, v1

    const/16 v1, 0x32

    aput-object v3, v0, v1

    const/16 v1, 0x33

    aput-object v3, v0, v1

    const/16 v1, 0x34

    aput-object v3, v0, v1

    const/16 v1, 0x35

    aput-object v3, v0, v1

    const/16 v1, 0x36

    aput-object v3, v0, v1

    const/16 v1, 0x37

    aput-object v3, v0, v1

    const/16 v1, 0x38

    aput-object v3, v0, v1

    const/16 v1, 0x39

    aput-object v3, v0, v1

    const/16 v1, 0x3a

    aput-object v3, v0, v1

    const/16 v1, 0x3b

    aput-object v3, v0, v1

    const/16 v1, 0x3c

    const-string v2, "&lt;"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    aput-object v3, v0, v1

    const/16 v1, 0x3e

    const-string v2, "&gt;"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    aput-object v3, v0, v1

    sput-object v0, Li;->a:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/16 v1, 0x2000

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [C

    iput-object v0, p0, Li;->b:[C

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Li;->g:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Li;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Li;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v1, p0, Li;->e:Ljava/io/OutputStream;

    iget-object v2, p0, Li;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    iget-object v0, p0, Li;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_0
    return-void
.end method

.method private a(C)V
    .locals 2

    iget v0, p0, Li;->c:I

    const/16 v1, 0x1fff

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Li;->flush()V

    iget v0, p0, Li;->c:I

    :cond_0
    iget-object v1, p0, Li;->b:[C

    aput-char p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Li;->c:I

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Li;->a(Ljava/lang/String;II)V

    return-void
.end method

.method private a(Ljava/lang/String;II)V
    .locals 4

    const/16 v1, 0x2000

    if-le p3, v1, :cond_1

    add-int v3, p2, p3

    :goto_0
    if-ge p2, v3, :cond_3

    add-int/lit16 v2, p2, 0x2000

    if-ge v2, v3, :cond_0

    move v0, v1

    :goto_1
    invoke-direct {p0, p1, p2, v0}, Li;->a(Ljava/lang/String;II)V

    move p2, v2

    goto :goto_0

    :cond_0
    sub-int v0, v3, p2

    goto :goto_1

    :cond_1
    iget v0, p0, Li;->c:I

    add-int v2, v0, p3

    if-le v2, v1, :cond_2

    invoke-virtual {p0}, Li;->flush()V

    iget v0, p0, Li;->c:I

    :cond_2
    add-int v1, p2, p3

    iget-object v2, p0, Li;->b:[C

    invoke-virtual {p1, p2, v1, v2, v0}, Ljava/lang/String;->getChars(II[CI)V

    add-int/2addr v0, p3

    iput v0, p0, Li;->c:I

    :cond_3
    return-void
.end method

.method private a([CII)V
    .locals 4

    const/16 v1, 0x2000

    if-le p3, v1, :cond_1

    add-int v3, p2, p3

    :goto_0
    if-ge p2, v3, :cond_3

    add-int/lit16 v2, p2, 0x2000

    if-ge v2, v3, :cond_0

    move v0, v1

    :goto_1
    invoke-direct {p0, p1, p2, v0}, Li;->a([CII)V

    move p2, v2

    goto :goto_0

    :cond_0
    sub-int v0, v3, p2

    goto :goto_1

    :cond_1
    iget v0, p0, Li;->c:I

    add-int v2, v0, p3

    if-le v2, v1, :cond_2

    invoke-virtual {p0}, Li;->flush()V

    iget v0, p0, Li;->c:I

    :cond_2
    iget-object v1, p0, Li;->b:[C

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, p3

    iput v0, p0, Li;->c:I

    :cond_3
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sget-object v3, Li;->a:[Ljava/lang/String;

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x40

    if-ge v4, v5, :cond_1

    aget-object v4, v3, v4

    if-eqz v4, :cond_1

    if-ge v0, v1, :cond_0

    sub-int v5, v1, v0

    invoke-direct {p0, p1, v0, v5}, Li;->a(Ljava/lang/String;II)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    invoke-direct {p0, v4}, Li;->a(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-ge v0, v1, :cond_3

    sub-int/2addr v1, v0

    invoke-direct {p0, p1, v0, v1}, Li;->a(Ljava/lang/String;II)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Li;->a(C)V

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Li;->a(Ljava/lang/String;)V

    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Li;->a(C)V

    :cond_0
    invoke-direct {p0, p2}, Li;->a(Ljava/lang/String;)V

    const-string v0, "=\""

    invoke-direct {p0, v0}, Li;->a(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Li;->b(Ljava/lang/String;)V

    const/16 v0, 0x22

    invoke-direct {p0, v0}, Li;->a(C)V

    return-object p0
.end method

.method public final cdsect(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final comment(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final docdecl(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final endDocument()V
    .locals 0

    invoke-virtual {p0}, Li;->flush()V

    return-void
.end method

.method public final endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1

    iget-boolean v0, p0, Li;->h:Z

    if-eqz v0, :cond_0

    const-string v0, " />\n"

    invoke-direct {p0, v0}, Li;->a(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Li;->h:Z

    return-object p0

    :cond_0
    const-string v0, "</"

    invoke-direct {p0, v0}, Li;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Li;->a(Ljava/lang/String;)V

    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Li;->a(C)V

    :cond_1
    invoke-direct {p0, p2}, Li;->a(Ljava/lang/String;)V

    const-string v0, ">\n"

    invoke-direct {p0, v0}, Li;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final entityRef(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final flush()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p0, Li;->c:I

    if-lez v0, :cond_2

    iget-object v0, p0, Li;->e:Ljava/io/OutputStream;

    if-eqz v0, :cond_3

    iget-object v0, p0, Li;->b:[C

    iget v1, p0, Li;->c:I

    invoke-static {v0, v3, v1}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v1

    iget-object v0, p0, Li;->f:Ljava/nio/charset/CharsetEncoder;

    iget-object v2, p0, Li;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1, v2, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Li;->a()V

    iget-object v0, p0, Li;->f:Ljava/nio/charset/CharsetEncoder;

    iget-object v2, p0, Li;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1, v2, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Li;->a()V

    iget-object v0, p0, Li;->e:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    :goto_1
    iput v3, p0, Li;->c:I

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Li;->d:Ljava/io/Writer;

    iget-object v1, p0, Li;->b:[C

    iget v2, p0, Li;->c:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/Writer;->write([CII)V

    iget-object v0, p0, Li;->d:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    goto :goto_1
.end method

.method public final getDepth()I
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final getFeature(Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final getNamespace()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final getPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final ignorableWhitespace(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final processingInstruction(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final setFeature(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Li;->f:Ljava/nio/charset/CharsetEncoder;
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_1

    iput-object p1, p0, Li;->e:Ljava/io/OutputStream;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/UnsupportedEncodingException;

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/UnsupportedEncodingException;

    throw v0
.end method

.method public final setOutput(Ljava/io/Writer;)V
    .locals 0

    iput-object p1, p0, Li;->d:Ljava/io/Writer;

    return-void
.end method

.method public final setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "<?xml version=\'1.0\' encoding=\'utf-8\' standalone=\'"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "yes"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' ?>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Li;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "no"

    goto :goto_0
.end method

.method public final startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1

    iget-boolean v0, p0, Li;->h:Z

    if-eqz v0, :cond_0

    const-string v0, ">\n"

    invoke-direct {p0, v0}, Li;->a(Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Li;->a(C)V

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Li;->a(Ljava/lang/String;)V

    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Li;->a(C)V

    :cond_1
    invoke-direct {p0, p2}, Li;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Li;->h:Z

    return-object p0
.end method

.method public final text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1

    iget-boolean v0, p0, Li;->h:Z

    if-eqz v0, :cond_0

    const-string v0, ">"

    invoke-direct {p0, v0}, Li;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Li;->h:Z

    :cond_0
    invoke-direct {p0, p1}, Li;->b(Ljava/lang/String;)V

    return-object p0
.end method

.method public final text([CII)Lorg/xmlpull/v1/XmlSerializer;
    .locals 5

    iget-boolean v0, p0, Li;->h:Z

    if-eqz v0, :cond_0

    const-string v0, ">"

    invoke-direct {p0, v0}, Li;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Li;->h:Z

    :cond_0
    sget-object v1, Li;->a:[Ljava/lang/String;

    add-int v2, p2, p3

    move v0, p2

    :goto_0
    if-ge p2, v2, :cond_3

    aget-char v3, p1, p2

    const/16 v4, 0x40

    if-ge v3, v4, :cond_2

    aget-object v3, v1, v3

    if-eqz v3, :cond_2

    if-ge v0, p2, :cond_1

    sub-int v4, p2, v0

    invoke-direct {p0, p1, v0, v4}, Li;->a([CII)V

    :cond_1
    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, v3}, Li;->a(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    if-ge v0, p2, :cond_4

    sub-int v1, p2, v0

    invoke-direct {p0, p1, v0, v1}, Li;->a([CII)V

    :cond_4
    return-object p0
.end method
