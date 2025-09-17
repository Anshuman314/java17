FROM icr.io/appcafe/open-liberty:23.0.0.12-kernel-slim-java17-openj9-ubi

COPY --chown=1001:0 src/main/liberty/config/server.xml /config/
COPY --chown=1001:0 target/hello-world.war /config/apps/

RUN configure.sh