set ue5Location=%~1
set workspace=%~2
set projectFilename=%~3


"%ue5Location%\Engine\\Build\\BatchFiles\\RunUAT.bat BuildCookRun -nocompileeditor -installed -nop4 -project=$WORKSPACE\\$PROJECT_NAME.uproject -cook -stage -archive -archivedirectory=$WORKSPACE\\dist -package -ue4exe=$WIN_ENGINE_DIRECTORY\\Binaries\\Win64\\UE4Editor-Cmd.exe -ddc=DerivedDataBackendGraph -pak -prereqs -distribution -nodebuginfo -targetplatform=Win64 -build -target=$PROJECT_NAME -clientconfig=Development -utf8output"