_gendart:
	@mkdir -p flutter_app/lib/pb
	@protoc -I=./protos --dart_out=grpc:./flutter_app/lib/pb --plugin=protoc-gen-dart=$(HOME)/.pub-cache/bin/protoc-gen-dart ./protos/*.proto
	@protoc -I=./protos --dart_out=grpc:./flutter_app/lib/pb --plugin=protoc-gen-dart=$(HOME)/.pub-cache/bin/protoc-gen-dart ./protos/google/protobuf/*.proto

_gengo:
	@mkdir -p grpc_server/pb
	@protoc -I=./protos --go_out=plugins=grpc:./grpc_server/pb ./protos/*.proto

gen: _gengo _gendart