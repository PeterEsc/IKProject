pipeline {
    agent { label 'main' }
    environment {
        WIN_ENGINE_DIRECTORY     = 'C:\\ProgramFiles\\EpicGames\\UE_5.2'
        PROJECT_NAME             =  'IKProject'
    }

    options {
        timeout(time: 60, unit: 'MINUTES')
    }

    stages {
        stage('Windows') {
            steps {
                    echo 'Building Windows Client'
                    script {
                        if (env.BRANCH_NAME == 'main' || env.BRANCH_NAME.contains('rel_')) {
                            bat "$WIN_ENGINE_DIRECTORY\\Build\\BatchFiles\\RunUAT.bat BuildCookRun -nocompileeditor -installed -nop4 -project=$WORKSPACE\\$PROJECT_NAME.uproject -cook -stage -archive -archivedirectory=$WORKSPACE\\dist -package -ue4exe=$WIN_ENGINE_DIRECTORY\\Binaries\\Win64\\UE4Editor-Cmd.exe -ddc=DerivedDataBackendGraph -pak -prereqs -distribution -nodebuginfo -targetplatform=Win64 -build -target=$PROJECT_NAME -clientconfig=Shipping -utf8output"
                        }
                        else {
                            bat "$WIN_ENGINE_DIRECTORY\\Build\\BatchFiles\\RunUAT.bat BuildCookRun -nocompileeditor -installed -nop4 -project=$WORKSPACE\\$PROJECT_NAME.uproject -cook -stage -archive -archivedirectory=$WORKSPACE\\dist -package -ue4exe=$WIN_ENGINE_DIRECTORY\\Binaries\\Win64\\UE4Editor-Cmd.exe -ddc=DerivedDataBackendGraph -pak -prereqs -distribution -nodebuginfo -targetplatform=Win64 -build -target=$PROJECT_NAME -clientconfig=Development -utf8output"
                        }
                    }
                }
        }
    }
}
