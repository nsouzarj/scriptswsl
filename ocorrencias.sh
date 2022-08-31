
#!/bin/bash
#Adcionando os hosts de dns  ro resolv.conf

echo "nameserver 333.333.333.3" >>  /etc/resolv.conf
echo "nameserver 444.444.444.4" >> /etc/resolv.conf
echo "search petrobtas.biz" >> /etc/resolv.conf
echo "search petrobras.com.br" >> /etc/resolv.conf



#Adciona os hosts  para resolver

echo "10.30.198.129	pocoweb.cenpes.petrobras.com.br"  >>  /etc/hosts
echo "10.28.193.36	bdedmhmg.ep.petrobras.com.br" >> /etc/hosts
echo "10.30.43.82	bdedmdsv.petrobras.com.br"   >> /etc/hsots
echo "10.28.194.240	bdedmbr.ep.petrobras.com.br" >> /etc/hosts


export ENVIRONMENT="HMG"
export SERVER_PORT="8282"
export DB_URL="jdbc:oracle:thin:@bdedmhmg.ep.petrobras.com.br:1521:edmhmg"
export DB_USER="USR_OCRC"
export DB_PASS="occrUSR#2h"
export EMPLOYEE_API_URL="http://10.225.80.201:81/api/employees"
export PORTAL_CTPS_URL="http://10.225.80.201:81"
export CREATE_SIGA_URL="http://10.225.80.201:81/siga-api/create"
export VERIFY_SIGA_URL="http://10.225.80.201:81/siga-api/organ"
export NOTES_SIGA_URL="http://10.225.80.201:81/siga-api/notes"
export SIGA_KEY="JLDS-BJGN6Z"
export KEYCLOAK_SERVER_URL="http://localhost:81/auth"
#Email-lib
export ENV_PROFILE="docker"
export DB_CTLA_USER="USR_CTLA"
export EMAIL_API_URL="http://10.225.80.201:81/api/email-api"
export DB_CTLA_PASS="USRCTLA#BR"
export DB_OPBL_PASS="usrOPBL#dht"
export DB_OPBL_USER="USR_OPBL"
export DB_PASS_EMPLOYEE="USRALRT#18"
export DB_USER_EMPLOYEE="USR_ALRT"
export DB_DSISEDM_USER="USR_DSIS_EDM"
export DB_DSISEDM_PASS="usr#DSISEDM"
export HIBERNATE_SHOW_SQL="true"
export HIBERNATE_FORMAT_SQL="true"
export KEYCLOAK_REALM="DecisionSpace_Integration_Server"
export OCCURRENCE_KEYCLOAK_CLIENT_ID="SGDP"
export SEND_EMAIL_RETIFICADORA="CFCJ,C7Q4,E8G7,U4ZX"
export SEND_EMAIL_COINC="C7Q4,E8G7,U4ZX,EEM0,CFCJ"
export SEND_EMAIL_TEST=true
export SEND_EMAIL_TEST_ADRESSES="cfcj@petrobras.com.br"
export SEND_EMAIL_TEST_INTERNAL="CXTK,U4ZX,E8G7,EEM0,CFCJ,D97E,CJ8W,DAP8"
export LOGGING_LEVEL="info"
export LOGGING_LEVEL_OCCURRENCE="info"

docker run   ocorrencias-api -p 8282:8282

#Porta  de debug
#export  JAVA_TOOL_OPTIONS="-Xdebug -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5006"

#Exportacao das chaves

#keytool  -import -keystore   "/etc/ssl/certs/java/cacerts"  -storepass changeit -noprompt -alias "cert" -file  /mnt/c/Users/cxtk/projetos/workspace/ssms-ocorr-ncias/conf/cert.cer
#keytool  -import -keystore   "/etc/ssl/certs/java/cacerts"  -storepass changeit -noprompt -alias "keycloak" -file  /mnt/c/Users/cxtk/projetos/workspace/ssms-ocorr-ncias/conf/keycloak.cer

#java  -jar   /mnt/c/Users/cxtk/projetos/workspace/ssms-ocorr-ncias/target/occurrence-api.war  -Djava.awt.headless=true

