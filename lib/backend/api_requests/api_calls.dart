import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class DfgCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'DFG',
      apiUrl:
          'https://www.dfg.com.br/search/itemlistapi?type=MostRecent&Skip=0&Count=10',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic titulo(dynamic response) => getJsonField(
        response,
        r'''$[:].title''',
        true,
      );
  static dynamic price(dynamic response) => getJsonField(
        response,
        r'''$[:].price''',
        true,
      );
  static dynamic imagemFilename(dynamic response) => getJsonField(
        response,
        r'''$[:].thumbFilename''',
        true,
      );
  static dynamic imagem(dynamic response) => getJsonField(
        response,
        r'''$[:].thumbnailLink''',
        true,
      );
  static dynamic currency(dynamic response) => getJsonField(
        response,
        r'''$[:].currencySymbol''',
        true,
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
