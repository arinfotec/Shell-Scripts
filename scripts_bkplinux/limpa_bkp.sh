#!/bin/sh
data=`date '+%d%m%y'`
arq="log_"$data
touch /dados/log3/$arq
inicio=`date '+%H:%M'`
echo "limpando diretorios de Backup: "$inicio >> /dados/log3/$arq
echo "-------------------------" >> /dados/log3/$arq

echo "Diretorio: Aplica-WEB " >> /dados/log3/$arq
ls -l /dados/aplic-web/ >> /dados/log3/$arq
rm -rf /dados/aplic-web/*     
echo "-------------------------" >> /dados/log3/$arq

echo "Diretorio: FTP" >> /dados/log3/$arq
ls -l /dados/ftp/ >> /dados/log3/$arq
rm -rf /dados/ftp/*     
echo "-------------------------" >> /dados/log3/$arq

echo "Diretorio: Gateway" >> /dados/log3/$arq
ls -l /dados/gateway/ >> /dados/log3/$arq
rm -rf /dados/gateway/*     
echo "-------------------------" >> /dados/log3/$arq

echo "Diretorio: Nacses" >> /dados/log3/$arq
ls -l /dados/nacses/ >> /dados/log3/$arq
rm -rf /dados/nacses/*     
echo "-------------------------" >> /dados/log3/$arq

echo "Diretorio: NS" >> /dados/log3/$arq
ls -l /dados/ns/ >> /dados/log3/$arq
rm -rf /dados/ns/*     
echo "-------------------------" >> /dados/log3/$arq

echo "Diretorio: OraXE" >> /dados/log3/$arq
ls -l /dados/oraxe/ >> /dados/log3/$arq
rm -rf /dados/oraxe/*     
echo "-------------------------" >> /dados/log3/$arq

echo "Diretorio: WEB" >> /dados/log3/$arq
ls -l /dados/web1/ >> /dados/log3/$arq
rm -rf /dados/web1/*     
echo "-------------------------" >> /dados/log3/$arq

fim=`date '+%H:%M'`
echo "Fim da limpeza dos diretorios do backup: "$fim >> /dados/log3/$arq
echo "Backup Servidores" | mail -s "Backup dos servidores" armendes@hes.unicamp.br < /dados/log3/$arq
 

