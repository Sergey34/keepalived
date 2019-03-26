FROM osixia/keepalived:2.0.13

#EXPOSE 8083

ADD ../dts /dts
ADD keepalived /container/service/keepalived/assets/keepalived.conf
ADD keepalived /container/service/keepalived/assets/notify.sh
#CMD ["java", "-Xmx200m", "-jar", "/app/market.jar"]
RUN apk --no-cache add \
    openjdk8-jre \
    curl \