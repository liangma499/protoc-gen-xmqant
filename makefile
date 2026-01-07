GOPATHS=`go env GOPATH`
init:
	@echo "init mqant tools"

windows:
	@CGO_ENABLED=0 GOOS=windows GOARCH=amd64 go build -o "protoc-gen-xmqant" main.go
	@cp  protoc-gen-xmqant $(GOPATHS)/bin
	@rm  protoc-gen-xmqant
linux:
	CGO_ENABLED=0 GOOS=linux GOARCH=amd64  go build -o "protoc-gen-xmqant" main.go
	@cp  protoc-gen-xmqant $(GOPATHS)/bin
	@rm  protoc-gen-xmqant
mac:
	go build -o "protoc-gen-xmqant" main.go
	@cp  protoc-gen-xmqant $(GOPATHS)/bin
	@rm  protoc-gen-xmqant

install:
	@echo $(GOPATHS)
