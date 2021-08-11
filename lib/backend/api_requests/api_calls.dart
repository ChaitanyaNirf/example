import 'api_manager.dart';

Future<dynamic> abcCall() => ApiManager.instance.makeApiCall(
      callName: 'abc',
      apiDomain: 'collectionapi.metmuseum.org',
      apiEndpoint: 'public/collection/v1/departments',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnResponse: true,
    );
