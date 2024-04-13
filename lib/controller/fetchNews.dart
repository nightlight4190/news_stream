// https://newsapi.org/v2/top-headlines/sources?apiKey=affb4a3daf554ce9b41e31889811d2ef
import 'dart:convert';

import 'package:http/http.dart';

class FetchNews {
  static fetchNews() async {
    Response response = await get(Uri.parse(
        "https://newsapi.org/v2/top-headlines/sources?apiKey=affb4a3daf554ce9b41e31889811d2ef"));

    Map body_data = jsonDecode(response.body);
    print(body_data);
  }
}
