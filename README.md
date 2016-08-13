```
$ docker run -it --rm --name my-running-script -v "$PWD":/usr/src/myapp -w /usr/src/myapp -p 127.0.0.1:8080:8080 artanis guile ./simple_http_server.scm

$ curl 127.0.0.1:8080/hello
hello world
```
