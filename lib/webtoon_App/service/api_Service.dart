import 'package:http/http.dart' as http;

class ApiService{
  final String baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev/";
  final String today = "today";

  void getTodaysToon()async{ //  비동기 함수
    final url = Uri.parse('$baseUrl/$today');
    final response = await http.get(url); // API요청이 처리되어 반환할 때까지 기다림. 비동기 프로그래밍
    if(response.statusCode == 200){ // 상태코드가 200 즉, 요청이 성공했을때.
      print(response.body);// 서버가 보낸 데이터
      return;
    }
    throw Error();
  }
} 