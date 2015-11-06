FROM grafana/grafana

RUN apt-get update && apt-get install unzip
RUN cd /tmp && wget https://github.com/alexanderzobnin/grafana-zabbix/archive/master.zip && unzip master.zip && cd /tmp/grafana-zabbix-master && mv zabbix /usr/share/grafana/public/app/plugins/datasource/
