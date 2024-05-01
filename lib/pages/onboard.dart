import 'package:flutter/material.dart';
import 'package:yourschef/pages/sign_up.dart';
import 'package:yourschef/widgets/Widgets_support.dart';
import 'package:yourschef/widgets/content_model.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({super.key});

  @override
  State<OnBoard> createState() => _OnboardState();
}

class _OnboardState extends State<OnBoard> {
  List<OnboardingContent> contents = OnboardingContent.contents;
  int currentIndex = 0;
  late PageController _controller;
  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
                child: PageView.builder(
                    controller: _controller,
                    itemCount: contents.length,
                    onPageChanged: (int index) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    itemBuilder: (_, i) {
                      return Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Image.asset(
                              contents[i].image,
                              height: 410,
                              width: MediaQuery.of(context).size.width / 1.5,
                              fit: BoxFit.fill,
                            ),
                            const SizedBox(
                              height: 40.0,
                            ),
                            Text(
                              contents[i].title,
                              style: AppWidget.semiboldTextFeildStyle(),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              contents[i].description,
                              style: AppWidget.semiboldTextFeildStyle(),
                            )
                          ],
                        ),
                      );
                    })),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                contents.length,
                (index) => buildDot(index, context),
              ),
            ),
            GestureDetector(
              onTap: () {
                if (currentIndex == contents.length - 1) {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const SignUp()));
                }
                _controller.nextPage(
                    duration: const Duration(microseconds: 100),
                    curve: Curves.bounceIn);
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(20)),
                height: 60,
                margin: const EdgeInsets.all(40),
                width: double.infinity,
                child: const Center(
                  child: Text(
                    "Next",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10.0,
      width: currentIndex == index ? 18 : 7,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(6)),
    );
  }
}
