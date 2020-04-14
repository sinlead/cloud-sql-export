From google/cloud-sdk
LABEL maintainer "Eric Chang <scrazy77@gmail.com>"
ADD export.sh /opt/export.sh
RUN chmod u+x /opt/export.sh
ENTRYPOINT /opt/export.sh