@echo off&PUSHD %~DP0 &TITLE MkDir
setlocal enabledelayedexpansion

:: ϵͳ�汾���
:sys
:: ver | find "5.1." > NUL && set sys=xp
:: ver | find "6.0." > NUL && set sys=vista
:: ver | find "6.1." > NUL && set sys=win7
:: ver | find "6.2." > NUL && set sys=win8
:: ver | find "6.3." > NUL && set sys=win81
:: ver | find "10.0." > NUL && set sys=win10

:: ϵͳλ�����
:bit
:: if /i "%PROCESSOR_IDENTIFIER:~0,3%"=="X86" (set bit=x86) ELSE (set bit=x64)

:: ���˵�
:menu
mode con cols=37 lines=38
color 8F
cls
:: ����
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
@ echo.             �� �� ѡ ��
@ echo.
@ echo.=====================================
@ echo.       ^|
@ echo    1   ^|   ����  %menu1%
@ echo.       ^|
@ echo    2   ^|   ����  %menu2%
@ echo.       ^|
@ echo    3   ^|   ����  %menu3%
@ echo.       ^|
@ echo    4   ^|   ����  %menu4%
@ echo.       ^|
@ echo    D   ^|   ����  �ĵ���
@ echo.       ^|
@ echo    Z   ^|   ����  ���˵�
@ echo.       ^|
@ echo.=====================================
@ echo.
@ echo.   ��ǰƽ̨��%pingtai%
@ echo.
@ echo.
@ echo.   ��ǰ·����%~DP0
@ echo.
@ echo.=====================================
@ echo.
set select=
set /p select=��ѡ���ţ�
if /i "%select%" EQU "D" Goto menuD
if /i "%select%" EQU "Z" Goto menu

if /i "%select%"=="1" set pingtai=%menu1%&& Goto menu1
if /i "%select%"=="2" set pingtai=%menu2%&& Goto menu2
if /i "%select%"=="3" set pingtai=%menu3%&& Goto menu3
if /i "%select%"=="4" set pingtai=%menu4%&& Goto menu4

@ echo.
color 4F
@ echo         ѡ����Ч�� ����������
ping -n 2 127.1>nul 
goto %back_menu%

:menuD
goto :menu_document

:menuZ
goto %back_menu%

:menu1
:: �Զ����ļ���
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
:: �Զ����ļ���
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
:: �Զ����ļ���
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
:: ����KMS�ļ���
set url_kms=KMS
:: �Զ����ļ���
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
:: ����Document�ļ���
mode con cols=37 lines=38
color 8F
cls
:: ����
set back_menu=menu
set url_d=Document
:: �Զ����ļ���
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
set str1=�ز�
    :: �Զ����ļ���
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
    MD	"%url_d%\%str1%\PS��Դ\PS���"
    MD	"%url_d%\%str1%\PS��Դ\PS��ˢ"
    MD	"%url_d%\%str1%\PS��Դ\PS�˾�"
    MD	"%url_d%\%str1%\PS��Դ\PS�ز�"

    set str1-1=��Ƶ
        MD	"%url_d%\%str1%\%str1-1%\4K"
        MD	"%url_d%\%str1%\%str1-1%\������Ƶ"
        MD	"%url_d%\%str1%\%str1-1%\����"
        MD	"%url_d%\%str1%\%str1-1%\����"
    set str1-2=����
        MD	"%url_d%\%str1%\%str1-2%\BGM"
    set str1-3=ͼƬ
        MD	"%url_d%\%str1%\%str1-3%\��ֽ\PC"
        MD	"%url_d%\%str1%\%str1-3%\��ֽ\�ֻ�"
    set str1-4=PPT
        MD	"%url_d%\%str1%\%str1-4%\ģ��"

set str2=�칫�ļ�
    :: �Զ����ļ���
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
    MD	"%url_d%\%str2%\���Ĵ�ȫ\���鷶��"
    MD	"%url_d%\%str2%\���Ĵ�ȫ\��ͬ����"
    MD	"%url_d%\%str2%\���Ĵ�ȫ\��������"
set str3=����
    :: �Զ����ļ���
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
    MD	"%url_d%\%str3%\˵����"
    MD	"%url_d%\%str3%\��������\��ũ"
    MD	"%url_d%\%str3%\��������\����"
    MD	"%url_d%\%str3%\��������\��ҵ"
goto check_all

:: ����˵�
:menu_fenlei
mode con cols=37 lines=38
color 8F
cls
:: ����
set back_menu=menu_fenlei
set menu_fenlei1=OS
set menu_fenlei2=Software

@ echo.
@ echo.             �� �� ѡ ��
@ echo.
@ echo.=====================================
@ echo.       ^|
@ echo    1   ^|   ����  %menu_fenlei1%
@ echo.       ^|
@ echo    2   ^|   ����  %menu_fenlei2%
@ echo.       ^|
@ echo    Z   ^|   ����  ���˵�
@ echo.       ^|
@ echo.=====================================
@ echo.
@ echo.   ��ǰƽ̨��%pingtai%
@ echo.
@ echo.   ��ǰ·����%~DP0
@ echo.
@ echo.=====================================
@ echo.
set select=
set /p select=��ѡ���ţ�
:: if /i "%select%" EQU "A" Goto menuA
if /i "%select%" EQU "Z" Goto menu

if /i "%select%"=="1" Goto menu_fenlei1
if /i "%select%"=="2" Goto soft_menu

@ echo.
color 4F
@ echo         ѡ����Ч�� ����������
ping -n 2 127.1>nul 
goto %back_menu%

:menu_fenlei1
:: ����
set url_sys=System
set url_os=OS
if /i "%pingtai%"=="Android" Goto OS_Android
if /i "%pingtai%"=="Linux" Goto OS_Linux
if /i "%pingtai%"=="macOS" Goto OS_macOS
if /i "%pingtai%"=="Microsoft" Goto OS_Microsoft

:: OS_Android
:OS_Android
:: �Զ����ļ���
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
:: ����
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
:: �Զ����ļ���
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
set str1=ϵͳ����
    MD	"%pingtai%\%url_soft%\%str1%"
    MD	"%pingtai%\%url_soft%\%str1%\Root"
    MD	"%pingtai%\%url_soft%\%str1%\�ļ�����"
    MD	"%pingtai%\%url_soft%\%str1%\ϵͳ�Ż�"
    MD	"%pingtai%\%url_soft%\%str1%\���뷨"
    MD	"%pingtai%\%url_soft%\%str1%\�����"
set str2=�罻ͨѶ
    MD	"%pingtai%\%url_soft%\%str2%"
    MD	"%pingtai%\%url_soft%\%str2%\����"
    MD	"%pingtai%\%url_soft%\%str2%\����"
    MD	"%pingtai%\%url_soft%\%str2%\����"
set str3=��Ӱ����
    MD	"%pingtai%\%url_soft%\%str3%"
    MD	"%pingtai%\%url_soft%\%str3%\���"
    MD	"%pingtai%\%url_soft%\%str3%\����"
    MD	"%pingtai%\%url_soft%\%str3%\ͼ��༭"
    MD	"%pingtai%\%url_soft%\%str3%\ͼ�����"
set str4=�����Ķ�
    MD	"%pingtai%\%url_soft%\%str4%"
    MD	"%pingtai%\%url_soft%\%str4%\С˵"
    MD	"%pingtai%\%url_soft%\%str4%\������Ѷ"
    MD	"%pingtai%\%url_soft%\%str4%\ͼ��"
    MD	"%pingtai%\%url_soft%\%str4%\����"
set str5=Ӱ������
    MD	"%pingtai%\%url_soft%\%str5%"
    MD	"%pingtai%\%url_soft%\%str5%\��Ƶ"
    MD	"%pingtai%\%url_soft%\%str5%\����"
    MD	"%pingtai%\%url_soft%\%str5%\������"
    MD	"%pingtai%\%url_soft%\%str5%\K��"
    MD	"%pingtai%\%url_soft%\%str5%\ֱ��"
set str6=����
    MD	"%pingtai%\%url_soft%\%str6%"
    MD	"%pingtai%\%url_soft%\%str6%\�̳�"
    MD	"%pingtai%\%url_soft%\%str6%\�Ż�"
    MD	"%pingtai%\%url_soft%\%str6%\���"
set str7=�������
    MD	"%pingtai%\%url_soft%\%str7%"
    MD	"%pingtai%\%url_soft%\%str7%\����"
    MD	"%pingtai%\%url_soft%\%str7%\֧��"
    MD	"%pingtai%\%url_soft%\%str7%\��Ƽ���"
    MD	"%pingtai%\%url_soft%\%str7%\Ͷ��"
    MD	"%pingtai%\%url_soft%\%str7%\��Ʊ"
set str8=��������
    MD	"%pingtai%\%url_soft%\%str8%"
    MD	"%pingtai%\%url_soft%\%str8%\��ʳ"
    MD	"%pingtai%\%url_soft%\%str8%\����"
    MD	"%pingtai%\%url_soft%\%str8%\����"
    MD	"%pingtai%\%url_soft%\%str8%\���ط���"
    MD	"%pingtai%\%url_soft%\%str8%\�����Ҿ�"
set str9=���γ���
    MD	"%pingtai%\%url_soft%\%str9%"
    MD	"%pingtai%\%url_soft%\%str9%\��ͼ����"
    MD	"%pingtai%\%url_soft%\%str9%\��Ʊ"
    MD	"%pingtai%\%url_soft%\%str9%\��������"
    MD	"%pingtai%\%url_soft%\%str9%\�ó�"
    MD	"%pingtai%\%url_soft%\%str9%\ס��"
    MD	"%pingtai%\%url_soft%\%str9%\���ι���"
set str10=�����˶�
    MD	"%pingtai%\%url_soft%\%str10%"
    MD	"%pingtai%\%url_soft%\%str10%\����"
    MD	"%pingtai%\%url_soft%\%str10%\ҽ��"
    MD	"%pingtai%\%url_soft%\%str10%\����"
set str11=����칫
    MD	"%pingtai%\%url_soft%\%str11%"
    MD	"%pingtai%\%url_soft%\%str11%\�칫���"
    MD	"%pingtai%\%url_soft%\%str11%\����"
    MD	"%pingtai%\%url_soft%\%str11%\�칫Ч��"
    MD	"%pingtai%\%url_soft%\%str11%\�ʼ�"
set str12=��������
    MD	"%pingtai%\%url_soft%\%str12%"
    MD	"%pingtai%\%url_soft%\%str12%\����"
    MD	"%pingtai%\%url_soft%\%str12%\����"
    MD	"%pingtai%\%url_soft%\%str1%\������Ϸ"
set str13=ѧϰ
    MD	"%pingtai%\%url_soft%\%str13%"
    MD	"%pingtai%\%url_soft%\%str13%\����"
    MD	"%pingtai%\%url_soft%\%str13%\ѧϰ"
    MD	"%pingtai%\%url_soft%\%str13%\���"

goto check_all

:: OS_Linux
:OS_Linux
:: �Զ����ļ���
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
:: ����
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
:: �Զ����ļ���
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
:: ����
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
:: �Զ����ļ���
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

:: ����
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


:: ����˵�
:soft_menu
if "%pingtai%"=="Android" Goto OS_Android_soft

mode con cols=37 lines=42
color 8F
cls
:: ����
set back_menu=soft_menu
set url_soft=Software
:: �Զ����ļ���
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
set soft1=1#ϵͳ����
set soft2=2#�������
set soft3=3#Ӧ�����
set soft4=4#ͼ��ͼ��
set soft5=5#��ý��
set soft6=6#��ҵ���
set soft7=7#��̿���
set soft8=8#������ѧ
set soft9=9#��������
set soft10=10#��ȫ���
set i=0
set e=11

@ echo.
@ echo.             �� �� ѡ ��
@ echo.
@ echo.=====================================
@ echo.       ^|
@ echo    0   ^|   ����  %soft0%
@ echo.       ^|
@ echo    1   ^|   ����  %soft1%
@ echo.       ^|
@ echo    2   ^|   ����  %soft2%
@ echo.       ^|
@ echo    3   ^|   ����  %soft3%
@ echo.       ^|
@ echo    4   ^|   ����  %soft4%
@ echo.       ^|
@ echo    5   ^|   ����  %soft5%
@ echo.       ^|
@ echo    6   ^|   ����  %soft6%
@ echo.       ^|
@ echo    7   ^|   ����  %soft7%
@ echo.       ^|
@ echo    8   ^|   ����  %soft8%
@ echo.       ^|
@ echo    9   ^|   ����  %soft9%
@ echo.       ^|
@ echo    10  ^|   ����  %soft10%
@ echo.       ^|
@ echo    A   ^|   ����  ���м���Ŀ¼
@ echo.       ^|
@ echo    Z   ^|   ����  ���˵�
@ echo.       ^|
@ echo    B   ^|   ����  ����˵�
@ echo.       ^|
@ echo.=====================================
@ echo.   ��ǰƽ̨��%pingtai%
@ echo.
@ echo.   ��ǰ·����%~DP0
@ echo.=====================================
set select=
set /p select=��ѡ���ţ�
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
@ echo         ѡ����Ч�� ����������
ping -n 2 127.1>nul 
goto %back_menu%


:softA
:: call %~DP0list\0#Keygen.bat
:: call %~DP0list\1#ϵͳ����.bat
:: call %~DP0list\2#�������.bat
:: call %~DP0list\3#Ӧ�����.bat
:: call %~DP0list\4#ͼ��ͼ��.bat
:: call %~DP0list\5#��ý��.bat
:: call %~DP0list\6#��ҵ���.bat
:: call %~DP0list\7#��̿���.bat
:: call %~DP0list\8#������ѧ.bat
:: call %~DP0list\9#��������.bat
:: call %~DP0list\10#��ȫ���.bat
:: goto :check
cls
goto :soft_check

:soft0
:: call %~DP0list\0#Keygen.bat
:: �Զ����ļ���
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
:: ����
MD	"%pingtai%\%url_soft%\%soft0%\Adobe"
MD	"%pingtai%\%url_soft%\%soft0%\Microsoft Office"
MD	"%pingtai%\%url_soft%\%soft0%\WPS"
MD	"%pingtai%\%url_soft%\%soft0%\Autodesk"
MD	"%pingtai%\%url_soft%\%soft0%\ACDSee"
MD	"%pingtai%\%url_soft%\%soft0%\WinRAR"
MD	"%pingtai%\%url_soft%\%soft0%\VMware"
MD	"%pingtai%\%url_soft%\%soft0%\Corel"
MD	"%pingtai%\%url_soft%\%soft0%\������Ӱ"
MD	"%pingtai%\%url_soft%\%soft0%\Other"
MD	"%pingtai%\%url_soft%\%soft0%\JetBrains"
MD	"%pingtai%\%url_soft%\%soft0%\SQL Server"
:: Linux ר��
if "%pingtai%"=="Linux" (
    @ echo.
)
:: macOS ר��
if "%pingtai%"=="macOS" (
    @ echo.
)
:: Microsoft ר��
if "%pingtai%"=="Microsoft" (
    @ echo.
)
goto soft_check

:soft1
:: call %~DP0list\1#ϵͳ����.bat
:: ����
MD	"%pingtai%\%url_soft%\%soft1%\��ݷ�ʽ"
MD	"%pingtai%\%url_soft%\%soft1%\ϵͳ����"
MD	"%pingtai%\%url_soft%\%soft1%\ϵͳ��ǿ"
MD	"%pingtai%\%url_soft%\%soft1%\ϵͳ��ǿ\��������"
MD	"%pingtai%\%url_soft%\%soft1%\Ӳ�����"
MD	"%pingtai%\%url_soft%\%soft1%\ϵͳ�Ż�"
MD	"%pingtai%\%url_soft%\%soft1%\����ά��\shell�ն�"
MD	"%pingtai%\%url_soft%\%soft1%\CPU���"
MD	"%pingtai%\%url_soft%\%soft1%\�ڴ湤��\�ڴ�����"
MD	"%pingtai%\%url_soft%\%soft1%\���̹���\����ά��"
MD	"%pingtai%\%url_soft%\%soft1%\���̹���\Ӳ�̲���"
MD	"%pingtai%\%url_soft%\%soft1%\���̹���\��������"
MD	"%pingtai%\%url_soft%\%soft1%\���̹���\�������"
MD	"%pingtai%\%url_soft%\%soft1%\���̹���"
MD	"%pingtai%\%url_soft%\%soft1%\U�̹���"
MD	"%pingtai%\%url_soft%\%soft1%\��������"
MD	"%pingtai%\%url_soft%\%soft1%\��������\����"
MD	"%pingtai%\%url_soft%\%soft1%\�������\��ʾ"
MD	"%pingtai%\%url_soft%\%soft1%\�������\�޼�"
MD	"%pingtai%\%url_soft%\%soft1%\�������\�������"
MD	"%pingtai%\%url_soft%\%soft1%\��������"
MD	"%pingtai%\%url_soft%\%soft1%\���湤��"
MD	"%pingtai%\%url_soft%\%soft1%\Ӳ������\������"
MD	"%pingtai%\%url_soft%\%soft1%\Ӳ������\��ӡ��"
MD	"%pingtai%\%url_soft%\%soft1%\Ӳ������\����"
MD	"%pingtai%\%url_soft%\%soft1%\Ӳ������\����"
MD	"%pingtai%\%url_soft%\%soft1%\Ӳ������\����"
MD	"%pingtai%\%url_soft%\%soft1%\Ӳ������\�Կ�"
MD	"%pingtai%\%url_soft%\%soft1%\Ӳ������\USB"
MD	"%pingtai%\%url_soft%\%soft1%\Ӳ������\�ֻ�"
MD	"%pingtai%\%url_soft%\%soft1%\���ݻ�ԭ"
MD	"%pingtai%\%url_soft%\%soft1%\���ݻָ�"
MD	"%pingtai%\%url_soft%\%soft1%\ж�����"
MD	"%pingtai%\%url_soft%\%soft1%\ģ������\�����"
MD	"%pingtai%\%url_soft%\%soft1%\ģ������\ģ����"
MD	"%pingtai%\%url_soft%\%soft1%\����ϵͳ\ϵͳ��װ"
MD	"%pingtai%\%url_soft%\%soft1%\����ϵͳ\ϵͳ��װ"
MD	"%pingtai%\%url_soft%\%soft1%\����ϵͳ\ϵͳ����\��¼���"
MD	"%pingtai%\%url_soft%\%soft1%\����ϵͳ\��������\Grub4Dos\%v1%"
MD	"%pingtai%\%url_soft%\%soft1%\����ϵͳ\��������\�����޸�"
MD	"%pingtai%\%url_soft%\%soft1%\�ֻ�����\Android\Google Android USB Driver"
MD	"%pingtai%\%url_soft%\%soft1%\�ֻ�����\Android\Android SDK Platform Tools\%v1%"
MD	"%pingtai%\%url_soft%\%soft1%\�ֻ�����\iOS\iTunes\%v1%"
MD	"%pingtai%\%url_soft%\%soft1%\���ض�ʱ"
MD	"%pingtai%\%url_soft%\%soft1%\ϵͳ����"
MD	"%pingtai%\%url_soft%\%soft1%\�����ֽ"
MD	"%pingtai%\%url_soft%\%soft1%\��������\���п�"
:: Linux ר��
if "%pingtai%"=="Linux" (
    MD	"%pingtai%\%url_soft%\%soft1%\ģ������\�����\Wine"
)
:: macOS ר��
if "%pingtai%"=="macOS" (
    MD	"%pingtai%\%url_soft%\%soft1%\ж�����\CleanMyMac X\%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\ж�����\Lemon\%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\ģ������\�����\Parallels Desktop\%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\ģ������\�����\VMware\VMware Fusion\%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\ģ������\�����\Wine"
    MD	"%pingtai%\%url_soft%\%soft1%\���̹���\dmg2iso"
)
:: Microsoft ר��
if "%pingtai%"=="Microsoft" (
    MD	"%pingtai%\%url_soft%\%soft1%\ϵͳ��ǿ\Power Toys"
    MD	"%pingtai%\%url_soft%\%soft1%\ϵͳ��ǿ\Windows Sysinternals\%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\ϵͳ��ǿ\DISM++\%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\ϵͳ��ǿ\Qwins\%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\ϵͳ��ǿ\ע���\ע���ά��"
    MD	"%pingtai%\%url_soft%\%soft1%\ϵͳ��ǿ\ע���\ע����ļ�"
    MD	"%pingtai%\%url_soft%\%soft1%\ϵͳ��ǿ\��������\Wox\%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\ϵͳ��ǿ\��������\nTrun\%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\����ά��\Shell�ն�\Windows Terminal\%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\����ά��\Shell�ն�\PuTTY\%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\����ά��\Shell�ն�\Xshell%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\����ά��\WinSCP\%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\���ݻ�ԭ\Ghost\%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\���ݻ�ԭ\Acronis True Image\%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\���ݻ�ԭ\imageX"
    MD	"%pingtai%\%url_soft%\%soft1%\���ݻ�ԭ\Deep Freeze"
    MD	"%pingtai%\%url_soft%\%soft1%\���̹���\Daemon Tools\%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\���̹���\dmg2iso"
    MD	"%pingtai%\%url_soft%\%soft1%\���̹���\dmg2img"
    MD	"%pingtai%\%url_soft%\%soft1%\���̹���\��������\DiskGenius\%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\���̹���\��������\PartAssist\%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\���̹���\�������\VHD"
    MD	"%pingtai%\%url_soft%\%soft1%\�������\�������\WGestures\%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\Ӳ������\������\WanDrv"
    MD	"%pingtai%\%url_soft%\%soft1%\Ӳ������\������\EasyDrv"
    MD	"%pingtai%\%url_soft%\%soft1%\Ӳ�����\LeoMoon CPU-V"
    MD	"%pingtai%\%url_soft%\%soft1%\ж�����\CCleaner\%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\ģ������\�����\VMware\VMware ESXi\%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\ģ������\�����\VMware\VMware Workstation\%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\ģ������\�����\VMware\VMware Workstation\%v2%"
    MD	"%pingtai%\%url_soft%\%soft1%\ģ������\�����\Proxmox VE"
    MD	"%pingtai%\%url_soft%\%soft1%\ģ������\�����\VirtualBox\%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\ģ������\�����\VirtualBox\Vagrant\%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\ģ������\ģ����\Genymotion"
    MD	"%pingtai%\%url_soft%\%soft1%\����ϵͳ\ϵͳ��װ\WinNTSetup\%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\����ϵͳ\ϵͳ��װ\EasySysprep\%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\����ϵͳ\ϵͳ����\PE����\PEϵͳ\EasyU\%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\����ϵͳ\ϵͳ����\PE����\PE���"
    MD	"%pingtai%\%url_soft%\%soft1%\����ϵͳ\ϵͳ����\��¼���\USB Burning Tool\%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\DLL&EXE"
    MD	"%pingtai%\%url_soft%\%soft1%\��������\���п�\.NET Framework"
    MD	"%pingtai%\%url_soft%\%soft1%\��������\���п�\GoRuntime\%v1%"
    MD	"%pingtai%\%url_soft%\%soft1%\��������\���п�\Visual C++ Redistributable for Visual Studio"
)
goto soft_check

:soft2
:: call %~DP0list\2#�������.bat
:: ����
MD	"%pingtai%\%url_soft%\%soft2%\�����\Google Chrome\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\��ҳ����"
MD	"%pingtai%\%url_soft%\%soft2%\���ع���\Transmission\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\���ع���\qBittorrent"
MD	"%pingtai%\%url_soft%\%soft2%\���ع���\XDM"
MD	"%pingtai%\%url_soft%\%soft2%\���ع���\Aria2\Aria2c\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\���ع���\Aria2\Motrix\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\���ع���\Aria2\AriaNg\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\���ع���\Aria2\PDM\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\���ع���\��������\Proxyee Down\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\���ع���\��������\BND2\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\���ع���\��������\BaiduPCS-Go Web\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\���ع���\��������\BaiduPCS-Go\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\���ع���\BT����"
MD	"%pingtai%\%url_soft%\%soft2%\���ع���\��������"
MD	"%pingtai%\%url_soft%\%soft2%\�������"
MD	"%pingtai%\%url_soft%\%soft2%\�������"
MD	"%pingtai%\%url_soft%\%soft2%\�������\Clash\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\FTP����\FileZilla\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\IP����\������͸"
MD	"%pingtai%\%url_soft%\%soft2%\IP����\������͸\FCN\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\IP����\������͸\FRP\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\IP����\������͸\ZeroNet\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\IP����\DNS"
MD	"%pingtai%\%url_soft%\%soft2%\Զ�̼��"
MD	"%pingtai%\%url_soft%\%soft2%\���縨��"
MD	"%pingtai%\%url_soft%\%soft2%\������\Charles\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\������\Fiddler\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\������\Network Mapper"
MD	"%pingtai%\%url_soft%\%soft2%\������\Nagios"
MD	"%pingtai%\%url_soft%\%soft2%\������\Zenoss Core"
MD	"%pingtai%\%url_soft%\%soft2%\������\Zabbix"
MD	"%pingtai%\%url_soft%\%soft2%\��ҳ����"
MD	"%pingtai%\%url_soft%\%soft2%\�������"
MD	"%pingtai%\%url_soft%\%soft2%\��������\IP&DNS"
MD	"%pingtai%\%url_soft%\%soft2%\��������\�ļ�����"
MD	"%pingtai%\%url_soft%\%soft2%\��������\Web����\PHP\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\��������\Web����\ASP"
MD	"%pingtai%\%url_soft%\%soft2%\��������\Web����\Nginx\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\��������\Web����\Apache-Tomcat\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\��������\Web����\Apache\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\��������\���ݿ�\MySQL\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\��������\���ݿ�\MongoDB\Robo 3T\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\��������\���ݿ�\���ݿ����\Navicat\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\��������\���ݿ�\���ݿ����\PHPMyAdmin\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\��������\���ݿ�\���ݿ����\SQLBuddy\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\��������\��˷���\Python\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\��������\��˷���\JAVA\Java SE JDK\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\��������\��˷���\node\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\��������\��˷���\GO\%v1%"
MD	"%pingtai%\%url_soft%\%soft2%\��������\��˷���\Docker"
MD	"%pingtai%\%url_soft%\%soft2%\�ʼ�����\foxmail"
MD	"%pingtai%\%url_soft%\%soft2%\�ʼ�����\�ʼ����"
MD	"%pingtai%\%url_soft%\%soft2%\��վ�Ż�"
MD	"%pingtai%\%url_soft%\%soft2%\����Ӳ��"
MD	"%pingtai%\%url_soft%\%soft2%\�����ƹ�"
MD	"%pingtai%\%url_soft%\%soft2%\�Ա����"
MD	"%pingtai%\%url_soft%\%soft2%\��������\�������"
MD	"%pingtai%\%url_soft%\%soft2%\��������\��Ʊ���"
MD	"%pingtai%\%url_soft%\%soft2%\���繲��"
MD	"%pingtai%\%url_soft%\%soft2%\�������"
MD	"%pingtai%\%url_soft%\%soft2%\��ǩ����"
MD	"%pingtai%\%url_soft%\%soft2%\��������"

:: Linux ר��
if "%pingtai%"=="Linux" (
    MD	"%pingtai%\%url_soft%\%soft2%\���ع���\wget\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\IP����\������͸\FCN\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\IP����\������͸\FRP\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\��������\�ļ�����\chfs\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\��������\IP&DNS\BIND9\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\������\libpcap\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\������\iftop\%v1%"
)
:: macOS ר��
if "%pingtai%"=="macOS" (
    MD	"%pingtai%\%url_soft%\%soft2%\�����\Firefox"
    MD	"%pingtai%\%url_soft%\%soft2%\�����\360���������"
    MD	"%pingtai%\%url_soft%\%soft2%\���ع���\Ѹ��\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\���ع���\Folx\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\���ع���\FDM\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\���ع���\Aria2\Photon\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\Զ�̼��\���տ�\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\������\Wireshark\%v1%"
)
:: Microsoft ר��
if "%pingtai%"=="Microsoft" (
    MD	"%pingtai%\%url_soft%\%soft2%\FTP����\Xftp\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\�����\Internet Explorer\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\�����\Microsoft Edge"
    MD	"%pingtai%\%url_soft%\%soft2%\�����\360���������\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\�����\360��ȫ�����\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\�����\centBrowser\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\�����\Google Chrome\GreenChrome\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\�����\Google Chrome\ChromeUpdateSharp\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\���ع���\IDM\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\���ع���\IDM\%v2%"
    MD	"%pingtai%\%url_soft%\%soft2%\���ع���\FDM\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\���ع���\Ѹ��\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\���ع���\Ѹ��\%v2%"
    MD	"%pingtai%\%url_soft%\%soft2%\���ع���\Aria2\Photon\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\���ع���\��������\PanDownload\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\�������\XX-NET\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\�������\SSTap\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\�������\SocksCap64\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\�������\Shadowsocks\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\IP����\Hosts\SwitchHosts\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\IP����\DNS\DnsJumper\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\IP����\Advanced IP Scanner"
    MD	"%pingtai%\%url_soft%\%soft2%\Զ�̼��\Radmin\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\Զ�̼��\���տ�\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\Զ�̼��\TeamViewer\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\Զ�̼��\TeamViewer\%v2%"
    MD	"%pingtai%\%url_soft%\%soft2%\Զ�̼��\Anydesk\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\������\TrafficMonitor\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\������\Microsoft Network Monitor\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\������\Nicekit"
    MD	"%pingtai%\%url_soft%\%soft2%\������\Wireshark\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\������\Ping"
    MD	"%pingtai%\%url_soft%\%soft2%\������\WinPcap\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\������\Npcap\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\������\NTAR"
    MD	"%pingtai%\%url_soft%\%soft2%\������\httpWatch\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\������\The Dude"
    MD	"%pingtai%\%url_soft%\%soft2%\������\Win10Pcap\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\������\USBPcap\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\������\WinDump"
    MD	"%pingtai%\%url_soft%\%soft2%\������\EasyNetMonitor"
    MD	"%pingtai%\%url_soft%\%soft2%\���縨��\ROS\WinBox\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\��������\IP&DNS\BIND9\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\��������\�ļ�����\chfs\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\��������\���ݿ�\Microsoft SQL Server\SQL Server 2014 SP1"
    MD	"%pingtai%\%url_soft%\%soft2%\��������\���ݿ�\Microsoft SQL Server\SQL Server 2016"
    MD	"%pingtai%\%url_soft%\%soft2%\��������\���ݿ�\Microsoft SQL Server\SQL Server 2017"
    MD	"%pingtai%\%url_soft%\%soft2%\��������\���ݿ�\Microsoft SQL Server\SQL Server 2019"
    MD	"%pingtai%\%url_soft%\%soft2%\��������\���ݿ����\SSMS"
    MD	"%pingtai%\%url_soft%\%soft2%\��������\Web����\phpStudy\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\��������\Web����\jspStudy\%v1%"
    MD	"%pingtai%\%url_soft%\%soft2%\��������\Web����\WAMP\%v1%"
)
goto soft_check

:soft3
:: call %~DP0list\3#Ӧ�����.bat
:: ����
MD	"%pingtai%\%url_soft%\%soft3%\�������"
MD	"%pingtai%\%url_soft%\%soft3%\ѹ����ѹ\7z\%v1%"
MD	"%pingtai%\%url_soft%\%soft3%\��¼���"
MD	"%pingtai%\%url_soft%\%soft3%\���뷨\RIME\%v1%"
MD	"%pingtai%\%url_soft%\%soft3%\���뷨\�ѹ����뷨\%v1%"
MD	"%pingtai%\%url_soft%\%soft3%\PDF���"
MD	"%pingtai%\%url_soft%\%soft3%\ת������"
MD	"%pingtai%\%url_soft%\%soft3%\�ĵ�����"
MD	"%pingtai%\%url_soft%\%soft3%\���ִ���\Markdown\GitNote"
MD	"%pingtai%\%url_soft%\%soft3%\���ִ���\Markdown\VNote"
MD	"%pingtai%\%url_soft%\%soft3%\�칫���\WPS\%v1%"
MD	"%pingtai%\%url_soft%\%soft3%\�칫���\˼ά��ͼ"
MD	"%pingtai%\%url_soft%\%soft3%\�Ķ���"
MD	"%pingtai%\%url_soft%\%soft3%\�ļ�����"
MD	"%pingtai%\%url_soft%\%soft3%\�ļ�����\��������\uTools\%v1%"
MD	"%pingtai%\%url_soft%\%soft3%\�ļ�����\�ļ�ͬ��\GoodSync\%v1%"
MD	"%pingtai%\%url_soft%\%soft3%\�ļ�����\�ļ�ͬ��\Syncthing\%v1%"
MD	"%pingtai%\%url_soft%\%soft3%\�ļ�����"
MD	"%pingtai%\%url_soft%\%soft3%\�ļ�����\�ļ��Ա�\Beyond Compare\%v1%"
MD	"%pingtai%\%url_soft%\%soft3%\�ļ�����\�ļ��ָ�"
MD	"%pingtai%\%url_soft%\%soft3%\���ִ���\OCR"
MD	"%pingtai%\%url_soft%\%soft3%\��Ϣ����"
MD	"%pingtai%\%url_soft%\%soft3%\��������"
MD	"%pingtai%\%url_soft%\%soft3%\�������"
MD	"%pingtai%\%url_soft%\%soft3%\ʱ������"
MD	"%pingtai%\%url_soft%\%soft3%\ɨ���ӡ"
MD	"%pingtai%\%url_soft%\%soft3%\���幤��\�������"
MD	"%pingtai%\%url_soft%\%soft3%\���幤��\��������"
MD	"%pingtai%\%url_soft%\%soft3%\��������"
MD	"%pingtai%\%url_soft%\%soft3%\��������"
MD	"%pingtai%\%url_soft%\%soft3%\ȡ�����"
MD	"%pingtai%\%url_soft%\%soft3%\Ȥζ���\Games\Steam"
MD	"%pingtai%\%url_soft%\%soft3%\Ȥζ���\Games\Epic"
:: Linux ר��
if "%pingtai%"=="Linux" (
    @ echo.
)
:: macOS ר��
if "%pingtai%"=="macOS" (
    MD	"%pingtai%\%url_soft%\%soft3%\�칫���\Microsoft Office\Office 2016 For Mac"
    MD	"%pingtai%\%url_soft%\%soft3%\�칫���\Microsoft Office\Office 2019 For Mac"
    MD	"%pingtai%\%url_soft%\%soft3%\�칫���\Microsoft Office\Office 365 For Mac"
    MD	"%pingtai%\%url_soft%\%soft3%\�ļ�����\tagLyst\%v1%"
    MD	"%pingtai%\%url_soft%\%soft3%\ѹ����ѹ\Bandizip\%v1%"
)
:: Microsoft ר��
if "%pingtai%"=="Microsoft" (
    MD	"%pingtai%\%url_soft%\%soft3%\ѹ����ѹ\WinRAR\%v1%"
    MD	"%pingtai%\%url_soft%\%soft3%\ѹ����ѹ\WinRAR\%v2%"
    MD	"%pingtai%\%url_soft%\%soft3%\ѹ����ѹ\WinRAR\WinRAR theme\%v1%"
    MD	"%pingtai%\%url_soft%\%soft3%\ѹ����ѹ\Bandizip\%v1%"
    MD	"%pingtai%\%url_soft%\%soft3%\��¼���\Win32DiskImager\%v1%"
    MD	"%pingtai%\%url_soft%\%soft3%\��¼���\USB Image Tool\%v1%"
    MD	"%pingtai%\%url_soft%\%soft3%\��¼���\balenaEtcher"
    MD	"%pingtai%\%url_soft%\%soft3%\��¼���\YUMI Multiboot USB Creator"
    MD	"%pingtai%\%url_soft%\%soft3%\�칫���\Microsoft Office\Microsoft Office Tool"
    MD	"%pingtai%\%url_soft%\%soft3%\�칫���\Microsoft Office\Microsoft Office 2003"
    MD	"%pingtai%\%url_soft%\%soft3%\�칫���\Microsoft Office\Microsoft Office 2007"
    MD	"%pingtai%\%url_soft%\%soft3%\�칫���\Microsoft Office\Microsoft Office 2013"
    MD	"%pingtai%\%url_soft%\%soft3%\�칫���\Microsoft Office\Microsoft Office 2016"
    MD	"%pingtai%\%url_soft%\%soft3%\�칫���\Microsoft Office\Microsoft Office 2019"
    MD	"%pingtai%\%url_soft%\%soft3%\�ļ�����\��������\Listary\%v1%"
    MD	"%pingtai%\%url_soft%\%soft3%\�ļ�����\�ļ�ͬ��\Allwaysync"
    MD	"%pingtai%\%url_soft%\%soft3%\�ļ�����\�ļ�ͬ��\FreeFileSync"
    MD	"%pingtai%\%url_soft%\%soft3%\�ļ�����\�ļ�ͬ��\Microsoft SyncToy"
    MD	"%pingtai%\%url_soft%\%soft3%\�ļ�����\�ļ�ͬ��\Toucan"
    MD	"%pingtai%\%url_soft%\%soft3%\�ļ�����\tagLyst"
    MD	"%pingtai%\%url_soft%\%soft3%\�ļ�����\�ļ��Ա�\Diffinity"
    MD	"%pingtai%\%url_soft%\%soft3%\�ļ�����\DirPrintOK"
    MD	"%pingtai%\%url_soft%\%soft3%\�ļ�����\Q-Dir\%v1%"
    MD	"%pingtai%\%url_soft%\%soft3%\�ļ�����\nexusFile"
    MD	"%pingtai%\%url_soft%\%soft3%\�ļ�����\XYplorer"
    MD	"%pingtai%\%url_soft%\%soft3%\�ļ�����\Directory Opus"
    MD	"%pingtai%\%url_soft%\%soft3%\�������\UltraISO\%v1%"
    MD	"%pingtai%\%url_soft%\%soft3%\�������\UltraISO\%v2%"
)
goto soft_check

:soft4
:: call %~DP0list\4#ͼ��ͼ��.bat
:: ����
MD	"%pingtai%\%url_soft%\%soft4%\ͼ����"
MD	"%pingtai%\%url_soft%\%soft4%\ͼƬ���"
MD	"%pingtai%\%url_soft%\%soft4%\3D&CAD���"
MD	"%pingtai%\%url_soft%\%soft4%\ͼ��׽\Snipaste\%v1%"
MD	"%pingtai%\%url_soft%\%soft4%\ͼƬת��"
MD	"%pingtai%\%url_soft%\%soft4%\ͼƬѹ��"
MD	"%pingtai%\%url_soft%\%soft4%\��������"
MD	"%pingtai%\%url_soft%\%soft4%\ͼ�깤��\ͼ������"
MD	"%pingtai%\%url_soft%\%soft4%\ͼ������"
MD	"%pingtai%\%url_soft%\%soft4%\�˾����"
MD	"%pingtai%\%url_soft%\%soft4%\ͼ�����"

:: Linux ר��
if "%pingtai%"=="Linux" (
    @ echo.
)
:: macOS ר��
if "%pingtai%"=="macOS" (
    @ echo.
)
:: Microsoft ר��
if "%pingtai%"=="Microsoft" (
    MD	"%pingtai%\%url_soft%\%soft4%\ͼƬ���\ImageGlass"
)
goto soft_check

:soft5
:: call %~DP0list\5#��ý��.bat
:: ����

MD	"%pingtai%\%url_soft%\%soft5%\�������\FFmpeg\%v1%"
MD	"%pingtai%\%url_soft%\%soft5%\ý������\¼�����"
MD	"%pingtai%\%url_soft%\%soft5%\ý������\¼�����"
MD	"%pingtai%\%url_soft%\%soft5%\ý������\��Ļ¼��"
MD	"%pingtai%\%url_soft%\%soft5%\ý�����"
MD	"%pingtai%\%url_soft%\%soft5%\��Ƶת��"
MD	"%pingtai%\%url_soft%\%soft5%\��Ƶ����"
MD	"%pingtai%\%url_soft%\%soft5%\��Ƶ����\����������"
MD	"%pingtai%\%url_soft%\%soft5%\��Ƶ����\����������"
MD	"%pingtai%\%url_soft%\%soft5%\��Ƶ����\�������\����ֱ��"
MD	"%pingtai%\%url_soft%\%soft5%\��Ƶ����\�������\ֱ��Դ����"
MD	"%pingtai%\%url_soft%\%soft5%\��Ƶ����\QQӰ��\%v1%"
MD	"%pingtai%\%url_soft%\%soft5%\��Ƶ����\QQӰ��\%v3%"
MD	"%pingtai%\%url_soft%\%soft5%\��Ƶת��"
MD	"%pingtai%\%url_soft%\%soft5%\��Ƶ����"
MD	"%pingtai%\%url_soft%\%soft5%\MIDI���"
MD	"%pingtai%\%url_soft%\%soft5%\ý������"
MD	"%pingtai%\%url_soft%\%soft5%\K��&����"
MD	"%pingtai%\%url_soft%\%soft5%\��Ϸ\�ͻ���"
MD	"%pingtai%\%url_soft%\%soft5%\��Ϸ\����"
MD	"%pingtai%\%url_soft%\%soft5%\��Ϸ\��Ϸ����"

:: Linux ר��
if "%pingtai%"=="Linux" (
    @ echo.
)
:: macOS ר��
if "%pingtai%"=="macOS" (
    MD	"%pingtai%\%url_soft%\%soft5%\��Ƶ����\QQ����\%v1%"
)
:: Microsoft ר��
if "%pingtai%"=="Microsoft" (
    MD	"%pingtai%\%url_soft%\%soft5%\��Ƶ����\�ṷ����\%v1%"
    MD	"%pingtai%\%url_soft%\%soft5%\��Ƶ����\�ṷ����\%v2%"
    MD	"%pingtai%\%url_soft%\%soft5%\��Ƶ����\QQ����\%v1%"
    MD	"%pingtai%\%url_soft%\%soft5%\��Ƶ����\QQ����\%v2%"
    MD	"%pingtai%\%url_soft%\%soft5%\��Ƶ����\PotPlayer\%v1%"
    MD	"%pingtai%\%url_soft%\%soft5%\��Ƶת��\FormatFactory\%v1%"
)
goto soft_check

:soft6
:: call %~DP0list\6#��ҵ���.bat
:: ����
MD	"%pingtai%\%url_soft%\%soft6%\Ʒ�����\Autodesk"
MD	"%pingtai%\%url_soft%\%soft6%\Ʒ�����\JetBrains"
MD	"%pingtai%\%url_soft%\%soft6%\�������"
MD	"%pingtai%\%url_soft%\%soft6%\��е����\PLC"
MD	"%pingtai%\%url_soft%\%soft6%\��ͨ����"
MD	"%pingtai%\%url_soft%\%soft6%\�������"
MD	"%pingtai%\%url_soft%\%soft6%\�ݳ�����"
MD	"%pingtai%\%url_soft%\%soft6%\���޹���"
MD	"%pingtai%\%url_soft%\%soft6%\�Ҿ����"
MD	"%pingtai%\%url_soft%\%soft6%\���ɹ���"
MD	"%pingtai%\%url_soft%\%soft6%\��Ʊ���"
MD	"%pingtai%\%url_soft%\%soft6%\��Ʊ����"
MD	"%pingtai%\%url_soft%\%soft6%\������ҵ"
MD	"%pingtai%\%url_soft%\%soft6%\��ҵó��"
MD	"%pingtai%\%url_soft%\%soft6%\��������"
MD	"%pingtai%\%url_soft%\%soft6%\���̽���"
MD	"%pingtai%\%url_soft%\%soft6%\��װ���"
MD	"%pingtai%\%url_soft%\%soft6%\��������"
MD	"%pingtai%\%url_soft%\%soft6%\���ɷ���"
MD	"%pingtai%\%url_soft%\%soft6%\����ӡˢ"
MD	"%pingtai%\%url_soft%\%soft6%\����ҽҩ"
MD	"%pingtai%\%url_soft%\%soft6%\�������"
MD	"%pingtai%\%url_soft%\%soft6%\ũҵ���"
MD	"%pingtai%\%url_soft%\%soft6%\������ҵ"

:: Linux ר��
if "%pingtai%"=="Linux" (
    @ echo.
)
:: macOS ר��
if "%pingtai%"=="macOS" (
    MD	"%pingtai%\%url_soft%\%soft6%\Ʒ�����\Adobe\Photoshop"
    MD	"%pingtai%\%url_soft%\%soft6%\Ʒ�����\Adobe\Adobe CS6"
    MD	"%pingtai%\%url_soft%\%soft6%\Ʒ�����\Adobe\Adobe CC 2017"
    MD	"%pingtai%\%url_soft%\%soft6%\Ʒ�����\Adobe\Adobe CC 2018"
    MD	"%pingtai%\%url_soft%\%soft6%\Ʒ�����\Adobe\Adobe CC 2019"
    MD	"%pingtai%\%url_soft%\%soft6%\Ʒ�����\Corel\CorelDRAW"
)
:: Microsoft ר��
if "%pingtai%"=="Microsoft" (
    MD	"%pingtai%\%url_soft%\%soft6%\Ʒ�����\Adobe\Photoshop"
    MD	"%pingtai%\%url_soft%\%soft6%\Ʒ�����\Adobe\Adobe CS6"
    MD	"%pingtai%\%url_soft%\%soft6%\Ʒ�����\Adobe\Adobe CC 2017"
    MD	"%pingtai%\%url_soft%\%soft6%\Ʒ�����\Adobe\Adobe CC 2018"
    MD	"%pingtai%\%url_soft%\%soft6%\Ʒ�����\Adobe\Adobe CC 2019"
    MD	"%pingtai%\%url_soft%\%soft6%\Ʒ�����\Corel\CorelDRAW"
    MD	"%pingtai%\%url_soft%\%soft6%\��е����\PLC\Mitsubishi"
)
goto soft_check

:soft7
:: call %~DP0list\7#��̿���.bat
:: ����
MD	"%pingtai%\%url_soft%\%soft7%\������\IDE\Eclipse"
MD	"%pingtai%\%url_soft%\%soft7%\������\IDE\Microsoft Visual Studio"
MD	"%pingtai%\%url_soft%\%soft7%\������\IDE\Visual Studio Code"
MD	"%pingtai%\%url_soft%\%soft7%\������\IDE\JetBrains"
MD	"%pingtai%\%url_soft%\%soft7%\������\�汾����\Git"
MD	"%pingtai%\%url_soft%\%soft7%\������\�汾����\Svn"
MD	"%pingtai%\%url_soft%\%soft7%\��װ����"
MD	"%pingtai%\%url_soft%\%soft7%\���ݿ���"
MD	"%pingtai%\%url_soft%\%soft7%\�������"
MD	"%pingtai%\%url_soft%\%soft7%\���Ա���"
MD	"%pingtai%\%url_soft%\%soft7%\����Դ��"
MD	"%pingtai%\%url_soft%\%soft7%\�ӿ��ѿ�"

:: Linux ר��
if "%pingtai%"=="Linux" (
    @ echo.
)
:: macOS ר��
if "%pingtai%"=="macOS" (
    MD	"%pingtai%\%url_soft%\%soft7%\������\IDE\Xcode"
    MD	"%pingtai%\%url_soft%\%soft7%\������\IDE\Sublime Text\%v1%"
    MD	"%pingtai%\%url_soft%\%soft7%\������\IDE\HBuilder"
)
:: Microsoft ר��
if "%pingtai%"=="Microsoft" (
    MD	"%pingtai%\%url_soft%\%soft7%\������\IDE\Sublime Text\%v1%"
    MD	"%pingtai%\%url_soft%\%soft7%\������\IDE\HBuilder"
    MD	"%pingtai%\%url_soft%\%soft7%\������\Notepad++\%v1%"
    MD	"%pingtai%\%url_soft%\%soft7%\���Ա���\������"
)
goto soft_check

:soft8
:: call %~DP0list\8#������ѧ.bat
:: ����
MD	"%pingtai%\%url_soft%\%soft8%\����ǵ�"
MD	"%pingtai%\%url_soft%\%soft8%\�����Ķ�"
MD	"%pingtai%\%url_soft%\%soft8%\���ӽ���"
MD	"%pingtai%\%url_soft%\%soft8%\����ϵͳ"
MD	"%pingtai%\%url_soft%\%soft8%\����ѧϰ"
MD	"%pingtai%\%url_soft%\%soft8%\���ĵ���"
MD	"%pingtai%\%url_soft%\%soft8%\��������"
MD	"%pingtai%\%url_soft%\%soft8%\������"
MD	"%pingtai%\%url_soft%\%soft8%\����ѧϰ"
MD	"%pingtai%\%url_soft%\%soft8%\�׶�����"
MD	"%pingtai%\%url_soft%\%soft8%\����ѧϰ"
MD	"%pingtai%\%url_soft%\%soft8%\��ѧ��Ƶ"
MD	"%pingtai%\%url_soft%\%soft8%\�鼮����"
MD	"%pingtai%\%url_soft%\%soft2%\�����Ķ�"

:: Linux ר��
if "%pingtai%"=="Linux" (
    @ echo.
)
:: macOS ר��
if "%pingtai%"=="macOS" (
    @ echo.
)
:: Microsoft ר��
if "%pingtai%"=="Microsoft" (
    MD	"%pingtai%\%url_soft%\%soft8%\����ǵ�\QTranslate"
)
goto soft_check

:soft9
:: call %~DP0list\9#��������.bat
:: ����
MD	"%pingtai%\%url_soft%\%soft9%\��Ѷר��\WeChat"
MD	"%pingtai%\%url_soft%\%soft9%\��Ѷר��\QQ\QQPC\%v1%"
MD	"%pingtai%\%url_soft%\%soft9%\��Ѷר��\QQ\QQPC\%v2%"
MD	"%pingtai%\%url_soft%\%soft9%\��Ѷר��\QQ\QQPC\%v3%"
MD	"%pingtai%\%url_soft%\%soft9%\��Ѷר��\QQ\QQ����"
MD	"%pingtai%\%url_soft%\%soft9%\��Ѷר��\QQ\QQ����"
MD	"%pingtai%\%url_soft%\%soft9%\MSNר��"
MD	"%pingtai%\%url_soft%\%soft9%\���칤��"
MD	"%pingtai%\%url_soft%\%soft9%\��Ƶ����"
MD	"%pingtai%\%url_soft%\%soft9%\����绰"
MD	"%pingtai%\%url_soft%\%soft9%\���ŵ绰"


:: Linux ר��
if "%pingtai%"=="Linux" (
    @ echo.
)
:: macOS ר��
if "%pingtai%"=="macOS" (
    @ echo.
)
:: Microsoft ר��
if "%pingtai%"=="Microsoft" (
    MD	"%pingtai%\%url_soft%\%soft9%\��Ѷר��\QQ\QQ����\NtrQQ\%v1%"
    MD	"%pingtai%\%url_soft%\%soft9%\��Ѷר��\TIM"
    MD	"%pingtai%\%url_soft%\%soft9%\���칤��\YY"
)
goto soft_check

:soft10
:: call %~DP0list\10#��ȫ���.bat
:: ����
MD	"%pingtai%\%url_soft%\%soft10%\ɱ�����\�ֶ�ɱ��"
MD	"%pingtai%\%url_soft%\%soft10%\ľ��רɱ"
MD	"%pingtai%\%url_soft%\%soft10%\ϵͳ��ȫ\Ӱ��ϵͳ"
MD	"%pingtai%\%url_soft%\%soft10%\ϵͳ����"
MD	"%pingtai%\%url_soft%\%soft10%\����ǽ"
MD	"%pingtai%\%url_soft%\%soft10%\���ܽ���"
MD	"%pingtai%\%url_soft%\%soft10%\�������\John the Ripper"
MD	"%pingtai%\%url_soft%\%soft10%\�������\1Password\%v1%"
MD	"%pingtai%\%url_soft%\%soft10%\���簲ȫ\��͸\Burp Suite"
MD	"%pingtai%\%url_soft%\%soft10%\���簲ȫ"
MD	"%pingtai%\%url_soft%\%soft10%\ϵͳ��ȫ\��͸\OpenVAS"
MD	"%pingtai%\%url_soft%\%soft10%\ϵͳ��ȫ\��͸\Metasploit"
MD	"%pingtai%\%url_soft%\%soft10%\�����ȫ\�㼣����"
MD	"%pingtai%\%url_soft%\%soft10%\�ļ���ȫ\Hash"

:: Linux ר��
if "%pingtai%"=="Linux" (
    @ echo.
)
:: macOS ר��
if "%pingtai%"=="macOS" (
    @ echo.
)
:: Microsoft ר��
if "%pingtai%"=="Microsoft" (
    MD	"%pingtai%\%url_soft%\%soft10%\ɱ�����\�ֶ�ɱ��\PCHunter"
    MD	"%pingtai%\%url_soft%\%soft10%\ɱ�����\�ֶ�ɱ��\XueTr"
    MD	"%pingtai%\%url_soft%\%soft10%\ɱ�����\360"
    MD	"%pingtai%\%url_soft%\%soft10%\���ܽ���\Gpg4win"
    MD	"%pingtai%\%url_soft%\%soft10%\���ܽ���\Hash Suite"
    MD	"%pingtai%\%url_soft%\%soft10%\���簲ȫ\��͸\Nikto"
    MD	"%pingtai%\%url_soft%\%soft10%\�������\Ntpwed\%v1%"
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
    echo           ִ����� ��������
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
        echo           ִ����� ��������
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
    @ echo           ִ����� ��������
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
    @ echo.           ִ��ʧ�� ��������
    @ echo.
    @ echo.=====================================
    @ echo.
    ping -n 2 127.1>nul 2>NUL
    goto %back_menu%
)