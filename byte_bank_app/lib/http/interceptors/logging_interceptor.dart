import 'package:http_interceptor/http_interceptor.dart';

class LoggingInterceptor implements InterceptorContract {
  @override
  Future<RequestData> interceptRequest({RequestData data}) async {
    print('Request');
    print('Url : ${data.url}');
    print('Headers : ${data.headers}');
    print('body : ${data.body}');

    return data;
  }

  @override
  Future<ResponseData> interceptResponse({ResponseData data}) async {
    print('Response');
    print('Status Code : ${data.statusCode}');
    print('Headers : ${data.headers}');
    print('body : ${data.body}');

    return data;
  }

}