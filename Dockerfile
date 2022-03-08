# Created Date: 07/03/2022
# (c) Enquizit, Inc 2022
# DockerFile 
# v1 
# Revision History
# ----------------
# version   date        contributors    changes
# -------   ----        ------------    -------
# 1.0       07/03/2022      rz          initial revision
#=============================================================================
# This file conatains docker commands two build an image of the application using a jar file.
#=============================================================================


FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD target/*.jar app.jar

ENTRYPOINT ["java","-jar","app.jar"]

EXPOSE 80
