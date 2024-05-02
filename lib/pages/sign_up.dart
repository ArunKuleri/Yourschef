import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:yourschef/pages/bottomnav.dart';
import 'package:yourschef/pages/login_screen.dart';
import 'package:yourschef/widgets/Widgets_support.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String email = "", password = "", name = "";
  TextEditingController namecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  registrtion() async {
    if (password != null) {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);
        ScaffoldMessenger.of(context).showSnackBar((const SnackBar(
            content: Text(
          "Registered SucessFully",
          style: TextStyle(fontSize: 20),
        ))));
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => BottomNav()));
      } on FirebaseException catch (e) {
        if (e.code == "weak password") {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text(
            "Password too weaak ",
            style: TextStyle(fontSize: 20),
          )));
        } else if (e.code == "email already in use") {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              backgroundColor: Colors.orange,
              content: Text(
                "Account already exists",
                style: TextStyle(fontSize: 18),
              )));
        }
      }
    }
  }

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
            child: Form(
              key: _formkey,
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
                      height: MediaQuery.of(context).size.height / 1.5,
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
                            controller: namecontroller,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "please Enter E-mail";
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                                hintText: "Name",
                                prefixIcon: Icon(Icons.person)),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            controller: emailcontroller,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please Enter Password";
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                                hintText: "Email",
                                prefixIcon: Icon(Icons.mail)),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          TextFormField(
                            controller: passwordcontroller,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "please enter the password";
                              }
                              return null;
                            },
                            obscureText: true,
                            decoration: const InputDecoration(
                                hintText: "Password",
                                prefixIcon: Icon(Icons.lock)),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            child: Text(
                              "Forgot Password?",
                              style: AppWidget.semiboldTextFeildStyle(),
                            ),
                          ),
                          const SizedBox(
                            height: 80.0,
                          ),
                          GestureDetector(
                            onTap: () async {
                              if (_formkey.currentState!.validate()) {
                                setState(() {
                                  email = emailcontroller.text;
                                  name = namecontroller.text;
                                  password = passwordcontroller.text;
                                });
                              }
                              registrtion();
                            },
                            child: Material(
                              elevation: 5.0,
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                width: 200,
                                decoration: BoxDecoration(
                                    color: const Color(0xfffff5722),
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Center(
                                  child: Text(
                                    "Sign Up",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.0,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 70.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                    },
                    child: Text(
                      "Already have an account? Login up",
                      style: AppWidget.semiboldTextFeildStyle(),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
