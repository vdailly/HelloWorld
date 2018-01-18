@echo off
rem be careful the current path
rem may be hard defined "cd c:\project"
rem default ${workspaceRoot} but may be override with Task Options.cwd (see tasks.json)
rem as example we use a custom path.
pushd .

rem load VS Developper Console
call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\Tools\VsDevCmd.bat"

popd

rem call the compiler
rem because build.bat is not the root directory, provide path to C files
rem /Zi include debug symbols
cd ./output
cl.exe "..\..\helloworld.c" /W4 /Zi
