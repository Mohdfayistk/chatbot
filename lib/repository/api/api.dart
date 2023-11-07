import 'dart:convert';

import 'package:http/http.dart';

import '../modelclass/chatbot.dart';
import 'api_client.dart';

class AnimeApi {
  ApiClient apiClient = ApiClient();

  Future<Boat> getAnime(String text) async {
    String trendingpath = 'https://ai-chatbot.p.rapidapi.com/chat/free?message=$text&uid=user1';
    var body = {
    };
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', body);

    return Boat.fromJson(jsonDecode(response.body));
  }
}
