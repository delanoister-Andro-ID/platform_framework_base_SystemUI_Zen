.class public interface abstract Lcom/asus/quickclean/IBoost;
.super Ljava/lang/Object;
.source "IBoost.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/quickclean/IBoost$Stub;
    }
.end annotation


# virtual methods
.method public abstract boost()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getAvailableMemo()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
