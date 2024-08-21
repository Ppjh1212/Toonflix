import 'package:Flutter_Study/webtoon_App/models/webtoon_episode_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Episode extends StatelessWidget {
  const Episode({
    super.key,
    required this.episode,
  });

  final WebtoonEpisodeModel episode;

  onButtonTap() async {
    await launchUrlString("https://google.com");
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onButtonTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 7),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          border: Border.all(color: Colors.green, width: 2),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 8,
                child: Text(
                  episode.title,
                  style: const TextStyle(
                    color: Colors.green,
                    fontSize: 18,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              const Flexible(
                flex: 1,
                child: Icon(
                  Icons.chevron_right_rounded,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
