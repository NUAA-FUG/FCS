# Fedora 通用脚本

:us: | [English](https://github.com/Triple-R/FCS/blob/master/README.md) :cn: | 中文
***

Fedora 通用脚本包含`Basic.sh` ，`Android-Studio.sh`， `Mendeley-desktop.sh` 等等。这些脚本可以在你安装好 Fedora 后帮你初始化。此外，`Script2CN.sh` 脚本是专门针对中国用户定制化的。

## Basic.sh

该脚本将安装基础软件和依赖，例如添加 RPM Fusion 源，安装 VScode，Sublime Text 等软件。

- [x] Add RPM Fusion Repository. 添加 RPM Fusion 源。
- [x] Install NetworkManager plugins to make sure you can use DSL. 安装网络管理套件确保可以使用 DSL 拨号上网。
- [x] Some tools to support NTFS and exFAT filesystem in case you can't read and write date from USB flash drive. 一些支持 NTFS 和 exFAT 文件格式的工具，避免无法从U盘读取数据。
- [x] FFmpeg 可以运行音频和视频多种格式录影、转换、流功能等功能的自由软件。
- [x] Visual Studio Code 基于 electron 的编辑器。
- [x] Sublime Text 3 强大的编辑器
- [x] Zeal 离线文档查阅管理软件
- [x] OBS 录屏工具
- [x] Calibre 电子书管理软件
- [x] Uget 下载软件
- [x] VLC 不错的播放器
- [x] MKVToolNix 可对 MKV 格式的视频进行操作的工具
- [x] WoeUSB Linux 下图形化制作U盘启动盘的工具
- [x] Xsensors 查看 CPU 温度的小工具
- [x] Google Chrome (Stable version) Chrome 浏览器
- [x] Telegram 好用的通讯工具
- [ ] Mendelay Desktop(Version 1.18) 管理分享研究论文的应用程序
- [x] Typora 好用的 Markdown 编辑器
- [x] Steam 全球学习交流平台
- [x] ibus-rime rime 输入法
- [x] Tweak and Chrome Gnome Shell (For gnome desktop environment)
- [x] Node.js v8 LTS
- [x] Golang

## Script2CN.sh

- [x] Config DNS  配置 DNS
- [x] Add FZUG Repository 添加 FZUG 源
- [x] Shadowsocks  虚拟砖混结构建筑物逾越技术
- [x] Shadowsocks-qt5 基于 Qt5 的客户端
- [x] Proxychains-ng 
- [x] Genpac 
- [ ] Netease Cloud Music (CLI version)  网易云音乐命令行版
- [ ] Netease Cloud Music (GUI version) 网易云音乐桌面版

## 其他脚本

### Android-Studio.sh

安装 Android Studio，当前版本是 3.1.0。

### Anki.sh

> Anki是一个基于间隔重复（Spaced Repetition）的字卡软件，Anki对SuperMemo的SM2算法予以改进，使其可以根据记忆卡的优先级、紧急程度进行优化调整。记忆卡采用HTML编写，支持插入图片、音频以及LaTeX公式。--维基百科

当前稳定版为 2.0.50。

### Dropbox.sh

Dropbox 是一款十分优秀的云同步应用，你可以通过此脚本来进行安装。建议在使用此脚本前，先使用 `Cn-spec.sh` 脚本。

### IDEA-Community.sh && IDEA-Ultimate.sh

IntelliJ IDEA 是 JetBrains 公司推出的一款 java IDE。它有两个版本，一个是免费的社区版，另一个是收费的专业版。如果你是学生用户或者已经购买了 IDEA，你可以使用 `IDEA-Ultimate.sh` 来安装。否则，请使用 `IDEA-Community.sh` 来安装社区版。当前软件版本 V2018.1.2。

### Java.sh

安装并设置 Oracle Java 开发环境。当前版本为 10.0.1。

### Mendeley-desktop.sh

不错的管理和分享研究论文的应用，使用该脚本可以用来安装也可以用来更新。当前版本：1.18。

### PyCharm-pro.sh 

众所周知，PyCharm 一款强大好用的 Python IDE。所以使用该脚本来安装它吧。当前版本为 V 2018.1。

### typora_update.sh

用来更新 typora 的脚本，详细信息去[此界面](https://github.com/Triple-R/typora-update)。当前版本：0.9.48(beta)


## 版权声明

该项目遵循 [MIT 许可协议](https://github.com/Triple-R/FCS/blob/master/LICENSE)

