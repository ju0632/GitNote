@echo off&PUSHD %~DP0 &TITLE MkDir
setlocal enabledelayedexpansion

:: 系统版本检测
:sys
:: ver | find "5.1." > NUL && set sys=xp
:: ver | find "6.0." > NUL && set sys=vista
:: ver | find "6.1." > NUL && set sys=win7
:: ver | find "6.2." > NUL && set sys=win8
:: ver | find "6.3." > NUL && set sys=win81
:: ver | find "10.0." > NUL && set sys=win10

:: 系统位数检测
:bit
:: if /i "%PROCESSOR_IDENTIFIER:~0,3%"=="X86" (set bit=x86) ELSE (set bit=x64)

:: 主菜单
:menu
mode con cols=37 lines=38
color 8F
cls
:: 常量
:: Keygen
:: Releases
    :: Original
:: Patch
:: Modify

set v0=Keygen
set v1=Releases
    set v1-1=Original
set v2=Patch
set v3=Modify

set pingtai=
set back_menu=menu
set menu1=Android
set menu2=Linux
set menu3=macOS
set menu4=Microsoft

@ echo.
@ echo.             菜 单 选 项
@ echo.
@ echo.=====================================
@ echo.       ^|
@ echo    1   ^|   创建  %menu1%
@ echo.       ^|
@ echo    2   ^|   创建  %menu2%
@ echo.       ^|
@ echo    3   ^|   创建  %menu3%
@ echo.       ^|
@ echo    4   ^|   创建  %menu4%
@ echo.       ^|
@ echo    D   ^|   创建  文档库
@ echo.       ^|
@ echo    Z   ^|   返回  主菜单
@ echo.       ^|
@ echo.=====================================
@ echo.
@ echo.   当前平台：%pingtai%
@ echo.
@ echo.
@ echo.   当前路径：%~DP0
@ echo.
@ echo.=====================================
@ echo.
set select=
set /p select=请选择编号：
if /i "%select%" EQU "D" Goto menuD
if /i "%select%" EQU "Z" Goto menu

if /i "%select%"=="1" set pingtai=%menu1%&& Goto menu1
if /i "%select%"=="2" set pingtai=%menu2%&& Goto menu2
if /i "%select%"=="3" set pingtai=%menu3%&& Goto menu3
if /i "%select%"=="4" set pingtai=%menu4%&& Goto menu4

@ echo.
color 4F
@ echo         选择无效， 请重新输入
ping -n 2 127.1>nul 
goto %back_menu%

:menuD
goto :menu_document

:menuZ
goto %back_menu%

:menu1
:: 自定义文件夹
    if not exist "%pingtai%" (MD	"%pingtai%")
    if not exist "%pingtai%\Desktop.ini" (@ echo [.ShellClassInfo]>%pingtai%\Desktop.ini)
    ATTRIB -S -H -R %pingtai%\Desktop.ini
    @ echo [.ShellClassInfo]>%pingtai%\Desktop.ini
    @ echo IconResource=C:\Windows\system32\SHELL32.dll,185>>%pingtai%\Desktop.ini
    @ echo [ViewState]>>%pingtai%\Desktop.ini
    @ echo Mode=>>%pingtai%\Desktop.ini
    @ echo Vid=>>%pingtai%\Desktop.ini
    @ echo FolderType=Generic>>%pingtai%\Desktop.ini
    ATTRIB +S +H +R %pingtai%\Desktop.ini
:: END
set str1=APK
    if not exist "%pingtai%\%str1%" (MD	"%pingtai%\%str1%")
set str2=Patch
    if not exist "%pingtai%\%str2%" (MD	"%pingtai%\%str2%")
goto :menu_fenlei

:menu2
:: 自定义文件夹
    if not exist "%pingtai%" (MD	"%pingtai%")
    if not exist "%pingtai%\Desktop.ini" (@ echo [.ShellClassInfo]>%pingtai%\Desktop.ini)
    ATTRIB -S -H -R %pingtai%\Desktop.ini
    @ echo [.ShellClassInfo]>%pingtai%\Desktop.ini
    @ echo IconResource=C:\Windows\system32\SHELL32.dll,174>>%pingtai%\Desktop.ini
    @ echo [ViewState]>>%pingtai%\Desktop.ini
    @ echo Mode=>>%pingtai%\Desktop.ini
    @ echo Vid=>>%pingtai%\Desktop.ini
    @ echo FolderType=Generic>>%pingtai%\Desktop.ini
    ATTRIB +S +H +R %pingtai%\Desktop.ini
:: END
goto :menu_fenlei

:menu3
:: 自定义文件夹
    if not exist "%pingtai%" (MD	"%pingtai%")
    if not exist "%pingtai%\Desktop.ini" (@ echo [.ShellClassInfo]>%pingtai%\Desktop.ini)
    ATTRIB -S -H -R %pingtai%\Desktop.ini
    @ echo [.ShellClassInfo]>%pingtai%\Desktop.ini
    @ echo IconResource=C:\Windows\system32\SHELL32.dll,41>>%pingtai%\Desktop.ini
    @ echo [ViewState]>>%pingtai%\Desktop.ini
    @ echo Mode=>>%pingtai%\Desktop.ini
    @ echo Vid=>>%pingtai%\Desktop.ini
    @ echo FolderType=Generic>>%pingtai%\Desktop.ini
    ATTRIB +S +H +R %pingtai%\Desktop.ini
:: END
goto :menu_fenlei

:menu4
:: 建立KMS文件夹
set url_kms=KMS
:: 自定义文件夹
    if not exist "%pingtai%\%url_kms%" (MD	"%pingtai%\%url_kms%")
    if not exist "%pingtai%\%url_kms%\Desktop.ini" (@ echo [.ShellClassInfo]>%pingtai%\%url_kms%\Desktop.ini)
    ATTRIB -S -H -R %pingtai%\%url_kms%\Desktop.ini
    @ echo [.ShellClassInfo]>%pingtai%\%url_kms%\Desktop.ini
    @ echo IconResource=C:\Windows\system32\SHELL32.dll,104>>%pingtai%\%url_kms%\Desktop.ini
    @ echo [ViewState]>>%pingtai%\%url_kms%\Desktop.ini
    @ echo Mode=>>%pingtai%\%url_kms%\Desktop.ini
    @ echo Vid=>>%pingtai%\%url_kms%\Desktop.ini
    @ echo FolderType=Generic>>%pingtai%\%url_kms%\Desktop.ini
    ATTRIB +S +H +R %pingtai%\%url_kms%\Desktop.ini
:: END
goto :menu_fenlei

:menu_document
:: 建立Document文件夹
mode con cols=37 lines=38
color 8F
cls
:: 常量
set back_menu=menu
set url_d=Document
:: 自定义文件夹
    if not exist "%url_d%" (MD	"%url_d%")
    if not exist "%url_d%\Desktop.ini" (@ echo [.ShellClassInfo]>%url_d%\Desktop.ini)
    ATTRIB -S -H -R %url_d%\Desktop.ini
    @ echo [.ShellClassInfo]>%url_d%\Desktop.ini
    @ echo IconResource=C:\Windows\system32\SHELL32.dll,38>>%url_d%\Desktop.ini
    @ echo [ViewState]>>%url_d%\Desktop.ini
    @ echo Mode=>>%url_d%\Desktop.ini
    @ echo Vid=>>%url_d%\Desktop.ini
    @ echo FolderType=Generic>>%url_d%\Desktop.ini
    ATTRIB +S +H +R %url_d%\Desktop.ini
:: END
set str1=素材
    :: 自定义文件夹
        if not exist "%url_d%\%str1%" (MD	"%url_d%\%str1%")
        if not exist "%url_d%\%str1%\Desktop.ini" (@ echo [.ShellClassInfo]>%url_d%\%str1%\Desktop.ini)
        ATTRIB -S -H -R %url_d%\%str1%\Desktop.ini
        @ echo [.ShellClassInfo]>%url_d%\%str1%\Desktop.ini
        @ echo IconResource=C:\Windows\system32\SHELL32.dll,327>>%url_d%\%str1%\Desktop.ini
        @ echo [ViewState]>>%url_d%\%str1%\Desktop.ini
        @ echo Mode=>>%url_d%\%str1%\Desktop.ini
        @ echo Vid=>>%url_d%\%str1%\Desktop.ini
        @ echo FolderType=Generic>>%url_d%\%str1%\Desktop.ini
        ATTRIB +S +H +R %url_d%\%str1%\Desktop.ini
    :: END
    MD	"%url_d%\%str1%\Fonts\Fonts_List"
    MD	"%url_d%\%str1%\Fonts\Fonts_Bak"
    MD	"%url_d%\%str1%\PS资源\PS插件"
    MD	"%url_d%\%str1%\PS资源\PS笔刷"
    MD	"%url_d%\%str1%\PS资源\PS滤镜"
    MD	"%url_d%\%str1%\PS资源\PS素材"

    set str1-1=视频
        MD	"%url_d%\%str1%\%str1-1%\4K"
        MD	"%url_d%\%str1%\%str1-1%\背景视频"
        MD	"%url_d%\%str1%\%str1-1%\婚礼"
        MD	"%url_d%\%str1%\%str1-1%\会议"
    set str1-2=音乐
        MD	"%url_d%\%str1%\%str1-2%\BGM"
    set str1-3=图片
        MD	"%url_d%\%str1%\%str1-3%\壁纸\PC"
        MD	"%url_d%\%str1%\%str1-3%\壁纸\手机"
    set str1-4=PPT
        MD	"%url_d%\%str1%\%str1-4%\模板"

set str2=办公文件
    :: 自定义文件夹
        if not exist "%url_d%\%str2%" (MD	"%url_d%\%str2%")
        if not exist "%url_d%\%str2%\Desktop.ini" (@ echo [.ShellClassInfo]>%url_d%\%str2%\Desktop.ini)
        ATTRIB -S -H -R %url_d%\%str2%\Desktop.ini
        @ echo [.ShellClassInfo]>%url_d%\%str2%\Desktop.ini
        @ echo IconResource=C:\Windows\system32\SHELL32.dll,58>>%url_d%\%str2%\Desktop.ini
        @ echo [ViewState]>>%url_d%\%str2%\Desktop.ini
        @ echo Mode=>>%url_d%\%str2%\Desktop.ini
        @ echo Vid=>>%url_d%\%str2%\Desktop.ini
        @ echo FolderType=Generic>>%url_d%\%str2%\Desktop.ini
        ATTRIB +S +H +R %url_d%\%str2%\Desktop.ini
    :: END
    MD	"%url_d%\%str2%\范文大全\文书范本"
    MD	"%url_d%\%str2%\范文大全\合同范本"
    MD	"%url_d%\%str2%\范文大全\简历范本"
set str3=资料
    :: 自定义文件夹
        if not exist "%url_d%\%str3%" (MD	"%url_d%\%str3%")
        if not exist "%url_d%\%str3%\Desktop.ini" (@ echo [.ShellClassInfo]>%url_d%\%str3%\Desktop.ini)
        ATTRIB -S -H -R %url_d%\%str3%\Desktop.ini
        @ echo [.ShellClassInfo]>%url_d%\%str3%\Desktop.ini
        @ echo IconResource=C:\Windows\system32\SHELL32.dll,154>>%url_d%\%str3%\Desktop.ini
        @ echo [ViewState]>>%url_d%\%str3%\Desktop.ini
        @ echo Mode=>>%url_d%\%str3%\Desktop.ini
        @ echo Vid=>>%url_d%\%str3%\Desktop.ini
        @ echo FolderType=Generic>>%url_d%\%str3%\Desktop.ini
        ATTRIB +S +H +R %url_d%\%str3%\Desktop.ini
    :: END
    MD	"%url_d%\%str3%\说明书"
    MD	"%url_d%\%str3%\政府政策\三农"
    MD	"%url_d%\%str3%\政府政策\民生"
    MD	"%url_d%\%str3%\政府政策\企业"
goto check_all

:: 分类菜单
:menu_fenlei
mode con cols=37 lines=38
color 8F
cls
:: 常量
set back_menu=menu_fenlei
set menu_fenlei1=OS
set menu_fenlei2=Software

@ echo.
@ echo.             菜 单 选 项
@ echo.
@ echo.=====================================
@ echo.       ^|
@ echo    1   ^|   创建  %menu_fenlei1%
@ echo.       ^|
@ echo    2   ^|   创建  %menu_fenlei2%
@ echo.       ^|
@ echo    Z   ^|   返回  主菜单
@ echo.       ^|
@ echo.=====================================
@ echo.
@ echo.   当前平台：%pingtai%
@ echo.
@ echo.   当前路径：%~DP0
@ echo.
@ echo.=====================================
@ echo.
set select=
set /p select=请选择编号：
:: if /i "%select%" EQU "A" Goto menuA
if /i "%select%" EQU "Z" Goto menu

if /i "%select%"=="1" Goto menu_fenlei1
if /i "%select%"=="2" Goto soft_menu

@ echo.
color 4F
@ echo         选择无效， 请重新输入
ping -n 2 127.1>nul 
goto %back_menu%

:menu_fenlei1
:: 常量
set url_sys=System
set url_os=OS
if /i "%pingtai%"=="Android" Goto OS_Android
if /i "%pingtai%"=="Linux" Goto OS_Linux
if /i "%pingtai%"=="macOS" Goto OS_macOS
if /i "%pingtai%"=="Microsoft" Goto OS_Microsoft

:: OS_Android
:OS_Android
:: 自定义文件夹
    if not exist "%pingtai%\%url_os%" (MD	"%pingtai%\%url_os%")
    if not exist "%pingtai%\%url_os%\Desktop.ini" (@ echo [.ShellClassInfo]>%pingtai%\%url_os%\Desktop.ini)
    ATTRIB -S -H -R %pingtai%\%url_os%\Desktop.ini
    @ echo [.ShellClassInfo]>%pingtai%\%url_os%\Desktop.ini
    @ echo IconResource=C:\Windows\system32\SHELL32.dll,113>>%pingtai%\%url_os%\Desktop.ini
    @ echo [ViewState]>>%pingtai%\%url_os%\Desktop.ini
    @ echo Mode=>>%pingtai%\%url_os%\Desktop.ini
    @ echo Vid=>>%pingtai%\%url_os%\Desktop.ini
    @ echo FolderType=Generic>>%pingtai%\%url_os%\Desktop.ini
    ATTRIB +S +H +R %pingtai%\%url_os%\Desktop.ini
::END
mode con cols=37 lines=38
color 8F
cls
:: 常量
set back_menu=menu_fenlei
set str1=Devices
    MD	"%pingtai%\%url_os%\%str1%"
set str2=Android x86
    MD	"%pingtai%\%url_os%\%str2%\%v1%"
set str3=LineageOS
    MD	"%pingtai%\%url_os%\%str3%\%v1%"
set str4=PhoenixOS
    MD	"%pingtai%\%url_os%\%str4%\%v1%"
goto check_all

:: Android SoftWare
:OS_Android_soft
set back_menu=menu_fenlei
set url_soft=Software
:: 自定义文件夹
    if not exist "%pingtai%\%url_soft%" (MD	"%pingtai%\%url_soft%")
    if not exist "%pingtai%\%url_soft%\Desktop.ini" (@ echo [.ShellClassInfo]>%pingtai%\%url_soft%\Desktop.ini)
    ATTRIB -S -H -R %pingtai%\%url_soft%\Desktop.ini
    @ echo [.ShellClassInfo]>%pingtai%\%url_soft%\Desktop.ini
    @ echo IconResource=C:\Windows\system32\SHELL32.dll,185>>%pingtai%\%url_soft%\Desktop.ini
    @ echo [ViewState]>>%pingtai%\%url_soft%\Desktop.ini
    @ echo Mode=>>%pingtai%\%url_soft%\Desktop.ini
    @ echo Vid=>>%pingtai%\%url_soft%\Desktop.ini
    @ echo FolderType=Generic>>%pingtai%\%url_soft%\Desktop.ini
    ATTRIB +S +H +R %pingtai%\%url_soft%\Desktop.ini
::END
set str1=系统工具
    MD	"%pingtai%\%url_soft%\%str1%"
    MD	"%pingtai%\%url_soft%\%str1%\Root"
    MD	"%pingtai%\%url_soft%\%str1%\文件管理"
    MD	"%pingtai%\%url_soft%\%str1%\系统优化"
    MD	"%pingtai%\%url_soft%\%str1%\输入法"
    MD	"%pingtai%\%url_soft%\%str1%\浏览器"
set str2=社交通讯
    MD	"%pingtai%\%url_soft%\%str2%"
    MD	"%pingtai%\%url_soft%\%str2%\聊天"
    MD	"%pingtai%\%url_soft%\%str2%\社区"
    MD	"%pingtai%\%url_soft%\%str2%\交友"
set str3=摄影摄像
    MD	"%pingtai%\%url_soft%\%str3%"
    MD	"%pingtai%\%url_soft%\%str3%\相机"
    MD	"%pingtai%\%url_soft%\%str3%\美化"
    MD	"%pingtai%\%url_soft%\%str3%\图像编辑"
    MD	"%pingtai%\%url_soft%\%str3%\图像管理"
set str4=新闻阅读
    MD	"%pingtai%\%url_soft%\%str4%"
    MD	"%pingtai%\%url_soft%\%str4%\小说"
    MD	"%pingtai%\%url_soft%\%str4%\新闻资讯"
    MD	"%pingtai%\%url_soft%\%str4%\图书"
    MD	"%pingtai%\%url_soft%\%str4%\漫画"
set str5=影音播放
    MD	"%pingtai%\%url_soft%\%str5%"
    MD	"%pingtai%\%url_soft%\%str5%\视频"
    MD	"%pingtai%\%url_soft%\%str5%\音乐"
    MD	"%pingtai%\%url_soft%\%str5%\收音机"
    MD	"%pingtai%\%url_soft%\%str5%\K歌"
    MD	"%pingtai%\%url_soft%\%str5%\直播"
set str6=购物
    MD	"%pingtai%\%url_soft%\%str6%"
    MD	"%pingtai%\%url_soft%\%str6%\商城"
    MD	"%pingtai%\%url_soft%\%str6%\优惠"
    MD	"%pingtai%\%url_soft%\%str6%\快递"
set str7=金融理财
    MD	"%pingtai%\%url_soft%\%str7%"
    MD	"%pingtai%\%url_soft%\%str7%\网银"
    MD	"%pingtai%\%url_soft%\%str7%\支付"
    MD	"%pingtai%\%url_soft%\%str7%\理财记账"
    MD	"%pingtai%\%url_soft%\%str7%\投资"
    MD	"%pingtai%\%url_soft%\%str7%\股票"
set str8=生活休闲
    MD	"%pingtai%\%url_soft%\%str8%"
    MD	"%pingtai%\%url_soft%\%str8%\美食"
    MD	"%pingtai%\%url_soft%\%str8%\娱乐"
    MD	"%pingtai%\%url_soft%\%str8%\汽车"
    MD	"%pingtai%\%url_soft%\%str8%\本地服务"
    MD	"%pingtai%\%url_soft%\%str8%\房产家居"
set str9=旅游出行
    MD	"%pingtai%\%url_soft%\%str9%"
    MD	"%pingtai%\%url_soft%\%str9%\地图导航"
    MD	"%pingtai%\%url_soft%\%str9%\购票"
    MD	"%pingtai%\%url_soft%\%str9%\公交地铁"
    MD	"%pingtai%\%url_soft%\%str9%\用车"
    MD	"%pingtai%\%url_soft%\%str9%\住宿"
    MD	"%pingtai%\%url_soft%\%str9%\旅游攻略"
set str10=健康运动
    MD	"%pingtai%\%url_soft%\%str10%"
    MD	"%pingtai%\%url_soft%\%str10%\健身"
    MD	"%pingtai%\%url_soft%\%str10%\医疗"
    MD	"%pingtai%\%url_soft%\%str10%\养生"
set str11=商务办公
    MD	"%pingtai%\%url_soft%\%str11%"
    MD	"%pingtai%\%url_soft%\%str11%\办公软件"
    MD	"%pingtai%\%url_soft%\%str11%\邮箱"
    MD	"%pingtai%\%url_soft%\%str11%\办公效率"
    MD	"%pingtai%\%url_soft%\%str11%\笔记"
set str12=亲子育儿
    MD	"%pingtai%\%url_soft%\%str12%"
    MD	"%pingtai%\%url_soft%\%str12%\育儿"
    MD	"%pingtai%\%url_soft%\%str12%\教育"
    MD	"%pingtai%\%url_soft%\%str1%\亲子游戏"
set str13=学习
    MD	"%pingtai%\%url_soft%\%str13%"
    MD	"%pingtai%\%url_soft%\%str13%\外语"
    MD	"%pingtai%\%url_soft%\%str13%\学习"
    MD	"%pingtai%\%url_soft%\%str13%\编程"

goto check_all

:: OS_Linux
:OS_Linux
:: 自定义文件夹
    if not exist "%pingtai%\%url_os%" (MD	"%pingtai%\%url_os%")
    if not exist "%pingtai%\%url_os%\Desktop.ini" (@ echo [.ShellClassInfo]>%pingtai%\%url_os%\Desktop.ini)
    ATTRIB -S -H -R %pingtai%\%url_os%\Desktop.ini
    @ echo [.ShellClassInfo]>%pingtai%\%url_os%\Desktop.ini
    @ echo IconResource=C:\Windows\system32\SHELL32.dll,113>>%pingtai%\%url_os%\Desktop.ini
    @ echo [ViewState]>>%pingtai%\%url_os%\Desktop.ini
    @ echo Mode=>>%pingtai%\%url_os%\Desktop.ini
    @ echo Vid=>>%pingtai%\%url_os%\Desktop.ini
    @ echo FolderType=Generic>>%pingtai%\%url_os%\Desktop.ini
    ATTRIB +S +H +R %pingtai%\%url_os%\Desktop.ini
::END
mode con cols=37 lines=38
color 8F
cls
:: 常量
set back_menu=menu_fenlei
set str1=ISO
set str1-1=Debian
    MD	"%pingtai%\%url_os%\%str1-1%\%v1%"
set str1-2=CentOS
    MD	"%pingtai%\%url_os%\%str1-2%\%v1%"
set str1-3=Deepin
    MD	"%pingtai%\%url_os%\%str1-3%\%v1%"
set str1-4=Arch Linux
    MD	"%pingtai%\%url_os%\%str1-4%\%v1%"
set str1-5=Alpine
    MD	"%pingtai%\%url_os%\%str1-5%\%v1%"
set str1-6=Chromium OS
    MD	"%pingtai%\%url_os%\%str1-6%\%v1%"
set str1-7=Ubuntu
    MD	"%pingtai%\%url_os%\%str1-7%\%v1%"
set str1-8=Cygwin
    MD	"%pingtai%\%url_os%\%str1-8%\%v1%"
set str1-9=Docker CE
    MD	"%pingtai%\%url_os%\%str1-9%\%v1%"
set str1-10=Fedora
    MD	"%pingtai%\%url_os%\%str1-10%\%v1%"
set str1-11=Linux Mint
    MD	"%pingtai%\%url_os%\%str1-11%\%v1%"
set str1-12=Elementary OS
    MD	"%pingtai%\%url_os%\%str1-12%\%v1%"
set str1-13=Tiny Core Linux
    MD	"%pingtai%\%url_os%\%str1-13%\%v1%"
set str1-14=FydeOS
    MD	"%pingtai%\%url_os%\%str1-14%\%v1%"
set str1-15=Raspbian
    MD	"%pingtai%\%url_os%\%str1-15%\%v1%"
set str1-16=OpenMediaVault
    MD	"%pingtai%\%url_os%\%str1-17%\%v1%"

set str2=ROS
if not exist "%pingtai%\%str2%" (MD	"%pingtai%\%str2%")
    MD	"%pingtai%\%str2%\Devices"
    set str2-1=OpenWRT
        MD	"%pingtai%\%str2%\%str2-1%\Devices"
        MD	"%pingtai%\%str2%\%str2-1%\OpenWRT_OS\%v1%"
        MD	"%pingtai%\%str2%\%str2-1%\OpenWRT_dl"
goto check_all

:: OS_macOS
:OS_macOS
:: 自定义文件夹
    if not exist "%pingtai%\%url_os%" (MD	"%pingtai%\%url_os%")
    if not exist "%pingtai%\%url_os%\Desktop.ini" (@ echo [.ShellClassInfo]>%pingtai%\%url_os%\Desktop.ini)
    ATTRIB -S -H -R %pingtai%\%url_os%\Desktop.ini
    @ echo [.ShellClassInfo]>%pingtai%\%url_os%\Desktop.ini
    @ echo IconResource=C:\Windows\system32\SHELL32.dll,113>>%pingtai%\%url_os%\Desktop.ini
    @ echo [ViewState]>>%pingtai%\%url_os%\Desktop.ini
    @ echo Mode=>>%pingtai%\%url_os%\Desktop.ini
    @ echo Vid=>>%pingtai%\%url_os%\Desktop.ini
    @ echo FolderType=Generic>>%pingtai%\%url_os%\Desktop.ini
    ATTRIB +S +H +R %pingtai%\%url_os%\Desktop.ini
::END
mode con cols=37 lines=38
color 8F
cls
:: 常量
set back_menu=menu_fenlei
set str1=ISO
set str1-1=Mac OS X Yosemite
    MD	"%pingtai%\%url_os%\%str1-1%\%v1%"
set str1-2=macOS Sierra
    MD	"%pingtai%\%url_os%\%str1-2%\%v1%"
set str1-3=macOS High Sierra
    MD	"%pingtai%\%url_os%\%str1-3%\%v1%"
set str1-4=macOS Mojave
    MD	"%pingtai%\%url_os%\%str1-4%\%v1%"
set str1-5=macOS Catalina
    MD	"%pingtai%\%url_os%\%str1-5%\%v1%"
goto check_all

:: OS_Microsoft
:OS_Microsoft
mode con cols=37 lines=38
color 8F
cls
:: 自定义文件夹
    if not exist "%pingtai%\%url_os%" (MD	"%pingtai%\%url_os%")
    if not exist "%pingtai%\%url_os%\Desktop.ini" (@ echo [.ShellClassInfo]>%pingtai%\%url_os%\Desktop.ini)
    ATTRIB -S -H -R %pingtai%\%url_os%\Desktop.ini
    @ echo [.ShellClassInfo]>%pingtai%\%url_os%\Desktop.ini
    @ echo IconResource=C:\Windows\system32\SHELL32.dll,113>>%pingtai%\%url_os%\Desktop.ini
    @ echo [ViewState]>>%pingtai%\%url_os%\Desktop.ini
    @ echo Mode=>>%pingtai%\%url_os%\Desktop.ini
    @ echo Vid=>>%pingtai%\%url_os%\Desktop.ini
    @ echo FolderType=Generic>>%pingtai%\%url_os%\Desktop.ini
    ATTRIB +S +H +R %pingtai%\%url_os%\Desktop.ini
::END

:: 常量
set back_menu=menu_fenlei
set str1=ISO
set str1-1=Windows Server
    set str1-1-1=Windows Server 2003
    set str1-1-1-1=Windows Server 2003 R2
    set str1-1-2=Windows Server 2008
    set str1-1-2-1=Windows Server 2008 R2
    set str1-1-3=Windows Server 2012
    set str1-1-3-1=Windows Server 2012 R2
    set str1-1-4=Windows Server 2016
    set str1-1-5=Windows Server 2019
    MD	"%pingtai%\%url_os%\%str1-1%\%str1-1-1%"
    MD	"%pingtai%\%url_os%\%str1-1%\%str1-1-1-1%"
    MD	"%pingtai%\%url_os%\%str1-1%\%str1-1-2%"
    MD	"%pingtai%\%url_os%\%str1-1%\%str1-1-2-1%"
    MD	"%pingtai%\%url_os%\%str1-1%\%str1-1-3%"
    MD	"%pingtai%\%url_os%\%str1-1%\%str1-1-3-1%"
    MD	"%pingtai%\%url_os%\%str1-1%\%str1-1-4%"
    MD	"%pingtai%\%url_os%\%str1-1%\%str1-1-5%"
MD	"%pingtai%\%url_os%\DOS"
set str1-2=Windows7
    MD	"%pingtai%\%url_os%\%str1-2%"
set str1-3=Windows10
    MD	"%pingtai%\%url_os%\%str1-3%"
set str1-4=Windows8
    MD	"%pingtai%\%url_os%\%str1-4%"
set str1-5=Windows8.1
    MD	"%pingtai%\%url_os%\%str1-5%"
set str1-6=Windows XP
    MD	"%pingtai%\%url_os%\%str1-6%"
set str1-7=Third Party
    MD	"%pingtai%\%url_os%\%str1-7%"
goto check_all


:: 软件菜单
:soft_menu
if "%pingtai%"=="Android" Goto OS_Android_soft

mode con cols=37 lines=42
color 8F
cls
:: 常量
set back_menu=soft_menu
set url_soft=Software
:: 自定义文件夹
    if not exist "%pingtai%\%url_soft%" (MD	"%pingtai%\%url_soft%")
    if not exist "%pingtai%\%url_soft%\Desktop.ini" (@ echo [.ShellClassInfo]>%pingtai%\%url_soft%\Desktop.ini)
    ATTRIB -S -H -R %pingtai%\%url_soft%\Desktop.ini
    @ echo [.ShellClassInfo]>%pingtai%\%url_soft%\Desktop.ini
    @ echo IconResource=C:\Windows\system32\SHELL32.dll,15>>%pingtai%\%url_soft%\Desktop.ini
    @ echo [ViewState]>>%pingtai%\%url_soft%\Desktop.ini
    @ echo Mode=>>%pingtai%\%url_soft%\Desktop.ini
    @ echo Vid=>>%pingtai%\%url_soft%\Desktop.ini
    @ echo FolderType=Generic>>%pingtai%\%url_soft%\Desktop.ini
    ATTRIB +S +H +R %pingtai%\%url_soft%\Desktop.ini
::END

set soft0=0#Keygen
set soft1=1#系统工具
set soft2=2#网络软件
set soft3=3#应用软件
set soft4=4#图形图像
set soft5=5#多媒体
set soft6=6#行业软件
set soft7=7#编程开发
set soft8=8#教育教学
set soft9=9#联络聊天
set soft10=10#安全软件
set i=0
set e=11

@ echo.
@ echo.             菜 单 选 项
@ echo.
@ echo.=====================================
@ echo.       ^|
@ echo    0   ^|   创建  %soft0%
@ echo.       ^|
@ echo    1   ^|   创建  %soft1%
@ echo.       ^|
@ echo    2   ^|   创建  %soft2%
@ echo.       ^|
@ echo    3   ^|   创建  %soft3%
@ echo.       ^|
@ echo    4   ^|   创建  %soft4%
@ echo.       ^|
@ echo    5   ^|   创建  %soft5%
@ echo.       ^|
@ echo    6   ^|   创建  %soft6%
@ echo.       ^|
@ echo    7   ^|   创建  %soft7%
@ echo.       ^|
@ echo    8   ^|   创建  %soft8%
@ echo.       ^|
@ echo    9   ^|   创建  %soft9%
@ echo.       ^|
@ echo    10  ^|   创建  %soft10%
@ echo.       ^|
@ echo    A   ^|   创建  所有及子目录
@ echo.       ^|
@ echo    Z   ^|   返回  主菜单
@ echo.       ^|
@ echo    B   ^|   返回  分类菜单
@ echo.       ^|
@ echo.=====================================
@ echo.   当前平台：%pingtai%
@ echo.
@ echo.   当前路径：%~DP0
@ echo.=====================================
set select=
set /p select=请选择编号：
if /i "%select%" EQU "A" Goto softA
if /i "%select%" EQU "Z" Goto menu
if /i "%select%" EQU "B" Goto :menu_fenlei
if /i "%select%"=="0" Goto soft0
if /i "%select%"=="1" Goto soft1
if /i "%select%"=="2" Goto soft2
if /i "%select%"=="3" Goto soft3
if /i "%select%"=="4" Goto soft4
if /i "%select%"=="5" Goto soft5
if /i "%select%"=="6" Goto soft6
if /i "%select%"=="7" Goto soft7
if /i "%select%"=="8" Goto soft8
if /i "%select%"=="9" Goto soft9
if /i "%select%"=="10" Goto soft10

@ echo.
color 4F
@ echo         选择无效， 请重新输入
ping -n 2 127.1>nul 
goto %back_menu%


:softA
:: call %~DP0list\0#Keygen.bat
:: call %~DP0list\1#系统工具.bat
:: call %~DP0list\2#网络软件.bat
:: call %~DP0list\3#应用软件.bat
:: call %~DP0list\4#图形图像.bat
:: call %~DP0list\5#多媒体.bat
:: call %~DP0list\6#行业软件.bat
:: call %~DP0list\7#编程开发.bat
:: call %~DP0list\8#教育教学.bat
:: call %~DP0list\9#联络聊天.bat
:: call %~DP0list\10#安全软件.bat
:: goto :check
cls
goto :soft_check

:soft0
:: call %~DP0list\0#Keygen.bat
:: 自定义文件夹
    if not exist "%pingtai%\%url_soft%\%soft0%" (MD	"%pingtai%\%url_soft%\%soft0%")
    if not exist "%pingtai%\%url_soft%\%soft0%\Desktop.ini" (@ echo [.ShellClassInfo]>%pingtai%\%url_soft%\%soft0%\Desktop.ini)
    ATTRIB -S -H -R %pingtai%\%url_soft%\%soft0%\Desktop.ini
    @ echo [.ShellClassInfo]>%pingtai%\%url_soft%\%soft0%\Desktop.ini
    @ echo IconResource=C:\Windows\system32\SHELL32.dll,44>>%pingtai%\%url_soft%\%soft0%\Desktop.ini
    @ echo [ViewState]>>%pingtai%\%url_soft%\%soft0%\Desktop.ini
    @ echo Mode=>>%pingtai%\%url_soft%\%soft0%\Desktop.ini
    @ echo Vid=>>%pingtai%\%url_soft%\%soft0%\Desktop.ini
    @ echo FolderType=Generic>>%pingtai%\%url_soft%\%soft0%\Desktop.ini
    ATTRIB +S +H +R %pingtai%\%url_soft%\%soft0%\Desktop.ini
:: END
:: 公共
MD	"%pingtai%\%url_soft%\%soft0%\Adobe"
MD	"%pingtai%\%url_soft%\%soft0%\Microsoft Office"
MD	"%pingtai%\%url_soft%\%soft0%\WPS"
MD	"%pingtai%\%url_soft%\%soft0%\Autodesk"
MD	"%pingtai%\%url_soft%\%soft0%\ACDSee"
MD	"%pingtai%\%url_soft%\%soft0%\WinRAR"
MD	"%pingtai%\%url_soft%\%soft0%\VMware"
MD	"%pingtai%\%url_soft%\%soft0%\Corel"
MD	"%pingtai%\%url_soft%\%soft0%\会声会影"
MD	"%pingtai%\%url_soft%\%soft0%\Other"
MD	"%pingtai%\%url_soft%\%soft0%\JetBrains"
MD	"%pingtai%\%url_soft%\%soft0%\SQL Server"
:: Linux 专有
if "%pingtai%"=="Linux" (
    @ echo.
)
:: macOS 专有
if "%pingtai%"=="macOS" (
    @ echo.
)
:: Microsoft 专有
if "%pingtai%"=="Microsoft" (
    @ echo.
)
goto soft_check

:soft1
:: call %~DP0list\1#系统工具.bat
:: 公共
MD	"%pingtai%\%url_soft%\%soft1%\快捷方式"
MD	"%pingtai%\%url_soft%\%soft1%\系统测试"
MD	"%pingtai%\%url_soft%\%soft1%\系统增强"
MD	"%pingtai%\%url_soft%\%soft1%\系统增强\快速启动"
MD	"%pingtai%\%url_soft%\%soft1%\硬件检测"
MD	"%pingtai%\%url_soft%\%soft1%\系统优化"
MD	"%pingtai%\%url_soft%\%soft1%\辅助维护\shell终端"
MD	"%pingtai%\%url_soft%\%soft1%\CPU软件"
MD	"%pingtai%\%url_soft%\%soft1%\内存工具\内存整理"
MD	"%pingtai%\%url_soft%\%soft1%\磁盘工具\磁盘维护"
MD	"%pingtai%\%url_soft%\%soft1%\磁盘工具\硬盘测试"
MD	"%pingtai%\%url_soft%\%soft1%\磁盘工具\分区工具"
MD	"%pingtai%\%url_soft%\%soft1%\磁盘工具\虚拟磁盘"
MD	"%pingtai%\%url_soft%\%soft1%\光盘工具"
MD	"%pingtai%\%url_soft%\%soft1%\U盘工具"
MD	"%pingtai%\%url_soft%\%soft1%\剪贴工具"
MD	"%pingtai%\%url_soft%\%soft1%\剪贴工具\快贴"
MD	"%pingtai%\%url_soft%\%soft1%\键盘鼠标\提示"
MD	"%pingtai%\%url_soft%\%soft1%\键盘鼠标\罗技"
MD	"%pingtai%\%url_soft%\%soft1%\键盘鼠标\鼠标手势"
MD	"%pingtai%\%url_soft%\%soft1%\驱动工具"
MD	"%pingtai%\%url_soft%\%soft1%\桌面工具"
MD	"%pingtai%\%url_soft%\%soft1%\硬件驱动\驱动包"
MD	"%pingtai%\%url_soft%\%soft1%\硬件驱动\打印机"
MD	"%pingtai%\%url_soft%\%soft1%\硬件驱动\网卡"
MD	"%pingtai%\%url_soft%\%soft1%\硬件驱动\主板"
MD	"%pingtai%\%url_soft%\%soft1%\硬件驱动\声卡"
MD	"%pingtai%\%url_soft%\%soft1%\硬件驱动\显卡"
MD	"%pingtai%\%url_soft%\%soft1%\硬件驱动\USB"
MD	"%pingtai%\%url_soft%\%soft1%\硬件驱动\手机"
MD	"%pingtai%\%url_soft%\%soft1%\备份还原"
MD	"%pingtai%\%url_soft%\%soft1%\数据恢复"
MD	"%pingtai%\%url_soft%\%soft1%\卸载清除"
MD	"%pingtai%\%url_soft%\%soft1%\模拟虚拟\虚拟机"
MD	"%pingtai%\%url_soft%\%soft1%\模拟虚拟\模拟器"
MD	"%pingtai%\%url_soft%\%soft1%\操作系统\系统安装"
MD	"%pingtai%\%url_soft%\%soft1%\操作系统\系统封装"
MD	"%pingtai%\%url_soft%\%soft1%\操作系统\系统部署\烧录软件"
MD	"%pingtai%\%url_soft%\%soft1%\操作系统\启动管理\Grub4Dos\%v1%"
MD	"%pingtai%\%url_soft%\%soft1%\操作系统\启动管理\引导修复"
MD	"%pingtai%\%url_soft%\%soft1%\手机工具\Android\Google Android USB Driver"
MD	"%pingtai%\%url_soft%\%soft1%\手机工具\Android\Android SDK Platform Tools\%v1%"
MD	"%pingtai%\%url_soft%\%soft1%\手机工具\iOS\iTunes\%v1%"
MD	"%pingtai%\%url_soft%\%soft1%\开关定时"
MD	"%pingtai%\%url_soft%\%soft1%\系统其它"
MD	"%pingtai%\%url_soft%\%soft1%\主题壁纸"
MD	"%pingtai%\%url_soft%\%soft1%\升级补丁\运行库"
:: Linux 专有
if "%pingtai%"=="Linux" (
    MD	"%pingtai%\%url_soft%\%soft1%\模拟虚拟\虚拟机\Wine"
)
:: macOS 专有
if "%pingtai%"=="macOS" (
    MD	"%pingtai%\%url_soft%\%soft1%\卸载清除\CleanMyMac X\%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\卸载清除\Lemon\%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\模拟虚拟\虚拟机\Parallels Desktop\%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\模拟虚拟\虚拟机\VMware\VMware Fusion\%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\模拟虚拟\虚拟机\Wine"
    MD	"%pingtai%\%url_soft%\%soft1%\光盘工具\dmg2iso"
)
:: Microsoft 专有
if "%pingtai%"=="Microsoft" (
    MD	"%pingtai%\%url_soft%\%soft1%\系统增强\Power Toys"
    MD	"%pingtai%\%url_soft%\%soft1%\系统增强\Windows Sysinternals\%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\系统增强\DISM++\%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\系统增强\Qwins\%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\系统增强\注册表\注册表维护"
    MD	"%pingtai%\%url_soft%\%soft1%\系统增强\注册表\注册表文件"
    MD	"%pingtai%\%url_soft%\%soft1%\系统增强\快速启动\Wox\%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\系统增强\快速启动\nTrun\%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\辅助维护\Shell终端\Windows Terminal\%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\辅助维护\Shell终端\PuTTY\%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\辅助维护\Shell终端\Xshell%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\辅助维护\WinSCP\%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\备份还原\Ghost\%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\备份还原\Acronis True Image\%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\备份还原\imageX"
    MD	"%pingtai%\%url_soft%\%soft1%\备份还原\Deep Freeze"
    MD	"%pingtai%\%url_soft%\%soft1%\光盘工具\Daemon Tools\%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\光盘工具\dmg2iso"
    MD	"%pingtai%\%url_soft%\%soft1%\光盘工具\dmg2img"
    MD	"%pingtai%\%url_soft%\%soft1%\磁盘工具\分区工具\DiskGenius\%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\磁盘工具\分区工具\PartAssist\%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\磁盘工具\虚拟磁盘\VHD"
    MD	"%pingtai%\%url_soft%\%soft1%\键盘鼠标\鼠标手势\WGestures\%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\硬件驱动\驱动包\WanDrv"
    MD	"%pingtai%\%url_soft%\%soft1%\硬件驱动\驱动包\EasyDrv"
    MD	"%pingtai%\%url_soft%\%soft1%\硬件检测\LeoMoon CPU-V"
    MD	"%pingtai%\%url_soft%\%soft1%\卸载清除\CCleaner\%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\模拟虚拟\虚拟机\VMware\VMware ESXi\%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\模拟虚拟\虚拟机\VMware\VMware Workstation\%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\模拟虚拟\虚拟机\VMware\VMware Workstation\%v2%"
    MD	"%pingtai%\%url_soft%\%soft1%\模拟虚拟\虚拟机\Proxmox VE"
    MD	"%pingtai%\%url_soft%\%soft1%\模拟虚拟\虚拟机\VirtualBox\%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\模拟虚拟\虚拟机\VirtualBox\Vagrant\%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\模拟虚拟\模拟器\Genymotion"
    MD	"%pingtai%\%url_soft%\%soft1%\操作系统\系统安装\WinNTSetup\%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\操作系统\系统封装\EasySysprep\%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\操作系统\系统部署\PE工具\PE系统\EasyU\%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\操作系统\系统部署\PE工具\PE软件"
    MD	"%pingtai%\%url_soft%\%soft1%\操作系统\系统部署\烧录软件\USB Burning Tool\%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\DLL&EXE"
    MD	"%pingtai%\%url_soft%\%soft1%\升级补丁\运行库\.NET Framework"
    MD	"%pingtai%\%url_soft%\%soft1%\升级补丁\运行库\GoRuntime\%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\升级补丁\运行库\Visual C++ Redistributable for Visual Studio"
)
goto soft_check

:soft2
:: call %~DP0list\2#网络软件.bat
:: 公共
MD	"%pingtai%\%url_soft%\%soft2%\浏览器\Google Chrome\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\网页制作"
MD	"%pingtai%\%url_soft%\%soft2%\下载工具\Transmission\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\下载工具\qBittorrent"
MD	"%pingtai%\%url_soft%\%soft2%\下载工具\XDM"
MD	"%pingtai%\%url_soft%\%soft2%\下载工具\Aria2\Aria2c\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\下载工具\Aria2\Motrix\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\下载工具\Aria2\AriaNg\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\下载工具\Aria2\PDM\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\下载工具\网盘下载\Proxyee Down\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\下载工具\网盘下载\BND2\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\下载工具\网盘下载\BaiduPCS-Go Web\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\下载工具\网盘下载\BaiduPCS-Go\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\下载工具\BT下载"
MD	"%pingtai%\%url_soft%\%soft2%\下载工具\音乐下载"
MD	"%pingtai%\%url_soft%\%soft2%\拨号软件"
MD	"%pingtai%\%url_soft%\%soft2%\网络代理"
MD	"%pingtai%\%url_soft%\%soft2%\网络代理\Clash\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\FTP工具\FileZilla\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\IP工具\内网穿透"
MD	"%pingtai%\%url_soft%\%soft2%\IP工具\内网穿透\FCN\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\IP工具\内网穿透\FRP\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\IP工具\内网穿透\ZeroNet\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\IP工具\DNS"
MD	"%pingtai%\%url_soft%\%soft2%\远程监控"
MD	"%pingtai%\%url_soft%\%soft2%\网络辅助"
MD	"%pingtai%\%url_soft%\%soft2%\网络监测\Charles\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\网络监测\Fiddler\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\网络监测\Network Mapper"
MD	"%pingtai%\%url_soft%\%soft2%\网络监测\Nagios"
MD	"%pingtai%\%url_soft%\%soft2%\网络监测\Zenoss Core"
MD	"%pingtai%\%url_soft%\%soft2%\网络监测\Zabbix"
MD	"%pingtai%\%url_soft%\%soft2%\网页辅助"
MD	"%pingtai%\%url_soft%\%soft2%\浏览辅助"
MD	"%pingtai%\%url_soft%\%soft2%\服务器区\IP&DNS"
MD	"%pingtai%\%url_soft%\%soft2%\服务器区\文件服务"
MD	"%pingtai%\%url_soft%\%soft2%\服务器区\Web服务\PHP\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\服务器区\Web服务\ASP"
MD	"%pingtai%\%url_soft%\%soft2%\服务器区\Web服务\Nginx\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\服务器区\Web服务\Apache-Tomcat\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\服务器区\Web服务\Apache\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\服务器区\数据库\MySQL\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\服务器区\数据库\MongoDB\Robo 3T\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\服务器区\数据库\数据库管理\Navicat\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\服务器区\数据库\数据库管理\PHPMyAdmin\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\服务器区\数据库\数据库管理\SQLBuddy\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\服务器区\后端服务\Python\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\服务器区\后端服务\JAVA\Java SE JDK\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\服务器区\后端服务\node\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\服务器区\后端服务\GO\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\服务器区\后端服务\Docker"
MD	"%pingtai%\%url_soft%\%soft2%\邮件处理\foxmail"
MD	"%pingtai%\%url_soft%\%soft2%\邮件处理\邮件检测"
MD	"%pingtai%\%url_soft%\%soft2%\网站优化"
MD	"%pingtai%\%url_soft%\%soft2%\网络硬盘"
MD	"%pingtai%\%url_soft%\%soft2%\网络推广"
MD	"%pingtai%\%url_soft%\%soft2%\淘宝相关"
MD	"%pingtai%\%url_soft%\%soft2%\网购助手\网购插件"
MD	"%pingtai%\%url_soft%\%soft2%\网购助手\抢票软件"
MD	"%pingtai%\%url_soft%\%soft2%\网络共享"
MD	"%pingtai%\%url_soft%\%soft2%\离线浏览"
MD	"%pingtai%\%url_soft%\%soft2%\书签工具"
MD	"%pingtai%\%url_soft%\%soft2%\搜索工具"

:: Linux 专有
if "%pingtai%"=="Linux" (
    MD	"%pingtai%\%url_soft%\%soft2%\下载工具\wget\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\IP工具\内网穿透\FCN\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\IP工具\内网穿透\FRP\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\服务器区\文件服务\chfs\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\服务器区\IP&DNS\BIND9\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\网络监测\libpcap\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\网络监测\iftop\%v1%"
)
:: macOS 专有
if "%pingtai%"=="macOS" (
    MD	"%pingtai%\%url_soft%\%soft2%\浏览器\Firefox"
    MD	"%pingtai%\%url_soft%\%soft2%\浏览器\360极速浏览器"
    MD	"%pingtai%\%url_soft%\%soft2%\下载工具\迅雷\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\下载工具\Folx\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\下载工具\FDM\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\下载工具\Aria2\Photon\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\远程监控\向日葵\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\网络监测\Wireshark\%v1%"
)
:: Microsoft 专有
if "%pingtai%"=="Microsoft" (
    MD	"%pingtai%\%url_soft%\%soft2%\FTP工具\Xftp\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\浏览器\Internet Explorer\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\浏览器\Microsoft Edge"
    MD	"%pingtai%\%url_soft%\%soft2%\浏览器\360极速浏览器\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\浏览器\360安全浏览器\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\浏览器\centBrowser\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\浏览器\Google Chrome\GreenChrome\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\浏览器\Google Chrome\ChromeUpdateSharp\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\下载工具\IDM\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\下载工具\IDM\%v2%"
    MD	"%pingtai%\%url_soft%\%soft2%\下载工具\FDM\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\下载工具\迅雷\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\下载工具\迅雷\%v2%"
    MD	"%pingtai%\%url_soft%\%soft2%\下载工具\Aria2\Photon\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\下载工具\网盘下载\PanDownload\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\网络代理\XX-NET\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\网络代理\SSTap\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\网络代理\SocksCap64\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\网络代理\Shadowsocks\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\IP工具\Hosts\SwitchHosts\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\IP工具\DNS\DnsJumper\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\IP工具\Advanced IP Scanner"
    MD	"%pingtai%\%url_soft%\%soft2%\远程监控\Radmin\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\远程监控\向日葵\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\远程监控\TeamViewer\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\远程监控\TeamViewer\%v2%"
    MD	"%pingtai%\%url_soft%\%soft2%\远程监控\Anydesk\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\网络监测\TrafficMonitor\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\网络监测\Microsoft Network Monitor\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\网络监测\Nicekit"
    MD	"%pingtai%\%url_soft%\%soft2%\网络监测\Wireshark\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\网络监测\Ping"
    MD	"%pingtai%\%url_soft%\%soft2%\网络监测\WinPcap\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\网络监测\Npcap\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\网络监测\NTAR"
    MD	"%pingtai%\%url_soft%\%soft2%\网络监测\httpWatch\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\网络监测\The Dude"
    MD	"%pingtai%\%url_soft%\%soft2%\网络监测\Win10Pcap\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\网络监测\USBPcap\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\网络监测\WinDump"
    MD	"%pingtai%\%url_soft%\%soft2%\网络监测\EasyNetMonitor"
    MD	"%pingtai%\%url_soft%\%soft2%\网络辅助\ROS\WinBox\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\服务器区\IP&DNS\BIND9\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\服务器区\文件服务\chfs\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\服务器区\数据库\Microsoft SQL Server\SQL Server 2014 SP1"
    MD	"%pingtai%\%url_soft%\%soft2%\服务器区\数据库\Microsoft SQL Server\SQL Server 2016"
    MD	"%pingtai%\%url_soft%\%soft2%\服务器区\数据库\Microsoft SQL Server\SQL Server 2017"
    MD	"%pingtai%\%url_soft%\%soft2%\服务器区\数据库\Microsoft SQL Server\SQL Server 2019"
    MD	"%pingtai%\%url_soft%\%soft2%\服务器区\数据库管理\SSMS"
    MD	"%pingtai%\%url_soft%\%soft2%\服务器区\Web服务\phpStudy\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\服务器区\Web服务\jspStudy\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\服务器区\Web服务\WAMP\%v1%"
)
goto soft_check

:soft3
:: call %~DP0list\3#应用软件.bat
:: 公共
MD	"%pingtai%\%url_soft%\%soft3%\虚拟光驱"
MD	"%pingtai%\%url_soft%\%soft3%\压缩解压\7z\%v1%"
MD	"%pingtai%\%url_soft%\%soft3%\刻录软件"
MD	"%pingtai%\%url_soft%\%soft3%\输入法\RIME\%v1%"
MD	"%pingtai%\%url_soft%\%soft3%\输入法\搜狗输入法\%v1%"
MD	"%pingtai%\%url_soft%\%soft3%\PDF软件"
MD	"%pingtai%\%url_soft%\%soft3%\转换工具"
MD	"%pingtai%\%url_soft%\%soft3%\文档管理"
MD	"%pingtai%\%url_soft%\%soft3%\文字处理\Markdown\GitNote"
MD	"%pingtai%\%url_soft%\%soft3%\文字处理\Markdown\VNote"
MD	"%pingtai%\%url_soft%\%soft3%\办公软件\WPS\%v1%"
MD	"%pingtai%\%url_soft%\%soft3%\办公软件\思维导图"
MD	"%pingtai%\%url_soft%\%soft3%\阅读器"
MD	"%pingtai%\%url_soft%\%soft3%\文件管理"
MD	"%pingtai%\%url_soft%\%soft3%\文件管理\快速搜索\uTools\%v1%"
MD	"%pingtai%\%url_soft%\%soft3%\文件管理\文件同步\GoodSync\%v1%"
MD	"%pingtai%\%url_soft%\%soft3%\文件管理\文件同步\Syncthing\%v1%"
MD	"%pingtai%\%url_soft%\%soft3%\文件处理"
MD	"%pingtai%\%url_soft%\%soft3%\文件管理\文件对比\Beyond Compare\%v1%"
MD	"%pingtai%\%url_soft%\%soft3%\文件处理\文件分割"
MD	"%pingtai%\%url_soft%\%soft3%\文字处理\OCR"
MD	"%pingtai%\%url_soft%\%soft3%\信息管理"
MD	"%pingtai%\%url_soft%\%soft3%\计算器类"
MD	"%pingtai%\%url_soft%\%soft3%\传真软件"
MD	"%pingtai%\%url_soft%\%soft3%\时钟日历"
MD	"%pingtai%\%url_soft%\%soft3%\扫描打印"
MD	"%pingtai%\%url_soft%\%soft3%\字体工具\字体管理"
MD	"%pingtai%\%url_soft%\%soft3%\字体工具\字体下载"
MD	"%pingtai%\%url_soft%\%soft3%\杂类其它"
MD	"%pingtai%\%url_soft%\%soft3%\测字算命"
MD	"%pingtai%\%url_soft%\%soft3%\取名软件"
MD	"%pingtai%\%url_soft%\%soft3%\趣味软件\Games\Steam"
MD	"%pingtai%\%url_soft%\%soft3%\趣味软件\Games\Epic"
:: Linux 专有
if "%pingtai%"=="Linux" (
    @ echo.
)
:: macOS 专有
if "%pingtai%"=="macOS" (
    MD	"%pingtai%\%url_soft%\%soft3%\办公软件\Microsoft Office\Office 2016 For Mac"
    MD	"%pingtai%\%url_soft%\%soft3%\办公软件\Microsoft Office\Office 2019 For Mac"
    MD	"%pingtai%\%url_soft%\%soft3%\办公软件\Microsoft Office\Office 365 For Mac"
    MD	"%pingtai%\%url_soft%\%soft3%\文件管理\tagLyst\%v1%"
    MD	"%pingtai%\%url_soft%\%soft3%\压缩解压\Bandizip\%v1%"
)
:: Microsoft 专有
if "%pingtai%"=="Microsoft" (
    MD	"%pingtai%\%url_soft%\%soft3%\压缩解压\WinRAR\%v1%"
    MD	"%pingtai%\%url_soft%\%soft3%\压缩解压\WinRAR\%v2%"
    MD	"%pingtai%\%url_soft%\%soft3%\压缩解压\WinRAR\WinRAR theme\%v1%"
    MD	"%pingtai%\%url_soft%\%soft3%\压缩解压\Bandizip\%v1%"
    MD	"%pingtai%\%url_soft%\%soft3%\刻录软件\Win32DiskImager\%v1%"
    MD	"%pingtai%\%url_soft%\%soft3%\刻录软件\USB Image Tool\%v1%"
    MD	"%pingtai%\%url_soft%\%soft3%\刻录软件\balenaEtcher"
    MD	"%pingtai%\%url_soft%\%soft3%\刻录软件\YUMI Multiboot USB Creator"
    MD	"%pingtai%\%url_soft%\%soft3%\办公软件\Microsoft Office\Microsoft Office Tool"
    MD	"%pingtai%\%url_soft%\%soft3%\办公软件\Microsoft Office\Microsoft Office 2003"
    MD	"%pingtai%\%url_soft%\%soft3%\办公软件\Microsoft Office\Microsoft Office 2007"
    MD	"%pingtai%\%url_soft%\%soft3%\办公软件\Microsoft Office\Microsoft Office 2013"
    MD	"%pingtai%\%url_soft%\%soft3%\办公软件\Microsoft Office\Microsoft Office 2016"
    MD	"%pingtai%\%url_soft%\%soft3%\办公软件\Microsoft Office\Microsoft Office 2019"
    MD	"%pingtai%\%url_soft%\%soft3%\文件管理\快速搜索\Listary\%v1%"
    MD	"%pingtai%\%url_soft%\%soft3%\文件管理\文件同步\Allwaysync"
    MD	"%pingtai%\%url_soft%\%soft3%\文件管理\文件同步\FreeFileSync"
    MD	"%pingtai%\%url_soft%\%soft3%\文件管理\文件同步\Microsoft SyncToy"
    MD	"%pingtai%\%url_soft%\%soft3%\文件管理\文件同步\Toucan"
    MD	"%pingtai%\%url_soft%\%soft3%\文件管理\tagLyst"
    MD	"%pingtai%\%url_soft%\%soft3%\文件管理\文件对比\Diffinity"
    MD	"%pingtai%\%url_soft%\%soft3%\文件管理\DirPrintOK"
    MD	"%pingtai%\%url_soft%\%soft3%\文件管理\Q-Dir\%v1%"
    MD	"%pingtai%\%url_soft%\%soft3%\文件管理\nexusFile"
    MD	"%pingtai%\%url_soft%\%soft3%\文件管理\XYplorer"
    MD	"%pingtai%\%url_soft%\%soft3%\文件管理\Directory Opus"
    MD	"%pingtai%\%url_soft%\%soft3%\虚拟光驱\UltraISO\%v1%"
    MD	"%pingtai%\%url_soft%\%soft3%\虚拟光驱\UltraISO\%v2%"
)
goto soft_check

:soft4
:: call %~DP0list\4#图形图像.bat
:: 公共
MD	"%pingtai%\%url_soft%\%soft4%\图像处理"
MD	"%pingtai%\%url_soft%\%soft4%\图片浏览"
MD	"%pingtai%\%url_soft%\%soft4%\3D&CAD软件"
MD	"%pingtai%\%url_soft%\%soft4%\图像捕捉\Snipaste\%v1%"
MD	"%pingtai%\%url_soft%\%soft4%\图片转换"
MD	"%pingtai%\%url_soft%\%soft4%\图片压缩"
MD	"%pingtai%\%url_soft%\%soft4%\动画制作"
MD	"%pingtai%\%url_soft%\%soft4%\图标工具\图标制作"
MD	"%pingtai%\%url_soft%\%soft4%\图像其它"
MD	"%pingtai%\%url_soft%\%soft4%\滤镜插件"
MD	"%pingtai%\%url_soft%\%soft4%\图像管理"

:: Linux 专有
if "%pingtai%"=="Linux" (
    @ echo.
)
:: macOS 专有
if "%pingtai%"=="macOS" (
    @ echo.
)
:: Microsoft 专有
if "%pingtai%"=="Microsoft" (
    MD	"%pingtai%\%url_soft%\%soft4%\图片浏览\ImageGlass"
)
goto soft_check

:soft5
:: call %~DP0list\5#多媒体.bat
:: 公共

MD	"%pingtai%\%url_soft%\%soft5%\编解码器\FFmpeg\%v1%"
MD	"%pingtai%\%url_soft%\%soft5%\媒体制作\录音软件"
MD	"%pingtai%\%url_soft%\%soft5%\媒体制作\录像软件"
MD	"%pingtai%\%url_soft%\%soft5%\媒体制作\屏幕录像"
MD	"%pingtai%\%url_soft%\%soft5%\媒体管理"
MD	"%pingtai%\%url_soft%\%soft5%\音频转换"
MD	"%pingtai%\%url_soft%\%soft5%\音频处理"
MD	"%pingtai%\%url_soft%\%soft5%\音频播放\网络收音机"
MD	"%pingtai%\%url_soft%\%soft5%\音频播放\网易云音乐"
MD	"%pingtai%\%url_soft%\%soft5%\视频播放\网络电视\电视直播"
MD	"%pingtai%\%url_soft%\%soft5%\视频播放\网络电视\直播源管理"
MD	"%pingtai%\%url_soft%\%soft5%\视频播放\QQ影音\%v1%"
MD	"%pingtai%\%url_soft%\%soft5%\视频播放\QQ影音\%v3%"
MD	"%pingtai%\%url_soft%\%soft5%\视频转换"
MD	"%pingtai%\%url_soft%\%soft5%\视频处理"
MD	"%pingtai%\%url_soft%\%soft5%\MIDI相关"
MD	"%pingtai%\%url_soft%\%soft5%\媒体其它"
MD	"%pingtai%\%url_soft%\%soft5%\K歌&编曲"
MD	"%pingtai%\%url_soft%\%soft5%\游戏\客户端"
MD	"%pingtai%\%url_soft%\%soft5%\游戏\补丁"
MD	"%pingtai%\%url_soft%\%soft5%\游戏\游戏辅助"

:: Linux 专有
if "%pingtai%"=="Linux" (
    @ echo.
)
:: macOS 专有
if "%pingtai%"=="macOS" (
    MD	"%pingtai%\%url_soft%\%soft5%\音频播放\QQ音乐\%v1%"
)
:: Microsoft 专有
if "%pingtai%"=="Microsoft" (
    MD	"%pingtai%\%url_soft%\%soft5%\音频播放\酷狗音乐\%v1%"
    MD	"%pingtai%\%url_soft%\%soft5%\音频播放\酷狗音乐\%v2%"
    MD	"%pingtai%\%url_soft%\%soft5%\音频播放\QQ音乐\%v1%"
    MD	"%pingtai%\%url_soft%\%soft5%\音频播放\QQ音乐\%v2%"
    MD	"%pingtai%\%url_soft%\%soft5%\视频播放\PotPlayer\%v1%"
    MD	"%pingtai%\%url_soft%\%soft5%\视频转换\FormatFactory\%v1%"
)
goto soft_check

:soft6
:: call %~DP0list\6#行业软件.bat
:: 公共
MD	"%pingtai%\%url_soft%\%soft6%\品牌软件\Autodesk"
MD	"%pingtai%\%url_soft%\%soft6%\品牌软件\JetBrains"
MD	"%pingtai%\%url_soft%\%soft6%\财务管理"
MD	"%pingtai%\%url_soft%\%soft6%\机械电子\PLC"
MD	"%pingtai%\%url_soft%\%soft6%\交通运输"
MD	"%pingtai%\%url_soft%\%soft6%\辅助设计"
MD	"%pingtai%\%url_soft%\%soft6%\演出会务"
MD	"%pingtai%\%url_soft%\%soft6%\租赁管理"
MD	"%pingtai%\%url_soft%\%soft6%\家居设计"
MD	"%pingtai%\%url_soft%\%soft6%\网吧管理"
MD	"%pingtai%\%url_soft%\%soft6%\股票软件"
MD	"%pingtai%\%url_soft%\%soft6%\彩票工具"
MD	"%pingtai%\%url_soft%\%soft6%\保险行业"
MD	"%pingtai%\%url_soft%\%soft6%\商业贸易"
MD	"%pingtai%\%url_soft%\%soft6%\行政管理"
MD	"%pingtai%\%url_soft%\%soft6%\工程建筑"
MD	"%pingtai%\%url_soft%\%soft6%\服装设计"
MD	"%pingtai%\%url_soft%\%soft6%\餐饮旅游"
MD	"%pingtai%\%url_soft%\%soft6%\法律法规"
MD	"%pingtai%\%url_soft%\%soft6%\出版印刷"
MD	"%pingtai%\%url_soft%\%soft6%\健康医药"
MD	"%pingtai%\%url_soft%\%soft6%\审计评估"
MD	"%pingtai%\%url_soft%\%soft6%\农业软件"
MD	"%pingtai%\%url_soft%\%soft6%\其它行业"

:: Linux 专有
if "%pingtai%"=="Linux" (
    @ echo.
)
:: macOS 专有
if "%pingtai%"=="macOS" (
    MD	"%pingtai%\%url_soft%\%soft6%\品牌软件\Adobe\Photoshop"
    MD	"%pingtai%\%url_soft%\%soft6%\品牌软件\Adobe\Adobe CS6"
    MD	"%pingtai%\%url_soft%\%soft6%\品牌软件\Adobe\Adobe CC 2017"
    MD	"%pingtai%\%url_soft%\%soft6%\品牌软件\Adobe\Adobe CC 2018"
    MD	"%pingtai%\%url_soft%\%soft6%\品牌软件\Adobe\Adobe CC 2019"
    MD	"%pingtai%\%url_soft%\%soft6%\品牌软件\Corel\CorelDRAW"
)
:: Microsoft 专有
if "%pingtai%"=="Microsoft" (
    MD	"%pingtai%\%url_soft%\%soft6%\品牌软件\Adobe\Photoshop"
    MD	"%pingtai%\%url_soft%\%soft6%\品牌软件\Adobe\Adobe CS6"
    MD	"%pingtai%\%url_soft%\%soft6%\品牌软件\Adobe\Adobe CC 2017"
    MD	"%pingtai%\%url_soft%\%soft6%\品牌软件\Adobe\Adobe CC 2018"
    MD	"%pingtai%\%url_soft%\%soft6%\品牌软件\Adobe\Adobe CC 2019"
    MD	"%pingtai%\%url_soft%\%soft6%\品牌软件\Corel\CorelDRAW"
    MD	"%pingtai%\%url_soft%\%soft6%\机械电子\PLC\Mitsubishi"
)
goto soft_check

:soft7
:: call %~DP0list\7#编程开发.bat
:: 公共
MD	"%pingtai%\%url_soft%\%soft7%\编程软件\IDE\Eclipse"
MD	"%pingtai%\%url_soft%\%soft7%\编程软件\IDE\Microsoft Visual Studio"
MD	"%pingtai%\%url_soft%\%soft7%\编程软件\IDE\Visual Studio Code"
MD	"%pingtai%\%url_soft%\%soft7%\编程软件\IDE\JetBrains"
MD	"%pingtai%\%url_soft%\%soft7%\编程软件\版本控制\Git"
MD	"%pingtai%\%url_soft%\%soft7%\编程软件\版本控制\Svn"
MD	"%pingtai%\%url_soft%\%soft7%\安装制作"
MD	"%pingtai%\%url_soft%\%soft7%\数据库类"
MD	"%pingtai%\%url_soft%\%soft7%\编程其它"
MD	"%pingtai%\%url_soft%\%soft7%\调试编译"
MD	"%pingtai%\%url_soft%\%soft7%\程序源码"
MD	"%pingtai%\%url_soft%\%soft7%\加壳脱壳"

:: Linux 专有
if "%pingtai%"=="Linux" (
    @ echo.
)
:: macOS 专有
if "%pingtai%"=="macOS" (
    MD	"%pingtai%\%url_soft%\%soft7%\编程软件\IDE\Xcode"
    MD	"%pingtai%\%url_soft%\%soft7%\编程软件\IDE\Sublime Text\%v1%"
    MD	"%pingtai%\%url_soft%\%soft7%\编程软件\IDE\HBuilder"
)
:: Microsoft 专有
if "%pingtai%"=="Microsoft" (
    MD	"%pingtai%\%url_soft%\%soft7%\编程软件\IDE\Sublime Text\%v1%"
    MD	"%pingtai%\%url_soft%\%soft7%\编程软件\IDE\HBuilder"
    MD	"%pingtai%\%url_soft%\%soft7%\编程软件\Notepad++\%v1%"
    MD	"%pingtai%\%url_soft%\%soft7%\调试编译\反编译"
)
goto soft_check

:soft8
:: call %~DP0list\8#教育教学.bat
:: 公共
MD	"%pingtai%\%url_soft%\%soft8%\翻译辞典"
MD	"%pingtai%\%url_soft%\%soft8%\电子阅读"
MD	"%pingtai%\%url_soft%\%soft8%\电子教室"
MD	"%pingtai%\%url_soft%\%soft8%\考试系统"
MD	"%pingtai%\%url_soft%\%soft8%\外语学习"
MD	"%pingtai%\%url_soft%\%soft8%\天文地理"
MD	"%pingtai%\%url_soft%\%soft8%\教育管理"
MD	"%pingtai%\%url_soft%\%soft8%\文理工具"
MD	"%pingtai%\%url_soft%\%soft8%\在线学习"
MD	"%pingtai%\%url_soft%\%soft8%\幼儿教育"
MD	"%pingtai%\%url_soft%\%soft8%\电脑学习"
MD	"%pingtai%\%url_soft%\%soft8%\教学视频"
MD	"%pingtai%\%url_soft%\%soft8%\书籍制作"
MD	"%pingtai%\%url_soft%\%soft2%\新闻阅读"

:: Linux 专有
if "%pingtai%"=="Linux" (
    @ echo.
)
:: macOS 专有
if "%pingtai%"=="macOS" (
    @ echo.
)
:: Microsoft 专有
if "%pingtai%"=="Microsoft" (
    MD	"%pingtai%\%url_soft%\%soft8%\翻译辞典\QTranslate"
)
goto soft_check

:soft9
:: call %~DP0list\9#联络聊天.bat
:: 公共
MD	"%pingtai%\%url_soft%\%soft9%\腾讯专区\WeChat"
MD	"%pingtai%\%url_soft%\%soft9%\腾讯专区\QQ\QQPC\%v1%"
MD	"%pingtai%\%url_soft%\%soft9%\腾讯专区\QQ\QQPC\%v2%"
MD	"%pingtai%\%url_soft%\%soft9%\腾讯专区\QQ\QQPC\%v3%"
MD	"%pingtai%\%url_soft%\%soft9%\腾讯专区\QQ\QQ辅助"
MD	"%pingtai%\%url_soft%\%soft9%\腾讯专区\QQ\QQ表情"
MD	"%pingtai%\%url_soft%\%soft9%\MSN专区"
MD	"%pingtai%\%url_soft%\%soft9%\聊天工具"
MD	"%pingtai%\%url_soft%\%soft9%\视频聊天"
MD	"%pingtai%\%url_soft%\%soft9%\网络电话"
MD	"%pingtai%\%url_soft%\%soft9%\短信电话"


:: Linux 专有
if "%pingtai%"=="Linux" (
    @ echo.
)
:: macOS 专有
if "%pingtai%"=="macOS" (
    @ echo.
)
:: Microsoft 专有
if "%pingtai%"=="Microsoft" (
    MD	"%pingtai%\%url_soft%\%soft9%\腾讯专区\QQ\QQ辅助\NtrQQ\%v1%"
    MD	"%pingtai%\%url_soft%\%soft9%\腾讯专区\TIM"
    MD	"%pingtai%\%url_soft%\%soft9%\聊天工具\YY"
)
goto soft_check

:soft10
:: call %~DP0list\10#安全软件.bat
:: 公共
MD	"%pingtai%\%url_soft%\%soft10%\杀毒软件\手动杀毒"
MD	"%pingtai%\%url_soft%\%soft10%\木马专杀"
MD	"%pingtai%\%url_soft%\%soft10%\系统安全\影子系统"
MD	"%pingtai%\%url_soft%\%soft10%\系统监视"
MD	"%pingtai%\%url_soft%\%soft10%\防火墙"
MD	"%pingtai%\%url_soft%\%soft10%\加密解密"
MD	"%pingtai%\%url_soft%\%soft10%\密码相关\John the Ripper"
MD	"%pingtai%\%url_soft%\%soft10%\密码相关\1Password\%v1%"
MD	"%pingtai%\%url_soft%\%soft10%\网络安全\渗透\Burp Suite"
MD	"%pingtai%\%url_soft%\%soft10%\网络安全"
MD	"%pingtai%\%url_soft%\%soft10%\系统安全\渗透\OpenVAS"
MD	"%pingtai%\%url_soft%\%soft10%\系统安全\渗透\Metasploit"
MD	"%pingtai%\%url_soft%\%soft10%\浏览安全\足迹清理"
MD	"%pingtai%\%url_soft%\%soft10%\文件安全\Hash"

:: Linux 专有
if "%pingtai%"=="Linux" (
    @ echo.
)
:: macOS 专有
if "%pingtai%"=="macOS" (
    @ echo.
)
:: Microsoft 专有
if "%pingtai%"=="Microsoft" (
    MD	"%pingtai%\%url_soft%\%soft10%\杀毒软件\手动杀毒\PCHunter"
    MD	"%pingtai%\%url_soft%\%soft10%\杀毒软件\手动杀毒\XueTr"
    MD	"%pingtai%\%url_soft%\%soft10%\杀毒软件\360"
    MD	"%pingtai%\%url_soft%\%soft10%\加密解密\Gpg4win"
    MD	"%pingtai%\%url_soft%\%soft10%\加密解密\Hash Suite"
    MD	"%pingtai%\%url_soft%\%soft10%\网络安全\渗透\Nikto"
    MD	"%pingtai%\%url_soft%\%soft10%\密码相关\Ntpwed\%v1%"
)
goto soft_check

:: soft_check
:soft_check
if /i "%select%" NEQ "A" (
    cls
    :: mode con cols=37 lines=9
    color 2F
    @ echo.
    @ echo.
    @ echo.=====================================
    @ echo.
    echo           执行完毕 即将返回
    @ echo.
    @ echo.=====================================
    @ echo.
    ping -n 2 127.1>nul 
    goto %back_menu%
) else (
    if %i% LSS %e% (
        set /a i=%i%+1
        goto soft%i%
    ) else (
        cls
        :: mode con cols=37 lines=9
        color 2F
        @ echo.
        @ echo.
        @ echo.=====================================
        @ echo.
        echo           执行完毕 即将返回
        @ echo.
        @ echo.=====================================
        @ echo.
        ping -n 2 127.1>nul 
        goto %back_menu%
    )
)

:: check_all
:check_all
IF %errorlevel%==0 %errorlevel%==1 (
    cls
    :: mode con cols=37 lines=9
    color 2F
    @ echo.
    @ echo.=====================================
    @ echo.
    @ echo           执行完毕 即将返回
    @ echo.
    @ echo.=====================================
    @ echo.
    ping -n 2 127.1>nul 
    goto %back_menu%
) else (
    cls
    :: mode con cols=37 lines=9
    color 4F
    @ echo.
    @ echo.
    @ echo.=====================================
    @ echo.
    @ echo.           执行失败 即将返回
    @ echo.
    @ echo.=====================================
    @ echo.
    ping -n 2 127.1>nul 2>NUL
    goto %back_menu%
)