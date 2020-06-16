import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:async';

class GenericApi {

  String dominio;
  String pathUrl;
  Map<String, String> queryParameters;
  Map<String, String> jsonHeaders;
  bool https;

  GenericApi.https({String this.dominio, String this.pathUrl, Map<String,
      String> this.queryParameters, Map<String, String> this.jsonHeaders}){
    this.https = true;
  }

  GenericApi.http(
      {String this.dominio, String this.pathUrl, Map<String,
          String> this.queryParameters, Map<String, String> this.jsonHeaders}){
    this.https = false;
  }

  Future<dynamic> fetchData(Function fromJson) async {
    var uri;
    if (https) {
      uri = Uri.https(dominio, pathUrl, queryParameters);
    }
    else {
      uri = Uri.http(dominio, pathUrl, queryParameters);
    }
    var response = await http.get(uri, headers: jsonHeaders);

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON

      return fromJson(json.decode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed get Api');
    }
  }

}