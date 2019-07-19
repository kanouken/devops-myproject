FROM airdock/oracle-jdk:jdk-1.8
#set env 设置初始内存
ENV JAVA_OPTS "-Xmx300M -Xms300M"
COPY target/*.jar /app.jar
CMD /srv/java/jvm/bin/java -server -Duser.timezone=GMT+08 ${JAVA_OPTS} -jar /app.jar