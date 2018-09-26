# Fedora 通用脚本

:us: | [English](https://github.com/NUAA-FUG/FCS/blob/master/README.md) :cn: | 中文
***

## 前言

Fedora 通用脚本包含 `Android-Studio.sh`，`Dropbox.sh`  `Mendeley-desktop.sh` 等等。这些脚本可以在你安装好 Fedora 后帮你快速安装好你所需要的软件并且设置好一些开发环境，例如 ==golang==。该项目所有脚本在 Fedora 28 Workstation  上成功测试。

*该项目只支持 64 位系统*

## 介绍

在 ==Applications== 文件夹下的脚本用来安装一些不能通过 `dnf` 命令来安装的软件。例如，Android Studio。在 ==EnvSet== 下的脚本会帮你设置好常用的一些开发环境，例如，Java。

## 脚本

### Applications

Android-Studio.sh

#### Android-Studio.sh

安装 Android Studio，当前版本是 3.2。

#### Dropbox.sh

Dropbox 是一款十分优秀的云同步应用，你可以通过此脚本来进行安装。

#### IntelliJ-IDEA.sh

IntelliJ IDEA 是 JetBrains 公司推出的一款 java IDE。它有两个版本，一个是免费的社区版，另一个是收费的专业版。该脚本提供两个版本的下载安装，你可以选择你需要的版本。当前软件版本 V2018.2。

#### Mendeley-desktop.sh

不错的管理和分享研究论文的应用，使用该脚本可以用来安装也可以用来更新。当前版本：1.19.2。

#### PyCharm.sh

众所周知，PyCharm 一款强大好用的 Python IDE。所以使用该脚本来安装它吧。当前版本为 V 2018.2。

#### typora_update.sh

用来更新 typora 的脚本，详细信息去[此界面](https://github.com/Triple-R/typora-update)。当前版本：0.9.57(beta)

#### WebStorm.sh

由 JetBrains 开发的适用于前端的强大的 IDE。当前版本：2018.2

### EnvSet

#### Java.sh

安装并设置 Oracle Java 开发环境。当前版本为 10.0.1。

## 版权声明

该项目遵循 [MIT 许可协议](https://github.com/NUAA-FUG/FCS/blob/master/LICENSE)

