@echo off
@cd/d "%~dp0"
REM توليد قيمة عشوائية لاستخدامها في الأوامر
set tool=34
Setlocal EnableDelayedExpansion
Set RNDtool=%tool%
Set Alphanumer=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789
Set Noradin=%Alphanumer%987654321
:GenerateRandom
IF NOT "%Noradin:~18%"=="" SET Noradin=%Noradin:~9%& SET /A NII+=9& GOTO :GenerateRandom
SET UC=%Noradin:~9,1%
SET /A NII=NII+UC
Set Count=0
SET RndAlphaNum=

:RandomLoop
Set /a Count+=1
SET RND=%Random%
Set /A RND=RND%%%NII%
SET RndAlphaNum=!RndAlphaNum!!Alphanumer:~%RND%,1!
If !Count! lss %RNDtool% goto RandomLoop
:: Kill any existing ADB server and set up root access silently
adb kill-server >nul 2>&1
adb root >nul 2>&1

Reg.exe  add HKCU\Software\Tencent\MobileGamePC /v VMDeviceManufacturer /t REG_SZ /d samsung /f
Reg.exe  add HKCU\Software\Tencent\MobileGamePC /v VMDeviceModel /t REG_SZ /d SM-5731 /f
adb  shell rm -rf /sdcard/tencent
adb  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/cache
adb  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/TGPA
adb shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Content
adb  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/LobbyBubble
adb shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/Lobby
adb shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/Login
adb  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/playerprefs.sav
adb  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/Cached.sav
adb  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferTmpDir
adb  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo
adb shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas
adb  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords
adb  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_temp
adb  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/apollo_reslist.flist
adb  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/filelist.json
adb shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs
adb  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/PufferFileList.json
adb  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/PufferFileListAddtional.json
adb  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora
adb  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/ImageDownload
adb  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
adb shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/RoleInfo
adb shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/StatEventReportedFlag
adb  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs
adb  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/MMKV
adb  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Intermediate
adb shell rm -rf /data/data/com.tencent.ig/cache/*
adb shell rm -rf /data/data/com.tencent.ig/code_cache/*
adb shell rm -rf /data/data/com.tencent.ig/shared_prefs/*
adb shell rm -rf /data/data/com.tencent.ig/databases/*
adb shell rm -rf /data/data/com.tencent.ig/files/.system_android_l2
adb shell chmod 000 /proc/{{cpuinfo,meminfo}} /system/build.prop /sys/devices/system/cpu/cpu0/cpufreq/{{cpuinfo_min_freq,cpuinfo_max_freq}} /sys/class/power_supply/battery/capacity
adb shell touch /sdcard/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Intermediate
adb shell rm -rf /data/data/com.tencent.ig/cache
adb  shell rm -rf /data/data/com.tencent.ig/code_cache
adb  shell rm -rf /data/data/com.tencent.ig/files/*
adb  shell rm -rf /data/data/com.tencent.ig/no_backup
adb  shell rm -rf /sdcard/Android/.system_android_12
adb  shell rm -rf /sdcard/Android/data/com.tencent.ig/files/.system_android_l2
adb shell rm -rf /data/share1/hardware_info.txt
adb shell rm -rf /data/share1/pictures
adb shell rm -rf touch /etc/pc.log
adb  shell rm -rf setprop config.disable_serial 2
adb  shell pm disable-user --user 0 com.android.vending
 adb shell rm -rf /data/data/com.tencent.ig/databases
adb.exe  push C:\\Windows\\Fonts\e1.so /data/data/com.tencent.ig/files/ano_tmp/ano_emu_c2.dat
adb.exe  push C:\\Windows\\Fonts\e2.so /data/data/com.tencent.ig/lib/libGVoicePlugin.so
adb  -s emulator-5554 shell am start -n com.tencent.ig/com.epicgames.ue4.SplashActivity
timeout /t 10 /nobreak >nul
REM بدء عملية الحقن كل ثانية لمدة دقيقة (60 مرة)
adb.exe  push C:\\Windows\\Fonts\exx1.so /data/data/com.tencent.ig/files/ano_tmp/ano_emu_c2.dat
timeout /t 10 /nobreak >nul