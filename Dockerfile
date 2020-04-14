From google/cloud-sdk
LABEL maintainer "Sinlead <opensource@sinlead.com>"
ADD export.sh /opt/export.sh
RUN chmod u+x /opt/export.sh
ENTRYPOINT /opt/export.sh
