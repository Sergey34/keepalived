FROM osixia/keepalived:2.0.13

EXPOSE 3903

ADD dts /dts
ADD keepalived/keepalived.conf /container/service/keepalived/assets/keepalived.conf
ADD keepalived/notify.sh /container/service/keepalived/assets/notify.sh
ADD keepalived/status.sh /container/service/keepalived/assets/status.sh
#CMD ["java", "-Xmx200m", "-jar", "/app/market.jar"]




RUN apk --no-cache add \
    openjdk8-jre \
    curl \