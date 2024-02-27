import 'package:ajheryuk/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: Get.width * 0.5,
              height: Get.height * 0.2,
              child: Image.asset(
                "assets/logo/logo.png",
                fit: BoxFit.fitWidth,
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            const Text(
              "Welcome to Ajheryuk",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              "Best and popular apps for live education course from home",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Color(0xFF8C8C8C)),
            ),
            const SizedBox(
              height: 75,
            ),
            Container(
              width: Get.width,
              child: ElevatedButton(
                onPressed: () => Get.toNamed(Routes.LOGIN),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xFFEC5F5F),
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                  ),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                ),
                child: const Text("Get started"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
