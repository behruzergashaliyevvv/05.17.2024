import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// import 'package:uyishi/pages/login_page.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key, required Null Function() onTap, required int index});

  @override
  State<LoginPage> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final editTextController = TextEditingController();
  String errorMessage = "";

  get onTap => null;
  // @override
  // void initState() {
  //   super.initState();
  //   print("Init ishladi: ${widget.index}");
  // }

  // @override
  // void didUpdateWidget(covariant LoginPage oldWidget) {
  //   super.didUpdateWidget(oldWidget);

  //   if (oldWidget.index == widget.index) {
  //     print("Widgetlar bir xil");
  //   } else {
  //     print("Widgetlar har xil");
  //   }
  // }

  @override
  void dispose() {
    // print("Dispose ishladi: ${widget.index}");
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 95),
            Container(
              margin: const EdgeInsets.only(right: 280),
              child: const Text(
                "Register",
                style: TextStyle(color: Colors.black, fontSize: 23),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 53),
              child: const Text(
                "Create your account for your schedule",
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
            ),
            SizedBox(height: 10),
            Text(
              errorMessage,
              style: const TextStyle(color: Colors.red),
            ),
            TextField(
              controller: editTextController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                // hintText: "Email Address",
                prefixIcon: const Icon(Icons.person),
                // contentPadding: EdgeInsets.only(left: 20),
                // suffixIcon: Icon(Icons.email),
                // fillColor: Colors.amber,
                // filled: true,
                label: const Text(
                  "Your Name",
                ),
                errorText: errorMessage.isEmpty ? null : errorMessage,
              ),
            ),
            Text(
              errorMessage,
              style: const TextStyle(color: Colors.red),
            ),
            TextField(
              controller: emailController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                // hintText: "Email Address",
                prefixIcon: const Icon(Icons.email),
                // contentPadding: EdgeInsets.only(left: 20),
                // suffixIcon: Icon(Icons.email),
                // fillColor: Colors.amber,
                // filled: true,
                label: const Text(
                  "Email Manzil",
                ),
                errorText: errorMessage.isEmpty ? null : errorMessage,
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                // hintText: "Email Address",
                prefixIcon: const Icon(Icons.password),
                // contentPadding: EdgeInsets.only(left: 20),
                suffixIcon: Icon(Icons.looks_sharp),
                // fillColor: Colors.amber,
                // filled: true,
                label: const Text(
                  "Parol",
                ),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                // hintText: "Email Address",
                prefixIcon: const Icon(Icons.password),
                // contentPadding: EdgeInsets.only(left: 20),
                suffixIcon: Icon(Icons.looks_sharp),
                // fillColor: Colors.amber,
                // filled: true,
                label: const Text(
                  "Parolni qaytaring",
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Text(
                  "Parolni unutdingizmi?",
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Don't have an account?",
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        )),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Sign up here",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 19,
                          ),
                        )),
                  ],
                )
              ],
            ),
            const SizedBox(height: 60),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  String email = emailController.text.trim();
                  String password = passwordController.text.trim();

                  if (email.isEmpty || password.isEmpty) {
                    errorMessage =
                        "Iltimos barcha kerakli bo'limlarni to'ldiring";
                    setState(() {});
                  } else if (!email.contains("@")) {
                    errorMessage = "Iltimos to'g'ri email kiriting";
                    setState(() {});
                  } else {
                    //

                    Navigator.of(context)
                        .pushReplacement(MaterialPageRoute(builder: (ctx) {
                      return LoginPage(
                        onTap: () {},
                        index: 0,
                      );
                    }));
                  }
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: const Text(
                  "Log in",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 150,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 230, 230, 230),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextButton(
                    onPressed: onTap,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.apple_outlined,
                          color: Colors.black,
                          size: 35,
                        ),
                        Text(
                          "Apple",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 150,
                  height: 60,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 230, 230, 230),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextButton(
                    onPressed: onTap,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.laptop_chromebook_outlined,
                          color: Colors.amber,
                          size: 35,
                        ),
                        Text(
                          "Google",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 214, 87, 2),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "By Continuing, you agree to Loana's",
              style: TextStyle(color: Colors.grey),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Terms of Use",
                      style: TextStyle(color: Colors.black, fontSize: 19),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "&",
                      style: TextStyle(color: Colors.grey, fontSize: 17),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Privacy Policy",
                      style: TextStyle(color: Colors.black, fontSize: 19),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
