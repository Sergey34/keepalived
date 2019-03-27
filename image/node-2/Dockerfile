FROM osixia/keepalived:2.0.13

EXPOSE 3903

ADD dts /dts
ADD keepalived/keepalived.conf /container/service/keepalived/assets/keepalived.conf
ADD keepalived/notify.sh /container/service/keepalived/assets/notify.sh
ADD keepalived/status.sh /container/service/keepalived/assets/status.sh
ADD keepalived/process.sh /container/service/keepalived/process.sh

ADD keepalived/keepalived.conf /usr/local/etc/keepalived/keepalived.conf
RUN /bin/bash -c 'ls -la /container/service/keepalived/assets/; chmod 777 /container/service/keepalived/assets/*; ls -la /container/service/keepalived/assets/'
RUN /bin/bash -c 'ls -la /container/service/keepalived/; chmod 777 /container/service/keepalived/*; ls -la /container/service/keepalived/'

#CMD ["java", "-Xmx200m", "-jar", "/app/market.jar"]
RUN apk --no-cache add \
    openjdk8-jre \
    curl \