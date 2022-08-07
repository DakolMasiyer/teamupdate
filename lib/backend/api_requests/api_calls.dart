import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class CreateEnairaAccountCall {
  static Future<ApiCallResponse> call({
    String? nin = '',
    String? bvn = '',
    String? passwoord = '',
  }) {
    final body = '''
{
  "channel_code": "APISNG",
  "customer_tier": "2",
  "reference": "NXG34567898FGHJJB1",
  "account_no": "0689658501",
  "bvn": "22152793496",
  "password": "Password10\$\$",
  "nin": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create Enaira Account',
      apiUrl: 'https://rgw.k8s.apis.ng/centric-platforms/uat/CreateConsumer',
      callType: ApiCallType.POST,
      headers: {
        'ClientId': '89335a9f28f64a01a7c39bdf74ec6864',
      },
      params: {
        'NIN': nin,
        'BVN': bvn,
        'Passwoord': passwoord,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class CreateEnairaAccountCopyCall {
  static Future<ApiCallResponse> call({
    String? nin = '',
    String? bvn = '',
    String? passwoord = '',
  }) {
    final body = '''
{
  "channel_code": "APISNG",
  "customer_tier": "2",
  "reference": "NXG34567898FGHJJB1",
  "account_no": "0689658501",
  "bvn": "22152793496",
  "password": "Password10\$\$",
  "nin": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create Enaira Account Copy',
      apiUrl: 'https://rgw.k8s.apis.ng/centric-platforms/uat/CreateConsumer',
      callType: ApiCallType.POST,
      headers: {
        'ClientId': '89335a9f28f64a01a7c39bdf74ec6864',
      },
      params: {
        'NIN': nin,
        'BVN': bvn,
        'Passwoord': passwoord,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}
