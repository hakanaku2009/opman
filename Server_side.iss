; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
AppName=DB_batch
AppVerName=DB_batch
AppPublisher=RiverCross Technologies
AppPublisherURL=http://www.rivercrosstech.com
AppSupportURL=http://www.rivercrosstech.com
AppUpdatesURL=http://www.rivercrosstech.com
DefaultDirName={pf}\DB_batch
DefaultGroupName=DB_batch
AllowNoIcons=yes
OutputDir=C:\Programming\vbnet_2003\Version23apr11
;OutputManifestFile=BlueTrax AVL 2.1 - Manifest.txt
OutputBaseFilename=Server_side

Compression=lzma
SolidCompression=yes
AlwaysRestart=no

[Languages]
Name: "eng"; MessagesFile: "compiler:Default.isl"
Name: "bra"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "cat"; MessagesFile: "compiler:Languages\Catalan.isl"
Name: "cze"; MessagesFile: "compiler:Languages\Czech.isl"
Name: "dan"; MessagesFile: "compiler:Languages\Danish.isl"
Name: "dut"; MessagesFile: "compiler:Languages\Dutch.isl"
Name: "fre"; MessagesFile: "compiler:Languages\French.isl"
Name: "ger"; MessagesFile: "compiler:Languages\German.isl"
Name: "hun"; MessagesFile: "compiler:Languages\Hungarian.isl"
Name: "ita"; MessagesFile: "compiler:Languages\Italian.isl"
Name: "nor"; MessagesFile: "compiler:Languages\Norwegian.isl"
Name: "pol"; MessagesFile: "compiler:Languages\Polish.isl"
Name: "por"; MessagesFile: "compiler:Languages\Portuguese.isl"
Name: "rus"; MessagesFile: "compiler:Languages\Russian.isl"
Name: "slo"; MessagesFile: "compiler:Languages\Slovenian.isl"


[Files]

;dlls and configuration files
;Source: "C:\Programming\C#\sperhec\hec2\bin\Release\Interop.Excel.dll"; DestDir: "{app}"; Flags: ignoreversion
;Source: "C:\Programming\vbnet_2003\Version23apr11\ExpTree_Demo\bin\ram23.exe"; DestDir: "{app}"; Flags: ignoreversion

;database and other dependencies
;Msi installer. latest version for dot net
Source: "C:\Programming\C#\dependencies\msiexec.exe"; DestDir: "{win}\System32"; Flags: ignoreversion deleteafterinstall
Source: "C:\Programming\C#\dependencies\postgresql-8.0.msi"; DestDir: "{win}\System32"; Flags: ignoreversion  deleteafterinstall
Source: "C:\Programming\C#\dependencies\postgresql-8.0-int.msi"; DestDir: "{win}\System32"; Flags: ignoreversion  deleteafterinstall
;Source: "C:\Programming\C#\dependencies\dotNetFramework1.1\dotnetfx v1.1.exe"; DestDir: "{win}\System32"; Flags: ignoreversion  deleteafterinstall
;Source: "C:\Programming\C#\dependencies\psqlodbc-08_01_0200\psqlodbc.msi"; DestDir: "{win}\System32"; Flags: ignoreversion  deleteafterinstall
Source: "C:\Programming\C#\dependencies\RCL_DB.bat"; DestDir: "{pf}\Ramani Database"; Flags: ignoreversion  deleteafterinstall
;Source: "C:\Programming\C#\dependencies\psqlodbc-08_01_0200\upgrade.bat"; DestDir: "{win}\System32"; Flags: ignoreversion  deleteafterinstall
;  -----------copying dlls   and  configuration files


[Registry]
Root: HKLM; Subkey: "System\ControlSet001\Control\Session Manager\Environment"; ValueType: string; ValueName: "PGHOME"; ValueData: "{pf}\PostgreSQL\8.0"
Root: HKLM; Subkey: "System\ControlSet001\Control\Session Manager\Environment"; ValueType: string; ValueName: "PGDATA"; ValueData: "{pf}\PostgreSQL\8.0\Data"
Root: HKLM; Subkey: "System\ControlSet001\Control\Session Manager\Environment"; ValueType: string; ValueName: "PGLIB"; ValueData: "{pf}\PostgreSQL\8.0\Lib"
Root: HKLM; Subkey: "System\ControlSet001\Control\Session Manager\Environment"; ValueType: string; ValueName: "PGHOST"; ValueData: "localhost"
Root: HKLM; Subkey: "System\ControlSet001\Control\Session Manager\Environment"; ValueType: expandsz; ValueName: "Path"; ValueData: "{olddata};{pf}\PostgreSQL\8.0\Bin;"

Root: HKLM; Subkey: "System\ControlSet001\Control\Session Manager\Environment"; ValueType: expandsz; ValueName: "Path"; ValueData: "{olddata};{pf}\DB_batch;"


[Run]
;Filename: "{win}\System32\msiexec.exe"; parameters: /i {win}\System32\postgresql-8.0.msi;
;Filename: "{win}\System32\dotnetfx v1.1.exe"; Parameters: "/Q";
Filename: "{win}\System32\msiexec.exe"; parameters: /i {win}\System32\postgresql-8.0.msi;   Flags: waituntilterminated
;Filename: {win}\System32\msiexec.exe; parameters: /i {win}\System32\psqlodbc.msi /qb!;
;Filename: "{win}\System32\upgrade.bat"; Parameters: "/Q";
;Filename: "{win}\System32\RCL_DB.bat"; Parameters: "/Q";



