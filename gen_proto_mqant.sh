#!/bin/bash
binDir=$(go env GOPATH)
protoc \
  --experimental_allow_proto3_optional \
  --plugin=protoc-gen-go=${binDir}/protoc-gen-go.exe \
  --plugin=protoc-gen-xmqant=${binDir}/protoc-gen-xmqant.exe \
  --go_out=./ \
  --xmqant_out=./ \
  ./common/*.proto \
  ./match/*.proto