import 'package:grpc/grpc.dart';
import 'package:test_flutter_server/interview_service.dart';

Future<void> main(List<String> args) async {
  final server = Server(
    [InterviewService()],
    const <Interceptor>[],
    CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
  );

  await server.serve(port: 5000);
  print('Server listening on port ${server.port}....');
}
