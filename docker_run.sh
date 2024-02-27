#Run
# Run lb, serv-a, serv-b, blog-a, blog-b
docker run -d -p 9090:80 --name lb kaz1301/lb
docker run -d --name serv-a kaz1301/n-s-1
docker run -d --name serv-b kaz1301/n-s-2
docker run -d --name blog-a kaz1301/blog-a
docker run -d --name blog-b kaz1301/blog-b
