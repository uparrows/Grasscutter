FROM mongo:4.4.22
RUN rm /etc/apt/sources.list.d/mongodb-org.list
RUN apt-get update
RUN apt-get install curl openjdk-17-jdk -y
RUN apt-get clean
RUN mkdir Grasscutter
EXPOSE 27017/tcp
EXPOSE 27017/udp
EXPOSE 22102/udp
EXPOSE 443/tcp
VOLUME [ "/data/db" ]
VOLUME [ "/Grasscutter" ]
CMD ["mongod"]