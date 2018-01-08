# platform_framework_base_SystemUI_Zen
What is it?
>This is Custom SystemUI Framework for Zenfone device

What is SystemUI?
>SystemUI is System User Interface that you can manage the system bar which is dedicated to the display of notifications, communication of device status, and device navigation. See more about it at [here](https://developer.android.com/training/system-ui/index.html)

What is Framework?
>Framework is API's set that allow developers to write/code Android apps. It consists of tools for designing UIs and system tools. So, SystemUI is the package of the framework base itself.

## Instructions
1. Download like apktool tools, use any kind of tools you find. My recommendation is [this](https://forum.xda-developers.com/showthread.php?t=2639400)
2. Grab framework-res from your device.
* adb shell
* su (superSU permission appears, then just grant it)
* adb pull /system/framework-res.apk framework-res.apk
3. Install framework-res on apktool (Read the instructions appear on apktool).
4. Clone this repository.
5. Move everything you've cloned to `3-Out` folder.
6. Build/compile it.

## Result
![screenshot_2017-03-13-02-27-29](https://user-images.githubusercontent.com/1270785/34663429-5f8b830c-f489-11e7-8b0e-0e52d39acaee.png)
![screenshot_2017-03-13-06-16-21](https://user-images.githubusercontent.com/1270785/34663436-6784314e-f489-11e7-8c90-9efa07d84061.png)
![screenshot_2017-03-13-16-16-31](https://user-images.githubusercontent.com/1270785/34663439-6a5a876a-f489-11e7-94e0-4997cc52c2c3.png)
![screenshot_2017-03-13-19-16-08](https://user-images.githubusercontent.com/1270785/34663441-6d3e9a52-f489-11e7-83e0-0c75af08ad64.png)

## Credits
* aokp
* omni
* bros
* jmkl
* maxdev
* mda
* serajr
* zam
