import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _Category();
}

class _Category extends State<Category> {
  bool indian = false, chineese = false, arabic = false, continental = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                indian = true;
                chineese = false;
                arabic = false;
                continental = false;
                setState(() {});
              },
              child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  decoration: BoxDecoration(
                      color: indian ? Colors.black : Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Indian",
                        style: TextStyle(
                            color: indian ? Colors.white : Colors.black,
                            fontFamily: "Poppins")),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: () {
                indian = false;
                chineese = true;
                arabic = false;
                continental = false;
                setState(() {});
              },
              child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  decoration: BoxDecoration(
                      color: chineese ? Colors.black : Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Chineese",
                      style: TextStyle(
                          color: chineese ? Colors.white : Colors.black,
                          fontFamily: "Poppins"),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: () {
                indian = false;
                chineese = false;
                arabic = true;
                continental = false;
                setState(() {});
              },
              child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  decoration: BoxDecoration(
                      color: arabic ? Colors.black : Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Arabic",
                      style: TextStyle(
                        color: arabic ? Colors.white : Colors.black,
                        fontFamily: "Poppins",
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: () {
                indian = false;
                chineese = false;
                arabic = false;
                continental = true;
                setState(() {});
              },
              child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  decoration: BoxDecoration(
                      color: continental ? Colors.black : Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Continental",
                      style: TextStyle(
                          color: continental ? Colors.white : Colors.black,
                          fontFamily: "Poppins"),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
