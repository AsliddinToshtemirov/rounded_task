// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class HomeWorkCard extends StatelessWidget {
  const HomeWorkCard({
    Key? key,
  }) : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      decoration: const BoxDecoration(
        image: DecorationImage(
          alignment: Alignment.topRight,
          image: AssetImage(
            "assets/Vector.png",
          ),
        ),
        color: Color(0xff4D4797),
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              children: const [
                Text(
                  "Homework",
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Bu joyda barcha ishtirokchilar\n darajalari bilan tanishing",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                ),
                Image.asset(
                  "assets/trophy.png",
                  width: 100,
                  height: 100,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 8,
                  width: 110,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                ),
                const Text(
                  "  0%",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
