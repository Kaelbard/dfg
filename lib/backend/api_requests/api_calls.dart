import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class DfgCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'DFG ',
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

  static dynamic imagem(dynamic response) => getJsonField(
        response,
        r'''$[:].thumbnailLink''',
        true,
      );
  static dynamic price(dynamic response) => getJsonField(
        response,
        r'''$[:].price''',
        true,
      );
  static dynamic title(dynamic response) => getJsonField(
        response,
        r'''$[:].title''',
        true,
      );
}

class DFGPromoCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'DFG Promo',
      apiUrl:
          'https://www.dfg.com.br/search/itemlistapi?type=Promotional&Skip=0&Count=10',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic title(dynamic response) => getJsonField(
        response,
        r'''$[:].title''',
        true,
      );
  static dynamic imagem(dynamic response) => getJsonField(
        response,
        r'''$[:].thumbnailLink''',
        true,
      );
  static dynamic price(dynamic response) => getJsonField(
        response,
        r'''$[:].price''',
        true,
      );
}

class DFGBestSellersCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'DFG BestSellers',
      apiUrl:
          'https://www.dfg.com.br/search/itemlistapi?type=OurBestSellers&Skip=0&Count=10',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class DFGMostPopularCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'DFG MostPopular',
      apiUrl:
          'https://www.dfg.com.br/search/itemlistapi?type=MostPopular&Skip=0&Count=10',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic title(dynamic response) => getJsonField(
        response,
        r'''$[:].title''',
        true,
      );
  static dynamic imagem(dynamic response) => getJsonField(
        response,
        r'''$[:].thumbnailLink''',
        true,
      );
  static dynamic price(dynamic response) => getJsonField(
        response,
        r'''$[:].price''',
        true,
      );
}

class DFGMostSoldCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'DFG MostSold',
      apiUrl:
          'https://www.dfg.com.br/search/itemlistapi?type=MostSold&Skip=0&Count=10',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic title(dynamic response) => getJsonField(
        response,
        r'''$[:].title''',
        true,
      );
  static dynamic imagem(dynamic response) => getJsonField(
        response,
        r'''$[:].thumbnailLink''',
        true,
      );
  static dynamic price(dynamic response) => getJsonField(
        response,
        r'''$[:].price''',
        true,
      );
}

class DFGHighlightcardsCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'DFG Highlightcards',
      apiUrl: 'https://www.dfg.com.br/home/highlightcardsAPI?count=3',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic imagem(dynamic response) => getJsonField(
        response,
        r'''$[:].path''',
        true,
      );
}

class DFGFeedbacksCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'DFG feedbacks',
      apiUrl: 'https://www.dfg.com.br/home/feedbacksAPI',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic comment(dynamic response) => getJsonField(
        response,
        r'''$[:].feedbackComment''',
        true,
      );
  static dynamic date(dynamic response) => getJsonField(
        response,
        r'''$[:].feedbackDate''',
        true,
      );
  static dynamic title(dynamic response) => getJsonField(
        response,
        r'''$[:].itemTitle''',
        true,
      );
  static dynamic authorname(dynamic response) => getJsonField(
        response,
        r'''$[:].fbAuthorFormattedName''',
        true,
      );
  static dynamic itemlink(dynamic response) => getJsonField(
        response,
        r'''$[:].itemLink''',
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
