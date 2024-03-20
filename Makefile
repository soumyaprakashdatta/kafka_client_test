build:
	go build -o bin/kafka_client_test main.go

build-linux:
	CGO_ENABLED=1 GOOS=linux GOARCH=amd64 CC="zig cc -target x86_64-linux" CXX="zig c++ -target x86_64-linux" go build --ldflags '-linkmode external -extldflags "-static"' -tags musl -o bin/kafka_client_test_linux main.go