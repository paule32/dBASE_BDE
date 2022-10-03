; (c) 2022 by Jens Kallup - paule32
; all rights reserved.
[Setup]
AppName={cm:MyAppName}
AppId=My New dBase
AppVerName={cm:MyAppVerName,1.0}
WizardStyle=modern
DefaultDirName={autopf}\{cm:MyAppName}
DefaultGroupName={cm:MyAppName}
UninstallDisplayIcon={app}\runtime.exe
VersionInfoDescription=My New dBase Setup
VersionInfoProductName=My New dBase
OutputDir=E:\Projekte\DataBase\setup\output
MissingMessagesWarning=yes
NotRecognizedMessagesWarning=yes

[Languages]
Name: en; MessagesFile: "compiler:Default.isl"
Name: de; MessagesFile: "compiler:Languages\German.isl"

[Messages]
en.BeveledLabel=English
de.BeveledLabel=Deutsch

[CustomMessages]
en.MyDescription=My description
en.MyAppName=My New dBASE
en.MyAppVerName=My New dBASE %1
de.MyDescription=Meine Beschreibung
de.MyAppName=My New dBASE
de.MyAppVerName=My New dBASE %1

[Files]
Source: "files\assets\common\chsdet.dll";    DestDir: "{app}\assets\common"
Source: "files\assets\common\config.ini";    DestDir: "{app}\assets\common"
Source: "files\assets\images\*.*";           DestDir: "{app}\assets\images"
Source: "files\assets\locale\setup.deu";     DestDir: "{app}\assets\locale"
Source: "files\assets\locale\setup.eng";     DestDir: "{app}\assets\locale"
Source: "files\config.ini";                  DestDir: "{app}"
Source: "files\runtime.exe";                 DestDir: "{app}"
Source: "files\readme-enu.txt";              DestDir: "{app}"; Languages: en; Flags: isreadme
Source: "files\readme-deu.txt";              DestDir: "{app}"; Languages: de; Flags: isreadme

[Icons]
Name: "{group}\{cm:MyAppName}"; Filename: "{app}\runtime.exe"
Name: "{group}\{cm:UninstallProgram,{cm:MyAppName}}"; Filename: "{uninstallexe}"

[Tasks]
; The following task doesn't do anything and is only meant to show [CustomMessages] usage
Name: mytask; Description: "{cm:MyDescription}"
