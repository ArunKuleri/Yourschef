import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:yourschef/widgets/Widgets_support.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2.5,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                  Color.fromARGB(255, 245, 103, 8),
                  Color.fromARGB(255, 255, 170, 0),
                ])),
          ),
          Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height / 3),
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: const Text(""),
          ),
          Container(
            margin: const EdgeInsets.only(top: 60.0, left: 20.0, right: 20.0),
            child: Column(
              children: [
                const Padding(padding: EdgeInsets.all(8)),
                const Center(
                  child: Text(
                    "YoursChef",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins"),
                  ),
                ),
                const SizedBox(
                  height: 50.0,
                ),
                Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 2,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          "Login ",
                          style: AppWidget.HeadLinetextFieldStyle(),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: "Email", prefixIcon: Icon(Icons.mail)),
                        ),
                        SizedBox(
                          height: 12.0,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                              hintText: "Password",
                              prefixIcon: Icon(Icons.lock)),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
