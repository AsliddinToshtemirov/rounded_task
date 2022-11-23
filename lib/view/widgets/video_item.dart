import 'package:flutter/material.dart';
import 'package:rounded_task/view/pages/video_play_page.dart';

class VideoItem extends StatelessWidget {
  const VideoItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const VideoApp()));
      },
      child: Stack(
        children: [
          Container(
            height: 160,
            width: 400,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                  colors: [Colors.white, Colors.black.withOpacity(0.9)],
                  stops: const [0.0, 2]),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              image: const DecorationImage(
                  image: AssetImage(
                    "assets/image2.jpeg",
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
              alignment: Alignment.bottomLeft,
              height: 160,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white.withOpacity(0.1),
                    Colors.black.withOpacity(0.3)
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "How to speak like a native",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    Icon(
                      Icons.play_circle_outline_outlined,
                      color: Colors.white,
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
