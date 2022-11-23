import 'package:flutter/material.dart';
import 'package:rounded_task/common/colors.dart';
import 'package:rounded_task/common/icons.dart';
import 'package:rounded_task/common/text.dart';

class IeltsItems extends StatelessWidget {
  int index;
  IeltsItems({
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {},
      child: Stack(
        children: [
          Container(
            alignment: Alignment.topLeft,
            height: 190,
            width: 180,
            decoration: BoxDecoration(
              image: const DecorationImage(
                alignment: Alignment.topRight,
                image: AssetImage(
                  "assets/Vector.png",
                ),
              ),
              color: Color(colors[index]),
              borderRadius: const BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Icon(
                        icons[index],
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        texts[index],
                        style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                      "0%",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: const Color(0xff000000).withOpacity(0.5),
                borderRadius: const BorderRadius.all(Radius.circular(15))),
            height: double.infinity,
            width: double.infinity,
            child: Center(
              child: Image.asset("assets/crown.png"),
            ),
          )
        ],
      ),
    );
  }
}
