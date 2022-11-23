import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:rounded_task/view_model/random_image_provider.dart';

class HomeView2 extends ConsumerStatefulWidget {
  const HomeView2({Key? key}) : super(key: key);

  @override
  HomeViewState createState() => HomeViewState();
}

class HomeViewState extends ConsumerState<HomeView2> {
  @override
  void initState() {
    super.initState();

    getRandomQuote();
  }

  getRandomQuote() {
    Future.delayed(
        const Duration(
          seconds: 1,
        ), () {
      ref.refresh(getImage);
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final getQuote = ref.watch(getImage);
    return SafeArea(
      child: Scaffold(
          body: getQuote.when(
              data: (data) => Image.network(data.urls.regular),
              error: (error, stackTrace) => Text(error.toString()),
              loading: () => const CircularProgressIndicator())),
    );
  }
}

class BackgroundImageFb1 extends StatelessWidget {
  final Widget child;
  final String imageUrl;
  const BackgroundImageFb1(
      {required this.child, required this.imageUrl, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // Place as the child widget of a scaffold
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
