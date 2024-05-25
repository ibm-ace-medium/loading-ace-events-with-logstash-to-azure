FROM docker.elastic.co/logstash/logstash:8.13.4
RUN rm -f /usr/share/logstash/pipeline/logstash.conf
RUN logstash-plugin install logstash-output-applicationinsights
COPY pipeline/ /usr/share/logstash/pipeline/
COPY config/ /usr/share/logstash/config/