# docker-nginx-vhost

## Directory tree
```
$ tree
tree
.
├── README.md
├── lb
│   ├── Dockerfile
│   └── config
│       └── default.conf
├── nginx
│   └── Dockerfile
├── serv-a
│   ├── Dockerfile
│   └── index.html
└── serv-b
    ├── Dockerfile
    └── index.html
```

## Build
- lb
```
$ sudo docker build -t lb lb/.
```
- serv-a
```
$ sudo docker build -t n-s-1 serv-a/.
```
- serv-b
```
$ sudo docker build -t n-s-2 serv-b/.
```

## Run
```
# Run lb, serv-a, serv-b
$ sudo docker run -d -p 9090:80 --name lb lb
$ sudo docker run -d --name serv-a n-s-1
$ sudo docker run -d --name serv-b n-s-2

# Create network & Connect
$ sudo docker network create nginx-lb
$ sudo docker network connect nginx-lb lb
$ sudo docker network connect nginx-lb serv-a
$ sudo docker network connect nginx-lb serv-b

# Restart lb
$ sudo docker start lb
```

## Result
- http://localhost:9090
![image](https://github.com/minu1215/docker-nginx-vhost/assets/44054359/b846d928-76df-4436-8ffd-4c4999df074d)
![image](https://github.com/minu1215/docker-nginx-vhost/assets/44054359/dd8e9335-8eda-4625-9627-56d99cfcc962)


