set ue5Location=%~1
set workspace=%~2
set projectFilename=%~3


"%ue5Location%\Engine\\Build\\BatchFiles\\RunUAT.bat BuildCookRun -nocompileeditor -installed -nop4 -project=%workspace%\\%projectFilename%.uproject -cook -stage -archive -archivedirectory=%workspace%\\dist -package -ue4exe="%ue5Location%\Engine\\Binaries\\Win64\\UE4Editor-Cmd.exe -ddc=DerivedDataBackendGraph -pak -prereqs -distribution -nodebuginfo -targetplatform=Win64 -build -target=%projectFilename% -clientconfig=Development -utf8output"