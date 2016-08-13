(use-modules (artanis artanis))
(get "/hello" (lambda () "hello world"))
(run #:host "0.0.0.0" #:port 8080)
