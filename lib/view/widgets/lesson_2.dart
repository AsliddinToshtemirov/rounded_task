import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:rounded_task/view/widgets/button.dart';
import 'package:rounded_task/view/widgets/homework.dart';
import 'package:rounded_task/view/widgets/ielts_items.dart';
import 'package:rounded_task/view/widgets/video_item.dart';

class LessonTwo extends StatelessWidget {
  const LessonTwo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 1007,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        "assets/task.jpeg",
                        height: 96.0,
                        width: 96.0,
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Lesson 2",
                      style: TextStyle(color: Colors.black.withOpacity(0.4)),
                    ),
                    const Text(
                      "How to talk about nation \n Asilbek Asqarov Asilbek",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Button(
                  color: 0xff00AFFF,
                  icon: Icons.bookmark_border,
                  text: "Saqlab qo'yish",
                ),
                Button(
                    color: 0xff00AFFF,
                    icon: CupertinoIcons.cloud_download,
                    text: "Yuklab olish")
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 2,
            ),
            const SizedBox(
              height: 10,
            ),
            const VideoItem(),
            const SizedBox(
              height: 24,
            ),
            SizedBox(
              height: 600,
              child: GridView.custom(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverQuiltedGridDelegate(
                  crossAxisCount: 4,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  pattern: [
                    const QuiltedGridTile(2, 2),
                    const QuiltedGridTile(2, 2),
                    const QuiltedGridTile(2, 2),
                    const QuiltedGridTile(2, 2),
                    const QuiltedGridTile(2, 4)
                  ],
                ),
                childrenDelegate: SliverChildBuilderDelegate(
                  childCount: 5,
                  (context, index) => index == 4
                      ? const HomeWorkCard()
                      : IeltsItems(
                          index: index,
                        ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
