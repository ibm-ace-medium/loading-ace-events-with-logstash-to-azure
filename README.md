# loading-ace-events-with-logstash-to-azure

# follow logs from logstash-server
sudo docker compose logs logstash-server -f
# enter integration-server container bash
sudo docker compose exec integration-server bash