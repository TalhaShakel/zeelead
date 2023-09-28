import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class SearchLeadsCall {
  static Future<ApiCallResponse> call({
    String? occupation = '',
    String? location = '',
  }) {
    final ffApiRequestBody = '''
{
  "Occupation": "${occupation}",
  "Location": "${location}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'searchLeads',
      apiUrl: 'https://n8n4.zoesquad.works/webhook-test/searchleads',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetOccupationGoogleCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Occupation  Google',
      apiUrl: 'https://maps.googleapis.com/maps/api/place/textsearch/json',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'query': "nurses in Florida",
        'key': "AIzaSyDd38mNo7HypUhNF8c8BYtoy3hUunINEWU",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class UserSignupSupabaseCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) {
    final ffApiRequestBody = '''
{
  "email": "${email}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'UserSignupSupabase',
      apiUrl: 'https://oyvaxbgsxqmkociwxfyr.supabase.co/auth/v1/signup',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im95dmF4YmdzeHFta29jaXd4ZnlyIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTAyMTAxNTgsImV4cCI6MjAwNTc4NjE1OH0.A9GAw3Er_AtK46Bv1X1mwa3H2W9Q8Y50KocYwLwZTAo',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class UserSinginSupabaseCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) {
    final ffApiRequestBody = '''
{
  "email": "${email}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'UserSinginSupabase',
      apiUrl:
          'https://oyvaxbgsxqmkociwxfyr.supabase.co/auth/v1/token?grant_type=password',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im95dmF4YmdzeHFta29jaXd4ZnlyIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTAyMTAxNTgsImV4cCI6MjAwNTc4NjE1OH0.A9GAw3Er_AtK46Bv1X1mwa3H2W9Q8Y50KocYwLwZTAo',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetUserDataCall {
  static Future<ApiCallResponse> call({
    String? accessToken = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GetUserData',
      apiUrl: 'https://oyvaxbgsxqmkociwxfyr.supabase.co/auth/v1/user',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im95dmF4YmdzeHFta29jaXd4ZnlyIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTAyMTAxNTgsImV4cCI6MjAwNTc4NjE1OH0.A9GAw3Er_AtK46Bv1X1mwa3H2W9Q8Y50KocYwLwZTAo',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class UserLogoutCall {
  static Future<ApiCallResponse> call({
    String? authorization = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'UserLogout',
      apiUrl: 'https://oyvaxbgsxqmkociwxfyr.supabase.co/auth/v1/logout',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im95dmF4YmdzeHFta29jaXd4ZnlyIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTAyMTAxNTgsImV4cCI6MjAwNTc4NjE1OH0.A9GAw3Er_AtK46Bv1X1mwa3H2W9Q8Y50KocYwLwZTAo',
        'Authorization': 'Bearer ${authorization}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class EmailVerifierCall {
  static Future<ApiCallResponse> call({
    String? email = '',
  }) {
    final ffApiRequestBody = '''
{
  "email": "${email}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'emailVerifier',
      apiUrl: 'https://n8n4.zoesquad.works/webhook/emailverifier',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.Name''',
        true,
      );
  static dynamic companyName(dynamic response) => getJsonField(
        response,
        r'''$.Company''',
        true,
      );
  static dynamic phone(dynamic response) => getJsonField(
        response,
        r'''$.Phone''',
        true,
      );
  static dynamic industries(dynamic response) => getJsonField(
        response,
        r'''$.Industries''',
        true,
      );
  static dynamic score(dynamic response) => getJsonField(
        response,
        r'''$.Score''',
        true,
      );
  static dynamic source(dynamic response) => getJsonField(
        response,
        r'''$.Source''',
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

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
