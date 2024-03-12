net use s: "\\ROYM2010\Woll2woll Delphi Products"
s:
cd \ipstudio5\source\windows
del *.dcu
cd \ipstudio5\bin\windows
del *.dcu
del *.~*
copy s:\ipstudio5\source\windows\*.dfm s:\ipstudio5\lib\windows

copy s:\ipstudio5\source\windows\*.res s:\ipstudio5\lib\windows
"c:\program files\CodeGear\RAD Studio\5.0\bin\dcc32" -LUvcl -LN..\..\lib\windows -$D- -$L- -B -JL -Ns:\ipstudio5\lib\windows -U..\..\source\windows s:\ipstudio5\bin\windows\ipstudiowin.dpk
copy s:\ipstudio5\lib\windows\ipstudiowin.dcp "c:\program files\CodeGear\RAD Studio\5.0\lib"

"c:\program files\CodeGear\RAD Studio\5.0\bin\dcc32" -LUvcl;ipstudiowin -$D- -$L- -B -JL -Ns:\ipstudio5\lib\windows -u..\..\source\windows s:\ipstudio5\bin\windows\ipstudiowinclient.dpk
copy s:\ipstudio5\lib\windows\ipstudiowinclient.dcp "c:\program files\CodeGear\RAD Studio\5.0\lib"

"c:\program files\CodeGear\RAD Studio\5.0\bin\dcc32" -LUvcl;ipstudiowin -$D- -$L- -Awintypes=windows -Awinprocs=windows -B -Ns:\ipstudio5\lib\windows -u..\..\source\windows s:\ipstudio5\bin\windows\ipstudiowinWord2000.dpk
copy s:\ipstudio5\lib\windows\ipstudiowinWord2000.dcp "c:\program files\CodeGear\RAD Studio\5.0\lib

"c:\program files\CodeGear\RAD Studio\5.0\bin\dcc32" -LUipstudiowin -$D- -$L- -JL -Awintypes=windows -Awinprocs=windows -B -Ns:\ipstudio5\lib\windows -u..\..\source\windows s:\ipstudio5\bin\windows\ipstudiowinWordxp.dpk
copy s:\ipstudio5\lib\windows\ipstudiowinWordxp.dcp "c:\program files\CodeGear\RAD Studio\5.0\lib

"c:\program files\CodeGear\RAD Studio\5.0\bin\dcc32" -LUipstudiowin -LN..\..\lib\windows -$D- -$L- -JL -Awintypes=windows -Awinprocs=windows -B -Ns:\ipstudio5\lib\windows -U..\..\source\windows s:\ipstudio5\bin\windows\dipstudiowin.dpk
copy s:\ipstudio5\lib\windows\dipstudiowin.dcp "c:\program files\CodeGear\RAD Studio\5.0\lib"

del s:\ipstudio5\lib\windows\wwrichedspell.dcu
copy s:\ipstudio5\source\windows\wwrichedspell.pas s:\ipstudio5\lib\windows\wwrichedspell.pas


copy s:\ipstudio5\source\windows\*.dcu "s:\ipstudio5\lib\windows"
copy s:\ipstudio5\bin\windows\*.dcu "s:\ipstudio5\lib\windows"
copy s:\ipstudio5\bin\windows\*.bpl "c:\windows\system32"
copy s:\ipstudio5\bin\windows\*.bpi "c:\program files\CodeGear\RAD Studio\5.0\lib"
copy s:\ipstudio5\bin\windows\*.lib "c:\program files\CodeGear\RAD Studio\5.0\lib"
copy s:\ipstudio5\bin\windows\*.hpp "c:\program files\CodeGear\RAD Studio\5.0\include\vcl"
copy s:\ipstudio5\bin\windows\*.hpp "s:\ipstudio5\include"
copy s:\ipstudio5\lib\windows\*.dcp "s:\ipstudio5\bin\windows"
rem del s:\ipstudio5\source\windows\*.obj
del s:\ipstudio5\source\windows\*.hpp

cd ..\source
del *.obj
del *.dcu
del *.~*
del *.old