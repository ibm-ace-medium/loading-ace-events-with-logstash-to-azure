sudo docker build --tag=loading-ace-events-with-logstash-to-azure/logstash-server:latest .
sudo docker container stop logstash-server
sudo docker container rm logstash-server
sudo docker run -dt --name logstash-server loading-ace-events-with-logstash-to-azure/logstash-server:latest
sudo docker network connect my-network logstash-server
sudo docker network inspect my-network
sudo docker exec -ti logstash-server bash
