#!/bin/bash

LOG_DIR="../linux3_alura"
mkdir -p $LOG_DIR

function monitorar_logs() {
grep -E "fail(ed)?|error|denied|unauthorized" /var/log/syslog | awk '{print $1, $2, $3, $5, $6, $7}' >> $LOG_DIR/monitoramento_logs_sistema_johnny.txt

grep -E "fail(ed)?|error|denied|unauthorized" /var/log/auth.log | awk '{print $1, $2, $3, $5, $6, $7}' >> $LOG_DIR/monitoramento_logs_auth_johnny.txt
}

function monitorar_disco() {
        echo "$(date)" >> $LOG_DIR/monitoramento_disco_johnny.txt
        df -h | grep -v "snapfuse" | awk '$5+0 > 70 { print $1 " esta com " $5 " de uso."  }' >> $LOG_DIR/monitoramento_disco_johnny.txt
        echo "Uso de disco no diretório principal: " >> $LOG_DIR/monitoramento_disco_johnny.txt
        du -sh /home/lvbar >> $LOG_DIR/monitoramento_disco_johnny.txt

}

function monitorar_hardware_RAM() {
        echo "$(date)" >> $LOG_DIR/monitoramento_hardware_johnny.txt
        free -h | grep Mem | awk '{print "MEMÓRIA RAM TOTAL: " $2, ", USADA: " $3 ", LIVRE: " $4}' >> $LOG_DIR/monitoramento_hardware_johnny.txt
top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" >> $LOG_DIR/monitoramento_hardware_johnny.txt
}

function monitorar_rede() {
if ping -c 1 8.8.8.8 > /dev/null; then
        echo "$(date): Conectividade ativa." >> $LOG_DIR/monitoramento_rede.txt
else
        echo "$(date): Falha na conexão." >> $LOG_DIR/monitoramento_rede.txt
fi


if curl  -s --head https://www.alura.com.br/ | grep "HTTP/2 200" > /dev/null; then
        echo "$(date): Conexão com Alura bem-sucedida" >> $LOG_DIR/monitoramento_rede.txt
else
        echo "$(date): Falha na conexão com Alura" >> $LOG_DIR/monitoramento_rede.txt
fi
}
function executar_monitoramento() {
        monitorar_logs
        monitorar_rede
        monitorar_disco
        monitorar_hardware_RAM
}

#Código mais modular
executar_monitoramento
                               
