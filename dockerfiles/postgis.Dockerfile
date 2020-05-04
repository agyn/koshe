#docker build -f ./dockerfiles/postgis.Dockerfile . --tag postgis-koshe:0.1
#docker run --publish 5432:5432 --detach --name postgis-koshe postgis-koshe:0.1
#or you can run with IDEA

#https://hub.docker.com/r/kartoza/postgis/
FROM kartoza/postgis:12.1
VOLUME "/data"
ENV POSTGRES_USER=gisuser
ENV POSTGRES_PASS=password
ENV POSTGRES_DBNAME=gis
EXPOSE 5432