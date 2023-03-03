import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start DFG Group Group Code

class DFGGroupGroup {
  static String baseUrl = 'https://www.dfg.com.br/item';
  static Map<String, String> headers = {};
  static DetailsCall detailsCall = DetailsCall();
}

class DetailsCall {
  Future<ApiCallResponse> call({
    int? itemID,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Details',
      apiUrl: '${DFGGroupGroup.baseUrl}/ItemDetailsAPI?',
      callType: ApiCallType.GET,
      headers: {
        ...DFGGroupGroup.headers,
      },
      params: {
        'itemID': itemID,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic itemID(dynamic response) => getJsonField(
        response,
        r'''$.itemID''',
      );
  dynamic statusID(dynamic response) => getJsonField(
        response,
        r'''$.statusID''',
      );
  dynamic statusTranslated(dynamic response) => getJsonField(
        response,
        r'''$.statusTranslated''',
      );
  dynamic categoryID(dynamic response) => getJsonField(
        response,
        r'''$.categoryID''',
      );
  dynamic title(dynamic response) => getJsonField(
        response,
        r'''$.title''',
      );
  dynamic subtitle(dynamic response) => getJsonField(
        response,
        r'''$.subtitle''',
      );
  dynamic description(dynamic response) => getJsonField(
        response,
        r'''$.description''',
      );
  dynamic dfgPoints(dynamic response) => getJsonField(
        response,
        r'''$.dfgPoints''',
      );
  dynamic itemImages(dynamic response) => getJsonField(
        response,
        r'''$.itemImages''',
      );
  dynamic itemImagesindex(dynamic response) => getJsonField(
        response,
        r'''$.itemImages[:][:].index''',
      );
  dynamic itemImagesthumbFilename(dynamic response) => getJsonField(
        response,
        r'''$.itemImages[:][:].thumbFilename''',
      );
  dynamic itemImagesfilename(dynamic response) => getJsonField(
        response,
        r'''$.itemImages[:][:].filename''',
      );
  dynamic itemImagesthumbNailLink(dynamic response) => getJsonField(
        response,
        r'''$.itemImages[:][:].thumbNailLink''',
      );
  dynamic itemImagesimageLink(dynamic response) => getJsonField(
        response,
        r'''$.itemImages[:][:].imageLink''',
      );
  dynamic itemImagesuploadDate(dynamic response) => getJsonField(
        response,
        r'''$.itemImages[:][:].uploadDate''',
      );
  dynamic salesQuantity(dynamic response) => getJsonField(
        response,
        r'''$.salesQuantity''',
      );
  dynamic thumbFilename(dynamic response) => getJsonField(
        response,
        r'''$.thumbFilename''',
      );
  dynamic price(dynamic response) => getJsonField(
        response,
        r'''$.price''',
      );
  dynamic currencyCode(dynamic response) => getJsonField(
        response,
        r'''$.currencyCode''',
      );
  dynamic creationDate(dynamic response) => getJsonField(
        response,
        r'''$.creationDate''',
      );
  dynamic quantitySold(dynamic response) => getJsonField(
        response,
        r'''$.quantitySold''',
      );
  dynamic formattedUsername(dynamic response) => getJsonField(
        response,
        r'''$.formattedUsername''',
      );
  dynamic itemTier(dynamic response) => getJsonField(
        response,
        r'''$.itemTier''',
      );
}

/// End DFG Group Group Code

class DfgCall {
  static Future<ApiCallResponse> call({
    List<int>? itemIDList,
  }) {
    final itemID = _serializeList(itemIDList);

    return ApiManager.instance.makeApiCall(
      callName: 'DFG ',
      apiUrl:
          'https://www.dfg.com.br/search/itemlistapi?type=MostRecent&Skip=0&Count=10',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'itemID': itemID,
      },
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
  static dynamic itemID(dynamic response) => getJsonField(
        response,
        r'''$[:].itemID''',
        true,
      );
}

class DFGPromoCall {
  static Future<ApiCallResponse> call({
    List<int>? itemIDList,
  }) {
    final itemID = _serializeList(itemIDList);

    return ApiManager.instance.makeApiCall(
      callName: 'DFG Promo',
      apiUrl:
          'https://www.dfg.com.br/search/itemlistapi?type=Promotional&Skip=0&Count=10',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'itemID': "https://www.dfg.com.br/item/ItemDetailsAPI?ItemID=\$query",
      },
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
  static dynamic itemID(dynamic response) => getJsonField(
        response,
        r'''$[:].itemID''',
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
  static dynamic itemlink(dynamic response) => getJsonField(
        response,
        r'''$[:].itemLink''',
        true,
      );
  static dynamic user(dynamic response) => getJsonField(
        response,
        r'''$[:].buyerUsername''',
        true,
      );
}

class DFGDetailsCall {
  static Future<ApiCallResponse> call({
    List<int>? itemIDList,
  }) {
    final itemID = _serializeList(itemIDList);

    return ApiManager.instance.makeApiCall(
      callName: 'DFG details',
      apiUrl: 'https://www.dfg.com.br/item/ItemDetailsAPI?itemID',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'itemID': itemID,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic itemID(dynamic response) => getJsonField(
        response,
        r'''$[:].itemID''',
      );
  static dynamic statusID(dynamic response) => getJsonField(
        response,
        r'''$[:].statusID''',
        true,
      );
  static dynamic statusTranslated(dynamic response) => getJsonField(
        response,
        r'''$[:].statusTranslated''',
        true,
      );
  static dynamic title(dynamic response) => getJsonField(
        response,
        r'''$[:].title''',
        true,
      );
  static dynamic subtitle(dynamic response) => getJsonField(
        response,
        r'''$[:].subtitle''',
        true,
      );
  static dynamic categoryID(dynamic response) => getJsonField(
        response,
        r'''$[:].categoryID''',
        true,
      );
  static dynamic itemLink(dynamic response) => getJsonField(
        response,
        r'''$[:].itemLink''',
        true,
      );
  static dynamic salesQuantity(dynamic response) => getJsonField(
        response,
        r'''$[:].salesQuantity''',
        true,
      );
  static dynamic startDate(dynamic response) => getJsonField(
        response,
        r'''$[:].startDate''',
        true,
      );
  static dynamic thumbFilename(dynamic response) => getJsonField(
        response,
        r'''$[:].thumbFilename''',
        true,
      );
  static dynamic thumbnailLink(dynamic response) => getJsonField(
        response,
        r'''$[:].thumbnailLink''',
        true,
      );
  static dynamic currencySymbol(dynamic response) => getJsonField(
        response,
        r'''$[:].currencySymbol''',
        true,
      );
  static dynamic price(dynamic response) => getJsonField(
        response,
        r'''$[:].price''',
        true,
      );
  static dynamic currencyCode(dynamic response) => getJsonField(
        response,
        r'''$[:].currencyCode''',
        true,
      );
  static dynamic convertedPrice(dynamic response) => getJsonField(
        response,
        r'''$[:].convertedPrice''',
        true,
      );
  static dynamic formattedUsername(dynamic response) => getJsonField(
        response,
        r'''$[:].formattedUsername''',
        true,
      );
  static dynamic convertedRegularPrice(dynamic response) => getJsonField(
        response,
        r'''$[:].convertedRegularPrice''',
        true,
      );
  static dynamic regularPrice(dynamic response) => getJsonField(
        response,
        r'''$[:].regularPrice''',
        true,
      );
  static dynamic creationDate(dynamic response) => getJsonField(
        response,
        r'''$[:].creationDate''',
        true,
      );
  static dynamic quantitySold(dynamic response) => getJsonField(
        response,
        r'''$[:].quantitySold''',
        true,
      );
  static dynamic itemTier(dynamic response) => getJsonField(
        response,
        r'''$[:].itemTier''',
        true,
      );
  static dynamic relevanceIndex(dynamic response) => getJsonField(
        response,
        r'''$[:].relevanceIndex''',
        true,
      );
  static dynamic totalFeedback(dynamic response) => getJsonField(
        response,
        r'''$[:].totalFeedback''',
        true,
      );
  static dynamic tudo(dynamic response) => getJsonField(
        response,
        r'''$''',
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
