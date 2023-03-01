# Dockerfile for building an image to run the the sample spring boot app
# with the sample REST service.
# 
# Utilizing stage build to keep image size small
# Stages
# 1. Build jar
# 2. Create custom JRE with limited set of modules to run spring boot app
# 3. build runtime image using jar from stage 1 and JRE from stage 2
#

# Stage 1: Build jar from sources
FROM maven:3.9.0-eclipse-temurin-11-focal AS app-build
RUN mkdir /build
COPY . /build
WORKDIR /build
RUN mvn clean package -DskipTests

# Stage 2: Create a custom JRE with a limited set of java modules
FROM eclipse-temurin:11-jdk-alpine as jre-build
RUN $JAVA_HOME/bin/jlink \
    --add-modules java.base,java.xml,java.naming,java.desktop,java.management,java.security.jgss,java.instrument \
    --strip-debug \
    --no-man-pages \
    --no-header-files \
    --compress=2 \
    --output /javaruntime

# Stage 3: Finally build the image to run the jar
# uses the jar from stage 1 and the JRE from stage 2 
FROM alpine:3.17
ENV JAVA_HOME=/opt/java/openjdk
ENV PATH "${JAVA_HOME}/bin:${PATH}"
COPY --from=jre-build /javaruntime $JAVA_HOME
RUN apk add --no-cache dumb-init && \
    addgroup --system javauser && adduser -S -s /bin/false -G javauser javauser && \
    mkdir /opt/app
COPY --from=app-build /build/target/java-rest-demo.jar /opt/app/java-rest-demo.jar
WORKDIR /opt/app
USER javauser
ENTRYPOINT ["/usr/bin/dumb-init", "--"]
CMD ["java", "-jar", "/opt/app/java-rest-demo.jar"]


