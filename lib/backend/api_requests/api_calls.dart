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

Future<dynamic> abcCall() => ApiManager.instance.makeApiCall(
      callName: 'abc',
      apiDomain: 'collectionapi.metmuseum.org',
      apiEndpoint: 'public/collection/v1/departments',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnResponse: true,
    );
