import 'dart:convert';

import 'package:Flutter_Study/webtoon_App/models/webtoon_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  List<WebtoonModel> webtoonInstances = [];
  static const String baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev";
  static const String today = "today";

  Future<List<WebtoonModel>> getTodaysToon() async { //비동기 함수이기에 List를 Future에 감싸서 반환
    final url = Uri.parse('$baseUrl/$today');
    final response = await http.get(url); // API요청이 처리되어 반환할 때까지 기다림. 비동기 프로그래밍
    if (response.statusCode == 200) { // 상태코드가 200 즉, 요청이 성공했을때.
      final List<dynamic> webtoons = jsonDecode(response.body);
      for (var webtoon in webtoons) {
        final instance = WebtoonModel.fromJson(webtoon);
        webtoonInstances.add(instance);
      }
      return webtoonInstances;
    } 
    throw Error();
  }
}
// API에 요청을 보낼 ApiService 클래스 생성
// API에 HTTP요청을 보냄
// response가 성공했을 시 웹툰 리스트 반환
