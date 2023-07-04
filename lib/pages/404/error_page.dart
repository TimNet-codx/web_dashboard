import 'package:flutter/material.dart';
import 'package:web_dashboard/widgets/custom_text.dart';

class PageNotFound extends StatelessWidget {
  const PageNotFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset("assets/images/error.png", width: 350,),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(text: "Page not found", size: 24, color: Colors.black, weight: FontWeight.bold)
            ],
          )
        ],
      ),
    );
  }
}
