set ue5Location=%~1
set workspace=%~2
set projectFilename=%~3

"%ue5Location%\Engine\Build\BatchFiles\RunUAT.bat" BuildCookRun -nocompileeditor -installed -cook -stage -archive -archivedirectory="C:\dist" -project="%workspace%\%projectFilename%" -noP4 -platform=Win64 -clientconfig=Development -build --optimized_build -package -ue4exe="%ue5Location%\Engine\Binaries\Win64\UnrealEditor-Cmd.exe" -ddc=DerivedDataBackendGraph -pak -prereqs -distribution -nodebuginfo -targetplatform=Win64 -build -target="%projectFilename%" -clientconfig=Development -utf8output

