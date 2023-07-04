import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_dashboard/constants/style.dart';
import 'package:web_dashboard/layout.dart';
import 'package:web_dashboard/routing/routes.dart';
import 'package:web_dashboard/widgets/custom_text.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: 400),
            padding: EdgeInsets.all( 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(right: 12),
                      child: Image.asset("assets/icons/logo.png"),),
                    Expanded(child: Container())
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Text("Login", style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
                Row(
                  children: [
                    CustomText(
                        text: "Welcome back to the admin panel",
                        size: 14,
                        color: lightGrey,
                        weight: FontWeight.normal)
                  ],
                ),
                SizedBox(height: 15,),
                TextField(
                  decoration:   InputDecoration(
                      labelText: "Email",
                      hintText: "timothy@gmail.com",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
                ),
                SizedBox(height: 15,),
                TextField(
                  obscureText: true,
                  decoration:   InputDecoration(
                      labelText: "Password",
                      hintText: "123",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
                ),
                SizedBox(height: 15,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(value: true, onChanged: (value){}),
                        CustomText(text: "Remember Me", size: 15, color: Colors.black, weight: FontWeight.normal)
                      ],
                    ),
                    CustomText(text: "Forgot", size: 16, color: active, weight: FontWeight.bold)
                  ],
                ),
                SizedBox(height: 15,),

                InkWell(
                  onTap: (){
                    // Get.offAll(()=> SiteLayout());
                    Get.offAllNamed(RootRoute);

                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: active,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    alignment: Alignment.center,
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: CustomText(
                      text: "Login",
                      size: 15,
                      color: Colors.white,
                      weight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 15,),

                RichText(text: TextSpan(
                    children: [
                      TextSpan(text: "Do not have admin credentials?"),
                      TextSpan(text: "Request credentials!", style: TextStyle(color: active)),

                    ]
                ))
              ],
            ),
          )
      )
    );

  }
}
