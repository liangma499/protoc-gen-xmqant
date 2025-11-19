#!/bin/bash
binDir=$(go env GOPATH)
protoc --plugin=protoc-gen-go=${binDir}/bin/protoc-gen-go   --go_out=./  ./proto/examples/*.proto ./proto/examples1/*.proto --experimental_allow_proto3_optional
protoc --plugin=protoc-gen-xmqant=${binDir}/bin/protoc-gen-xmqant  --proto_path=.  --mqant_out=./   ./proto/examples/*.proto ./proto/examples1/*.proto --experimental_allow_proto3_optional