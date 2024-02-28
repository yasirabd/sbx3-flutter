import 'package:ajheryuk/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          children: [
            Container(
              height: 150,
              child: Image.asset(
                "assets/logo/logo-only.png",
                fit: BoxFit.contain,
              ),
            ),
            TextField(
              cursorColor: Colors.black87,
              decoration: InputDecoration(
                label: const Text(
                  "Email",
                  style: TextStyle(color: Colors.black87),
                ),
                fillColor: Colors.grey[225],
                border: InputBorder.none,
                filled: true,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              cursorColor: Colors.black87,
              obscureText: true,
              decoration: InputDecoration(
                label: const Text(
                  "Password",
                  style: TextStyle(color: Colors.black87),
                ),
                fillColor: Colors.grey[225],
                border: InputBorder.none,
                filled: true,
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.remove_red_eye_outlined,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: Get.width,
              child: ElevatedButton(
                onPressed: () => Get.offAllNamed(Routes.HOME),
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
                child: const Text("Log in"),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            TextButton(
              onPressed: () {},
              child: const Text("Forgot Password?"),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(right: 15),
                    height: 1,
                    color: const Color(0xFFC7C9D9),
                  ),
                ),
                const Text(
                  "or",
                  style: TextStyle(
                    color: Color(0xFF8C8C8C),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 15),
                    height: 1,
                    color: const Color(0xFFC7C9D9),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: Get.width,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xFF0082CD),
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                  ),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/icons/fb.png"),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text("Log in with Facebook"),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: Get.width,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: const Color(0xFFF6F7FA),
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                  ),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/icons/google.png"),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text("Log in with Google"),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account?",
                  style: TextStyle(color: Colors.black54),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text("Sign up"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
