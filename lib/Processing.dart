// ignore_for_file: unused_import

import 'package:flutter/material.dart';

import 'package:get/get.dart';
// ignore: unnecessary_import
import 'package:get/get_core/src/get_main.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'dart:async';

import 'package:my_cinenow/Home_tikets.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  Future<void> _navigateToNextPage() async {
    await Future.delayed(const Duration(seconds: 2));
    if (mounted) {
      Get.off(() => const HomeTikets_page());
    }
  }

  @override
  void initState() {
    super.initState();
    _navigateToNextPage();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SpinKitFadingFour(
              color: Color(0xFFFFE100),
              size: 50,
            ),
            SizedBox(height: 20),
            Text(
              "Almost there ...",
              style: TextStyle(
                color: Colors.black,
                fontFamily: "Vazir-Bold",
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Your payment is pending',
              style: TextStyle(color: Colors.black26, fontFamily: 'Vazir-Bold'),
            ),
          ],
        ),
      ),
    );
  }
}
