import 'package:grpc/grpc.dart';

class GrpcClientSingleton {
  ClientChannel client;
  static final GrpcClientSingleton _singleton = GrpcClientSingleton._internal();

  // 工厂构造方法
  factory GrpcClientSingleton() => _singleton;

  // 私有命名构造方法
  GrpcClientSingleton._internal() {
    // host: Your IP here, localhost might not work.
    client = ClientChannel("192.168.31.166",
        port: 3000,
        options: ChannelOptions(
          // TODO: change to secure with server certificates
          credentials: ChannelCredentials.insecure(),
          idleTimeout: Duration(minutes: 1),
        ));
  }
}
