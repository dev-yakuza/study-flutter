import 'dart:convert';

import 'package:http/http.dart' as http;

class Networks {
  final Uri uri;

  Networks(this.uri);

  Future<dynamic> getJsonData() async {
    http.Response response = await http.get(this.uri);
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      print(response.statusCode);
    }
  }
}
