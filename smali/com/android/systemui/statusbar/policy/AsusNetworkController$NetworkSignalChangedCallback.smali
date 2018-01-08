.class public interface abstract Lcom/android/systemui/statusbar/policy/AsusNetworkController$NetworkSignalChangedCallback;
.super Ljava/lang/Object;
.source "AsusNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/AsusNetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NetworkSignalChangedCallback"
.end annotation


# virtual methods
.method public abstract onAirplaneModeChanged(Z)V
.end method

.method public abstract onMobileDataSignalChanged(ZILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onWifiSignalChanged(ZIZZLjava/lang/String;Ljava/lang/String;)V
.end method
