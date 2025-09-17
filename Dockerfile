#FROM icr.io/appcafe/open-liberty:23.0.0.12-kernel-slim-java17-openj9-ubi
FROM icr.io/appcafe/open-liberty:23.0.0.12-full-java17-openj9-ubi

COPY --chown=1001:0 src/main/liberty/config/server.xml /config/server.xml
COPY --chown=1001:0 target/hello-world.war /config/apps/hello-world.war

USER root
RUN chown -R 1001:0 /config && chmod -R g+rw /config
USER 1001

RUN configure.sh
