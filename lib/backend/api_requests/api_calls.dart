import 'api_manager.dart';

Future<dynamic> testCall() => ApiManager.instance.makeApiCall(
      callName: 'Test',
      apiDomain: 'shrty-odavhad.herokuapp.com',
      apiEndpoint: 'json',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnResponse: true,
    );
