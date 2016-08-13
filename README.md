```
<<<<<<< HEAD
$ docker run -it --rm --name my-running-script -v "$PWD":/usr/src/myapp -w /usr/src/myapp -p 127.0.0.1:8080:8080 bopjiang/artanis guile ./simple_http_server.scm
=======
$docker run -it --rm --name my-running-script -v "$PWD":/usr/src/myapp -w /usr/src/myapp -p 127.0.0.1:8080:8080 artanis guile example/simple_http_server.scm
>>>>>>> e333fdc2e73f5089b27ba08469a5d45c895e2b93

$ curl 127.0.0.1:8080/hello
hello world
```
