sudo docker compose down

. ~/Tools/ace-12.0.8.0/server/bin/mqsiprofile

ibmint package --input-path ~/Repositories/ibm-ace-medium/loading-ace-events-with-logstash-to-azure/LoadingAceEventsWithLogstashToAzure \
--output-bar-file ~/Repositories/ibm-ace-medium/loading-ace-events-with-logstash-to-azure/integration-server/LoadingAceEventsWithLogstashToAzure.bar \
--do-not-compile-java

sudo docker compose up -d --build --remove-orphans