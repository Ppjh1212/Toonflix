import 'package:flutter/material.dart';

class Webtoon extends StatelessWidget {
  final String title, thumb, id;

  const Webtoon({
    super.key,
    required this.title,
    required this.thumb,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // GestureDetector은 대부분의 동작을 감지함
      onTap: () {
        //Navigator.push(context, route)
      },
      child: Column(
        children: [
          Container(
            width: 230,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10, //그림자가 얼마나 멀리까지 드리울지
                      offset: const Offset(7, 5), //그림자의 위치
                      color: Colors.black.withOpacity(0.5) // 불투명도
                      )
                ]),
            child: Image.network(
              thumb,
              headers: const {
                'Referer': 'https://comic.naver.com',
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
