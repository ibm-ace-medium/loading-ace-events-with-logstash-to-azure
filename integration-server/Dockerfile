FROM ivansla/rhel-ubi-ace:latest

# aceuser
USER aceuser

# Copy the BAR files into /tmp and process them:
#
# - Each file is compiled to ensure faster server startup
# - The files are unpacked into the server work directory
# - Once all files are in place, the work directory is optimized to speed up server start
# - The contents are made world-writable to allow for random userids at runtime
#
# The results of the commands can be found in the /tmp/deploys file.
#
ENV LICENSE=accept

COPY *.bar /tmp
COPY --chown=aceuser:aceuser server.conf.yaml /home/aceuser/ace-server/

RUN export LICENSE=accept \
    && . /opt/ibm/ace-12/server/bin/mqsiprofile \
    && set -x  \
    && ibmint deploy --input-bar-file /tmp/LoadingAceEventsWithLogstashToAzure.bar --output-work-directory /home/aceuser/ace-server/ 2>&1 | tee -a /tmp/deploys

# Expose ports.  7600, 7800, 7843 for ACE;
EXPOSE 7600 7800 7843

# Set entrypoint to run the server
ENTRYPOINT ["bash", "-c", ". /opt/ibm/ace-12/server/bin/mqsiprofile && IntegrationServer --name loading-ace-events-with-logstash-to-azure --work-dir /home/aceuser/ace-server"]
CMD ["/bin/bash"]