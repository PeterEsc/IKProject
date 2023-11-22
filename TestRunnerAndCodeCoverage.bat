set ue5Location=%~1
set workspace=%~2
set projectFilename=%~3
set testSuiteToRun=%~4
set testReportFolder=%~5
set testsLogName=%~6
set codeCoverageFile=%~7

set testRunnerCommand="%ue5Location%\Engine\Binaries\Win64\UnrealEditor-cmd.exe" "%workspace%\%projectFilename%" -nosplash -Unattended -nopause -NullRHI -nosound -nocontentbrowser -server -ExecCmds="Automation RunAll;quit" -TestExit="Automation Test Queue Empty" -ReportOutputPath="%workspace%\%testReportFolder%" -log -Log=%testsLogName%

"C:\Program Files\OpenCppCoverage\opencppcoverage.exe" --sources=\Source --modules %workspace% --excluded_sources=\Tests --export_type=cobertura:%codeCoverageFile% --optimized_build  -- %testRunnerCommand%