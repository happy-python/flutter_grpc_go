import 'package:flutter_app/pb/google/protobuf/empty.pb.dart';
import 'package:flutter_app/pb/hello.pb.dart';
import 'package:flutter_app/common/grpc_commons.dart';
import 'package:flutter_app/pb/hello.pbgrpc.dart';

class HelloService {
  static Future<HelloResponse> sayHello() async {
    var client = HelloServiceClient(GrpcClientSingleton().client);
    return client.sayHello(Empty());
  }
}
