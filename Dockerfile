FROM zevrant/zevrant-centos-base:latest

ARG a_version

ENV VERSION=$a_version

EXPOSE 8000

RUN mkdir -p /usr/local/microservices/zevrant-home-services/zevrant-discovery-service/

RUN mkdir -p /var/log/zevrant-home-services/zevrant-discovery-service

RUN adduser -d /usr/local/microservices/zevrant-home-services/zevrant-discovery-service/ -G developers -r -U zevrant-discovery-service

RUN chown -R zevrant-discovery-service:developers /var/log/zevrant-home-services/zevrant-discovery-service; chown -R zevrant-discovery-service:developers /usr/local/microservices/zevrant-home-services/zevrant-discovery-service

USER zevrant-discovery-service

COPY ./zevrant-discovery-service-${VERSION}.jar /usr/local/microservices/zevrant-home-services/zevrant-discovery-service/zevrant-discovery-service.jar

RUN mkdir -p ~/.aws; echo "[default]" > ~/.aws/credentials; echo "[default]" > ~/.aws.config; echo "region = us-east-1" >> ~/.aws/config; echo "output = json" >> ~/.aws/config;

CMD  echo "aws_access_key_id = $ACCESS_KEY" >> ~/.aws/credentials; echo "aws_secret_access_key = $SECRET_KEY" >> ~/.aws/credentials; java -jar /usr/local/microservices/zevrant-home-services/zevrant-discovery-service/zevrant-discovery-service.jar
