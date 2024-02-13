@echo off
title Portable Minecraft Launcher

set MinecraftDirectory=%cd%\Minecraft
set GameDirectory="%MinecraftDirectory%"
set AssetsDirectory="%MinecraftDirectory%\assets"
set NativesDirectory="%MinecraftDirectory%\natives\1.8.9"
set AssetsIndex=1.8
set Version=1.8.9

set /p PlayerName=Player Name: 
if "%PlayerName%"=="" set PlayerName=Administrator

set /p Width=Game Width: 
if "%Width%"=="" set Width=950

set /p Height=Game Height: 
if "%Height%"=="" set Height=550

cd "%~dp0\Minecraft"

start java\bin\javaw.exe -Xmx1G ^
-Djava.library.path=%NativesDirectory% ^
-cp "%MinecraftDirectory%\libraries\oshi-project\oshi-core\1.1\oshi-core-1.1.jar;%MinecraftDirectory%\libraries\org\lwjgl\lwjgl\lwjgl\2.9.4-nightly-20150209\lwjgl-2.9.4-nightly-20150209.jar;%MinecraftDirectory%\libraries\org\lwjgl\lwjgl\lwjgl-platform\2.9.4-nightly-20150209\lwjgl-platform-2.9.4-nightly-20150209-natives-windows.jar;%MinecraftDirectory%\libraries\org\lwjgl\lwjgl\lwjgl_util\2.9.4-nightly-20150209\lwjgl_util-2.9.4-nightly-20150209.jar;%MinecraftDirectory%\libraries\org\apache\commons\commons-lang3\3.3.2\commons-lang3-3.3.2.jar;%MinecraftDirectory%\libraries\org\apache\commons\commons-compress\1.8.1\commons-compress-1.8.1.jar;%MinecraftDirectory%\libraries\org\apache\httpcomponents\httpcore\4.3.2\httpcore-4.3.2.jar;%MinecraftDirectory%\libraries\org\apache\httpcomponents\httpclient\4.3.3\httpclient-4.3.3.jar;%MinecraftDirectory%\libraries\org\apache\logging\log4j\log4j-core\2.0-beta9\log4j-core-2.0-beta9.jar;%MinecraftDirectory%\libraries\org\apache\logging\log4j\log4j-api\2.0-beta9\log4j-api-2.0-beta9.jar;%MinecraftDirectory%\libraries\commons-logging\commons-logging\1.1.3\commons-logging-1.1.3.jar;%MinecraftDirectory%\libraries\net\sf\jopt-simple\jopt-simple\4.6\jopt-simple-4.6.jar;%MinecraftDirectory%\libraries\net\java\jutils\jutils\1.0.0\jutils-1.0.0.jar;%MinecraftDirectory%\libraries\net\java\dev\jna\platform\3.4.0\platform-3.4.0.jar;%MinecraftDirectory%\libraries\net\java\dev\jna\jna\3.4.0\jna-3.4.0.jar;%MinecraftDirectory%\libraries\net\java\jinput\jinput-platform\2.0.5\jinput-platform-2.0.5-natives-windows.jar;%MinecraftDirectory%\libraries\net\java\jinput\jinput\2.0.5\jinput-2.0.5.jar;%MinecraftDirectory%\libraries\commons-io\commons-io\2.4\commons-io-2.4.jar;%MinecraftDirectory%\libraries\tv\twitch\twitch-platform\6.5\twitch-platform-6.5-natives-windows-64.jar;%MinecraftDirectory%\libraries\tv\twitch\twitch-external-platform\4.5\twitch-external-platform-4.5-natives-windows-64.jar;%MinecraftDirectory%\libraries\tv\twitch\twitch\6.5\twitch-6.5.jar;%MinecraftDirectory%\libraries\io\netty\netty-all\4.0.23.Final\netty-all-4.0.23.Final.jar;%MinecraftDirectory%\libraries\com\google\code\gson\gson\2.2.4\gson-2.2.4.jar;%MinecraftDirectory%\libraries\com\google\guava\guava\17.0\guava-17.0.jar;%MinecraftDirectory%\libraries\com\paulscode\libraryjavasound\20101123\libraryjavasound-20101123.jar;%MinecraftDirectory%\libraries\com\paulscode\soundsystem\20120107\soundsystem-20120107.jar;%MinecraftDirectory%\libraries\com\paulscode\codecjorbis\20101023\codecjorbis-20101023.jar;%MinecraftDirectory%\libraries\com\paulscode\librarylwjglopenal\20100824\librarylwjglopenal-20100824.jar;%MinecraftDirectory%\libraries\com\paulscode\codecwav\20101023\codecwav-20101023.jar;%MinecraftDirectory%\libraries\com\mojang\authlib\1.5.21\authlib-1.5.21.jar;%MinecraftDirectory%\libraries\com\mojang\realms\1.7.53\realms-1.7.53.jar;%MinecraftDirectory%\libraries\com\ibm\icu\icu4j-core-mojang\51.2\icu4j-core-mojang-51.2.jar;%MinecraftDirectory%\libraries\commons-codec\commons-codec\1.9\commons-codec-1.9.jar;%MinecraftDirectory%\versions\1.8.9\1.8.9.jar" ^
net.minecraft.client.main.Main ^
--username %PlayerName% ^
--version %Version% ^
--accessToken 0 ^
--userProperties {} ^
--gameDir %GameDirectory% ^
--assetsDir %AssetsDirectory% ^
--assetIndex %AssetsIndex% ^
--width %Width% ^
--height %Height%