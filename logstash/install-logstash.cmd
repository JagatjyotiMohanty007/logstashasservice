CD "C:\Program Files\nssm-2.24\win64"
NSSM install logstash "C:\logstash-5.3.0\bin\Logstash.bat"
NSSM set logstash AppParameters -f C:\ProgramData\logstash\pipeline
NSSM set logstash AppDirectory "C:\logstash-5.3.0"
NSSM set logstash AppEnvironmentExtra "JAVA_HOME=C:\Program Files\Java\jre1.8.0_121"
NSSM set logstash AppStdout C:\ProgramData\logstash\stdout.log
NSSM set logstash AppStderr C:\ProgramData\logstash\stderr.log
REM Replace stdout and stderr files
NSSM set logstash AppStdoutCreationDisposition 2
NSSM set logstash AppStderrCreationDisposition 2
REM Disable WM_CLOSE, WM_QUIT in the Shutdown options. Without it, NSSM can't stop Logstash properly
NSSM set logstash AppStopMethodSkip 6
REM Let's start Logstash. I assume a correct configuration is already in place
@REM net start logstash
