
#!/bin/bash
export APP_PASS="sYQuXF5n"
export CA_ENV="HMG"
export DB_PASS="sgecUSR#2h"
export DB_URL="jdbc:oracle:thin:@bdedmhmg.ep.petrobras.com.br:1521:edmhmg"
export DB_USER="USR_SGEC2"
export ENV_PROFILE="hml"
export JWT_PASS="peTr&sGeC!"
export LOGIN_SEGURO="https://loginsegurok-apps.petrobras.com.br/fwca/4.1/SecurityService.svc?wsdl"
export SGEC_FRONTEND_URL="http://10.225.80.201:4200/auth"
export SGEC_STORAGE="/files"
export SHOW_ENV=true
export UPLOAD_DIR_SGEC="/"
export URL_AMBIENTE=http:"//10.225.80.201:4200"
export URL_UPLOAD_API="https://seprto0327.petrobras.biz:8443/upload-api"
export JAVA_TOOL_OPTIONS=-Xdebug -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5006

#Exportacao das chaves
keytool  -import -keystore   "/etc/ssl/certs/java/cacerts"  -storepass changeit -noprompt -alias "cert" -file  /mnt/c/Users/cxtk/projetos/workspace/sgec2/cert.cer
keytool  -import -keystore   "/etc/ssl/certs/java/cacerts"  -storepass changeit -noprompt -alias "loginseguro" -file  /mnt/c/Users/cxtk/projetos/workspace/sgec2/loginseguro.cer

java  -jar   /mnt/c/Users/cxtk/projetos/workspace/sgec2/target/sgec-rest.war
