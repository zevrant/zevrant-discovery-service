package net.zevrantservices.home.discovery.zevrantdiscoveryservice;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;
import org.springframework.cloud.netflix.sidecar.EnableSidecar;

@EnableSidecar
@EnableEurekaServer
@SpringBootApplication
public class ZevrantDiscoveryServiceApplication {

    public static void main(String[] args) {
        SpringApplication.run(ZevrantDiscoveryServiceApplication.class, args);
    }

}
