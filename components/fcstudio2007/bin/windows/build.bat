net use s: "\\ROYM2010\Woll2woll Delphi Products"
s:
cd \1stclassstudio5\source\windows
del *.dcu
cd \1stclassstudio5\bin\windows
del *.dcu
del *.~*
copy s:\1stclassstudio5\source\windows\*.dfm s:\1stclassstudio5\lib\windows
copy s:\1stclassstudio5\source\windows\*.res s:\1stclassstudio5\lib\windows
"c:\program files\CodeGear\Rad Studio\5.0\bin\dcc32" -LUvcl -$D- -$L- -B -JL -Ns:\1stclassstudio5\lib\windows -U..\..\source\windows s:\1stclassstudio5\bin\windows\fcstudiowin.dpk
copy s:\1stclassstudio5\bin\windows\fcstudiowin.dcp "c:\program files\CodeGear\Rad Studio\5.0\lib"

"c:\program files\CodeGear\Rad Studio\5.0\bin\dcc32" -LUfcstudiowin -LN..\..\bin\windows -$D- -$L- -JL -Awintypes=windows -Awinprocs=windows -B -Ns:\1stclassstudio5\lib\windows -U..\..\source\windows s:\1stclassstudio5\bin\windows\dfcstudiowin.dpk

copy s:\1stclassstudio5\source\windows\*.dcu "s:\1stclassstudio5\lib\windows"
copy s:\1stclassstudio5\bin\windows\*.dcu "s:\1stclassstudio5\lib\windows"
copy s:\1stclassstudio5\bin\windows\*.bpl "c:\windows\system32"
copy s:\1stclassstudio5\bin\windows\*.bpi "c:\program files\CodeGear\Rad Studio\5.0\lib"
copy s:\1stclassstudio5\bin\windows\*.lib "c:\program files\CodeGear\Rad Studio\5.0\lib"
copy s:\1stclassstudio5\bin\windows\*.hpp "c:\program files\CodeGear\Rad Studio\5.0\include\vcl"
copy s:\1stclassstudio5\bin\windows\*.hpp "s:\1stclassstudio5\include"
copy s:\1stclassstudio5\source\windows\*.res "c:\program files\CodeGear\Rad Studio\5.0\lib\obj"
copy s:\1stclassstudio5\source\windows\*.dfm "c:\program files\CodeGear\Rad Studio\5.0\lib\obj"

del s:\1stclassstudio5\source\windows\*.obj
del s:\1stclassstudio5\source\windows\*.hpp
del s:\1stclassstudio5\bin\windows\*.hpp

cd \1stclassstudio5\source\windows
del *.obj
del *.dcu
del *.~*
del *.old