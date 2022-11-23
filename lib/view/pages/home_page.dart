// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rounded_task/view/widgets/lesson_2.dart';
import 'package:rounded_task/view_model/random_image_provider.dart';

class HomeView extends ConsumerStatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  HomeViewState createState() => HomeViewState();
}

class HomeViewState extends ConsumerState<HomeView> {
  @override
  void initState() {
    super.initState();
    _checkWifi();
  }

  @override
  void setState(VoidCallback fn) {
    ref.read(getImage);
    super.setState(fn);
  }

  bool _tryAgain = false;

  _checkWifi() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    bool connectedToWifi = (connectivityResult == ConnectivityResult.wifi);
    if (connectedToWifi) {
      showAlert(context);
    }
    if (_tryAgain != !connectedToWifi) {
      setState(() => _tryAgain = !connectedToWifi);
    }
  }

  Future showAlert(BuildContext context) async {
    final getQuote = ref.watch(getImage);
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text("har safar yangi rasm siz uchun "),
              content: SizedBox(
                height: 346,
                width: 346,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    getQuote.when(
                        data: (data) => Image.network(data.urls.regular),
                        error: (error, stackTrace) => Text(error.toString()),
                        loading: () => const CircularProgressIndicator()),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: Color.fromARGB(255, 67, 174, 97)),
                      child: const Padding(
                          padding: EdgeInsets.all(6),
                          child: Icon(Icons.arrow_forward)),
                    ),
                  ],
                ),
              ),
            ));
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    final getquote = ref.watch(getImage);
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Rounded Task",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 24),
          child: Column(
            children: [
              const LessonTwo(),
              getquote.when(
                  data: (data) => Image.network(data.urls.regular),
                  error: (error, stackTrace) => Text(error.toString()),
                  loading: () => const CircularProgressIndicator()),
            ],
          ),
        ),
      ),
    );
  }
}
