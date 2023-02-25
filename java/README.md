# Java starter/demo using spring-boot

## A note on image size

The current image size is around 95.9 MB due to the additional layer for applying
permissions to the javauser. As the jar-file is 17.7 MB this is added on top.
When building the image with the squash option the resulting image size is reduced to 78.2 MB.


| Component           | Size |
| ------------------- | ------------- |
| Base Image          | 7.34 MB  |
| JRE                 | 53.1 MB  |
| java-rest-demo.jar  | 17.7 MB  |


When using a non customized JRE Image the size will be significant larger. For example using the eclipse-temurin:11-jre-alpine image as the base image instead of using alpin+custom JRE the resulting image size is around 170 MB (squashed).

