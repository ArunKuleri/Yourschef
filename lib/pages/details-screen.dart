import 'package:flutter/material.dart';
import 'package:yourschef/widgets/Widgets_support.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _Details();
}

class _Details extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.black,
              ),
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: CircleAvatar(
                  radius: 100,
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    size: 100,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Chef Xavier",
              style: AppWidget.semiboldTextFeildStyle(),
            ),
            Text(
              "Multicuisene",
              style: AppWidget.HeadLinetextFieldStyle(),
            ),
            Text(
              "3 years of industry experince chef , Specialised in Indian cuisine great taste in Indian food,worked at Taj Mumabai,Obreoi at Bangalore ",
              style: AppWidget.LighttextFieldStyle(),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Text(
                  "Available Time ",
                  style: AppWidget.semiboldTextFeildStyle(),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Icon(
                  Icons.alarm,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  "3 hours /per day",
                  style: AppWidget.semiboldTextFeildStyle(),
                )
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Price",
                        style: AppWidget.semiboldTextFeildStyle(),
                      ),
                      Text(
                        "\$15 / hour",
                        style: AppWidget.HeadLinetextFieldStyle(),
                      )
                    ],
                  ),
                  Container(
                    height: 40,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            "Book now",
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
