#!/bin/bash
# update zabbix configs from github and restart agent

curl -s https://raw.githubusercontent.com/sl-he/nucypher_zabbix/master/geth.sh > /etc/zabbix/scripts/geth.sh

curl -s https://raw.githubusercontent.com/sl-he/nucypher_zabbix/master/nucypher-stats.sh > /etc/zabbix/scripts/nucypher-stats.sh

curl -s https://raw.githubusercontent.com/sl-he/nucypher_zabbix/master/nucypher-version.sh > /etc/zabbix/scripts/nucypher-version.sh
chmod 700 /etc/zabbix/scripts/*

curl -s https://raw.githubusercontent.com/sl-he/nucypher_zabbix/master/nucypher.conf > /etc/zabbix/zabbix_agentd.d/nucypher.conf

service zabbix-agent restart

service zabbix-agent status

echo "Done"
