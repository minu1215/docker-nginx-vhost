# Create network & Connect
docker network create nginx-lb
docker network connect nginx-lb lb
docker network connect nginx-lb serv-a
docker network connect nginx-lb serv-b
docker network connect nginx-lb blog-a
docker network connect nginx-lb blog-b

# Restart lb
docker start lb
