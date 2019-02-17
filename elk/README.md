# Elasticsearch, Logstash, Filebeat, Kibana, Nginx Docker image #

This Docker image provides a log management web interface, by packaging Elasticsearch, Logstash, Filebeat and Kibana (with Nginx as HTTP proxy).

## How to run ##
```bash
chmod +x set_environment.sh && ./set_environment.sh

[sudo] docker-compose up --build

```
`filbeat` will collect all containers logs and chip them to `logstash` which will format them. `logstash` will send those logs to `elasticsearch` for storage and indexation. `kibana` will use index pattern to show logs data throughout `nginx` HTTP proxy.

You can access Kibana using your Host IP in your browser.
