import 'api_manager.dart';

Future<dynamic> abcCall() {
  return ApiManager.instance.makeApiCall(
    callName: 'abc',
    apiUrl:
        'https://collectionapi.metmuseum.org/public/collection/v1/departments',
    callType: ApiCallType.GET,
    headers: {},
    params: {},
    returnResponse: true,
  );
}

Future<dynamic> testCall() {
  return ApiManager.instance.makeApiCall(
    callName: 'test',
    apiUrl: 'https://shrty-odavhad.herokuapp.com/json',
    callType: ApiCallType.GET,
    headers: {},
    params: {},
    returnResponse: true,
  );
}
