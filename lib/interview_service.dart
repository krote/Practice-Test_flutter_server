import 'package:grpc/grpc.dart';
import 'package:interview_grpc_gen/interview_grpc_gen.dart';

class InterviewService extends InterviewServiceBase {
  @override
  Future<InterviewResponse> addInterviewLog(
      ServiceCall call, InterviewLog log) async {
    return InterviewResponse()..message = "ok";
  }
}
