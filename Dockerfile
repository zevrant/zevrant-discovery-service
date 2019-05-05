FROM 725235728275.dkr.ecr.us-east-1.amazonaws.com/zevant-centos-base:latest

RUN mkdir -p /usr/local/microservices/zevrant-home-services/zevrant-discovery-service/

RUN mkdir -p /var/log/zevrant-home-services/zevrant-discovery-service

COPY build/libs/zevrant-discovery-service-0.0.1-SNAPSHOT.jar /usr/local/microservices/zevrant-home-services/zevrant-discovery-service/zevrant-discovery-service.jar

RUN adduser -d /usr/local/microservices/zevrant-home-services/zevrant-discovery-service/ -G developers -r -U

RUN chown -R zevrant-discovery-service:developers /var/log/zevrant-home-services/zevrant-discovery-service; chown -R zevrant-discovery-service:developers /usr/local/microservices/zevrant-home-services/zevrant-discovery-service
