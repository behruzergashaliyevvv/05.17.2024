import 'package:flutter/material.dart';
import 'window_page.dart'; // Ensure you import the WindowPage

class ConfirmPage extends StatefulWidget {
  final int index;
  final VoidCallback onTap;

  const ConfirmPage({
    super.key,
    required this.index,
    required this.onTap,
  });

  @override
  State<ConfirmPage> createState() => _ConfirmPageState();
}

class _ConfirmPageState extends State<ConfirmPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: 800,
          color: Colors.grey,
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Confirm your phone number",
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Check your message, because we sent you a code\nfor verification",
                      style: TextStyle(
                          color: Color.fromARGB(255, 49, 49, 49), fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  width: 370,
                  height: 430,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 35),
                      Image.asset(
                        "assets/images/chechk.png",
                        scale: 4,
                      ),
                      SizedBox(height: 35),
                      Text(
                        "Your account is active",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Congratulations! You have successfully",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "changed your profile",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 66),
                      Container(
                        width: 355,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => WindowPage(),
                              ),
                            );
                          },
                          child: Text(
                            "OK",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 90),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 18),
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    child: Text(
                      "Log in",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "By continuing, you agree to Loana's",
                  style: TextStyle(color: Colors.black),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Terms of Use",
                        style: TextStyle(color: Colors.black, fontSize: 19),
                      ),
                    ),
                    Text(
                      "&",
                      style: TextStyle(color: Colors.black, fontSize: 17),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
