import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do_app/controllers/routes/routes.dart';

import '../Coustom_Widget/App_Rounded_Button.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  TextEditingController emailController = TextEditingController();

  final GlobalKey _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF252955),
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://www.majesticmanpower.in/_next/image?url=%2Fassets%2Fservices%2Flaundry-house.png&w=1080&q=75'),
                    fit: BoxFit.fill)),
          ),
          Expanded(
              child: ListView(
            children: [
              SizedBox(
                height: 17.2,
              ),
              Center(
                  child: Text(
                'Welcome Back !',
                style: TextStyle(fontSize: 22, color: Colors.white),
              )),
              SizedBox(
                height: 36.8,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Text(
                  'Stay signed in with your account to make searching easier',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 10.91,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Text(
                  'Mobile Number',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              SizedBox(
                height: 11.87,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: SizedBox(
                  height: 48,
                  child: Form(
                      key: _formKey,
                      child: TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                            hintText: 'Enter mobile number to get OTP',
                            hintStyle: TextStyle(
                                fontSize: 12, color: Color(0XFFA0A0A0)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      )),
                ),
              ),
              /*IntlPhoneField(
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red
                    ),
                  ),
                ),
                initialCountryCode: 'IN',
                onChanged: (phone) {
                  print(phone.completeNumber);
                },
              ),*/
              SizedBox(
                height: 12.97,
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: RichText(
                    text: TextSpan(children: [
                      WidgetSpan(
                          child: Icon(
                        Icons.check_box_outline_blank,
                        size: 18,
                        color: Colors.white,
                      )),
                      TextSpan(
                          text: ' Accept ',
                          style: TextStyle(fontSize: 16, color: Colors.white)),
                      TextSpan(
                          text: 'Privacy Policy ',
                          style: TextStyle(fontSize: 16, color: Colors.orange)),
                      TextSpan(
                          text: 'and ',
                          style: TextStyle(fontSize: 16, color: Colors.white)),
                      TextSpan(
                          text: 'Terms & Conditions',
                          style: TextStyle(fontSize: 16, color: Colors.orange)),
                    ]),
                  )),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: SizedBox(
                    height: 48,
                    child: AppRoundedButton(
                        onTap: () {Get.toNamed(Routes.Otpscreen);},
                        buttonColor: Color(0XFFF9922D),
                        textColor: Colors.white,
                        title: 'Sign in with OTP')),
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: 'Powered by ',
                      style: TextStyle(fontSize: 12, color: Color(0XFFDFE1FF))),
                  TextSpan(
                      text: 'DOORSERVE',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.white))
                ])),
              )
            ],
          ))
        ],
      ),
    );
  }
}
