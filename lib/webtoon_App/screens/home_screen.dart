import 'package:Flutter_Study/webtoon_App/models/webtoon_model.dart';
import 'package:Flutter_Study/webtoon_App/service/api_Service.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final Future<List<WebtoonModel>> webtoons = ApiService.getTodaysToon();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2, //음영
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Today's 툰s",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
      body: FutureBuilder(
        // FutureBuilder : 비동기 데이터를 이용해 화면을 구성하는 위젯
        future: webtoons,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            // future을 기다리고, snapshot.hasData가 존재하는지 알려준다
            return Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Expanded(
                  child: makeList(snapshot),
                ),
              ],
            );
          }
          return const Center(
            child: CircularProgressIndicator(), //로딩 표시
          );
        },
      ),
    );
  }

  ListView makeList(AsyncSnapshot<List<WebtoonModel>> snapshot) {
    return ListView.separated(
      // 사용자가 보고 있는 아이템만 build
      scrollDirection: Axis.horizontal,
      itemCount: snapshot.data!.length,
      itemBuilder: (context, index) {
        var webtoon = snapshot.data![index];
        return Column(
          children: [
            SizedBox(
              width: 230,
              child: Image.network(
                webtoon.thumb,
                headers: const {
                  "User-Agent":
                      "Mozilla/5.0 (Macintosh; Intel windows) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36",
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              webtoon.title,
              style: const TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
            ),
          ],
        );
      },
      separatorBuilder: (context, index) => const SizedBox(
        width: 20,
      ),
    );
  }
}
