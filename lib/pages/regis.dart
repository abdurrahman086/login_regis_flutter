import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:login_regis/pages/constants.dart';
import 'package:login_regis/pages/login.dart';

class RegisPage extends StatelessWidget {
  const RegisPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Register Page',
                style: blackTextStyle.copyWith(
                    fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 11),
              Text(
                "Ini merupakan halaman register AbdurDEV",
                style: secondaryTextStyle.copyWith(fontSize: 12),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 64,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nama",
                    style: blackTextStyle.copyWith(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Contoh : Andika',
                        hintStyle: blackTextStyle.copyWith(
                          fontSize: 12,
                          color: textColor.withOpacity(0.6),
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 17),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Email",
                        style: blackTextStyle.copyWith(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 11,
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'example@gmail.com',
                            hintStyle: blackTextStyle.copyWith(
                              fontSize: 12,
                              color: textColor.withOpacity(0.6),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 17),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Password",
                              style: blackTextStyle.copyWith(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 11,
                          ),
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'password',
                                hintStyle: blackTextStyle.copyWith(
                                  fontSize: 12,
                                  color: textColor.withOpacity(0.6),
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 17),
                                suffixIcon: Icon(Icons.visibility_off),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 24,
                                height: 24,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "remember me",
                                style: rememberTextStyle.copyWith(fontSize: 12),
                              )
                            ],
                          ),
                          Spacer(),
                          Text(
                            "Forgot Password?",
                            style: blackTextStyle.copyWith(fontSize: 12),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: buttonColor,
                        ),
                        child: Center(
                          child: Text(
                            "Register",
                            style: whiteTextStyle.copyWith(fontSize: 14),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Have an account?",
                            style: blackTextStyle.copyWith(fontSize: 12),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          RichText(
                              text: TextSpan(
                                  style: blackTextStyle.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  LoginPage()));
                                    },
                                  text: "Sign Up")),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
