.class public Lio/jsonwebtoken/impl/crypto/EllipticCurveSignatureValidator;
.super Lio/jsonwebtoken/impl/crypto/EllipticCurveProvider;
.source "SourceFile"

# interfaces
.implements Lio/jsonwebtoken/impl/crypto/SignatureValidator;


# static fields
.field private static final DER_ENCODING_SYS_PROPERTY_NAME:Ljava/lang/String; = "io.jsonwebtoken.impl.crypto.EllipticCurveSignatureValidator.derEncodingSupported"

.field private static final EC_PUBLIC_KEY_REQD_MSG:Ljava/lang/String; = "Elliptic Curve signature validation requires an ECPublicKey instance."


# direct methods
.method public constructor <init>(Lio/jsonwebtoken/SignatureAlgorithm;Ljava/security/Key;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/jsonwebtoken/impl/crypto/EllipticCurveProvider;-><init>(Lio/jsonwebtoken/SignatureAlgorithm;Ljava/security/Key;)V

    instance-of p1, p2, Ljava/security/interfaces/ECPublicKey;

    const-string p2, "Elliptic Curve signature validation requires an ECPublicKey instance."

    invoke-static {p1, p2}, Lio/jsonwebtoken/lang/Assert;->isTrue(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doVerify(Ljava/security/Signature;Ljava/security/PublicKey;[B[B)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    invoke-virtual {p1, p3}, Ljava/security/Signature;->update([B)V

    invoke-virtual {p1, p4}, Ljava/security/Signature;->verify([B)Z

    move-result p1

    return p1
.end method

.method public isValid([B[B)Z
    .locals 9

    invoke-virtual {p0}, Lio/jsonwebtoken/impl/crypto/SignatureProvider;->createSignatureInstance()Ljava/security/Signature;

    move-result-object v0

    iget-object v1, p0, Lio/jsonwebtoken/impl/crypto/SignatureProvider;->key:Ljava/security/Key;

    check-cast v1, Ljava/security/PublicKey;

    :try_start_0
    iget-object v2, p0, Lio/jsonwebtoken/impl/crypto/SignatureProvider;->alg:Lio/jsonwebtoken/SignatureAlgorithm;

    invoke-static {v2}, Lio/jsonwebtoken/impl/crypto/EllipticCurveProvider;->getSignatureByteArrayLength(Lio/jsonwebtoken/SignatureAlgorithm;)I

    move-result v2

    array-length v3, p2

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    aget-byte v3, p2, v4

    const/16 v4, 0x30

    if-ne v3, v4, :cond_0

    const-string v3, "true"

    const-string v4, "io.jsonwebtoken.impl.crypto.EllipticCurveSignatureValidator.derEncodingSupported"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Provided signature is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p2

    invoke-static {p2}, Lio/jsonwebtoken/impl/crypto/EllipticCurveProvider;->byteSizeString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " but "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lio/jsonwebtoken/impl/crypto/SignatureProvider;->alg:Lio/jsonwebtoken/SignatureAlgorithm;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " signatures must be exactly "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lio/jsonwebtoken/impl/crypto/EllipticCurveProvider;->byteSizeString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " per "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "[RFC 7518, Section 3.4 (validation)](https://datatracker.ietf.org/doc/html/rfc7518#section-3.4)."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lio/jsonwebtoken/security/SignatureException;

    invoke-direct {p2, p1}, Lio/jsonwebtoken/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    move-object v2, v1

    check-cast v2, Ljava/security/interfaces/ECKey;

    invoke-interface {v2}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v2

    new-instance v3, Ljava/math/BigInteger;

    iget v5, p0, Lio/jsonwebtoken/impl/crypto/EllipticCurveProvider;->fieldByteLength:I

    invoke-static {p2, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v3, v6, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v5, Ljava/math/BigInteger;

    iget v7, p0, Lio/jsonwebtoken/impl/crypto/EllipticCurveProvider;->fieldByteLength:I

    array-length v8, p2

    invoke-static {p2, v7, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v3}, Ljava/math/BigInteger;->signum()I

    move-result v7

    if-lt v7, v6, :cond_3

    invoke-virtual {v5}, Ljava/math/BigInteger;->signum()I

    move-result v7

    if-lt v7, v6, :cond_3

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gez v3, :cond_3

    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p2}, Lio/jsonwebtoken/impl/crypto/EllipticCurveProvider;->transcodeConcatToDER([B)[B

    move-result-object p2

    :goto_0
    invoke-virtual {p0, v0, v1, p1, p2}, Lio/jsonwebtoken/impl/crypto/EllipticCurveSignatureValidator;->doVerify(Ljava/security/Signature;Ljava/security/PublicKey;[B[B)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_3
    :goto_1
    return v4

    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to verify Elliptic Curve signature using configured ECPublicKey. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lio/jsonwebtoken/security/SignatureException;

    invoke-direct {v0, p2, p1}, Lio/jsonwebtoken/security/SignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
