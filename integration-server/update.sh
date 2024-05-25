sudo docker build --tag=loading-ace-events-with-logstash-to-azure/integration-server:latest .
sudo docker container stop integration-server
sudo docker container rm integration-server
sudo docker run -dt --name integration-server loading-ace-events-with-logstash-to-azure/integration-server:latest
sudo docker network connect my-network integration-server
sudo docker network inspect my-network
sudo docker exec -ti integration-server bash
