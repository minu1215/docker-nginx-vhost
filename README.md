# docker-nginx-vhost
![2024-02-14 17-31-09](https://github.com/minu1215/docker-nginx-vhost/assets/44054359/85c2bdef-15c9-4534-8647-2f8d502a2b85)

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


