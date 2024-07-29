import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../Coustom_Widget/App_Rounded_Button.dart';
import '../model_view_api_helper/api_helper.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController(text: "admin-deorwine_dev@gmail.com");
  TextEditingController passwordController = TextEditingController(text: "Admin@123");
  final _formKey = GlobalKey<FormState>();
  String emailError = '';
  String passwordError = '';

  void tapSignUpButton()async{
    Response loginData = await ApiHelper.postProduct(url: '', body: {
      "email":emailController.text,
      "password":passwordController.text,
      "device_type":"ios",
      "device_id":"",
    });
    Map<String,dynamic> apiData = jsonDecode(loginData.body);
    if(loginData.statusCode==200 && apiData['status']== true){

    }else if(apiData.containsKey('email')){
      setState(() {
        emailError = apiData['errors'].containsKey('email')? apiData['errors']['email'].toString():"";
        passwordError = apiData['errors'].containsKey('password')? apiData['errors']['password'].toString():"";
      });
      setState(() {
        emailError = apiData["massage"];
      });
    }
  }

  /*void tapSignUpButton() async {
    Response loginData = await ApiHelper.postProduct(
        url: 'http://172.105.41.132/buildithome/public/api/v1/admin/login',
        body: {
          'email': emailController,
          'password': passwordController,
          'device_type': 'ios',
          'device_id': '',
        });
    Map<String, dynamic> apiDta = jsonDecode(loginData.body);
    if (loginData.statusCode == 200 && apiDta['status'] == true) {
    } else if (apiDta.containsKey('errors')) {
      setState(() {
        emailError = apiDta['errors'].containsKey('email')
            ? apiDta['errors']['email'].toString()
            : '';
        passwordError = apiDta['errors'].containsKey('password')
            ? apiDta['errors']['password'].toString()
            : '';
      });
    } else {
      setState(() {
        emailError = apiDta['massage'];
      });
    }
  }*/

  @override
  Widget build(BuildContext context) {
    // var height = MediaQuery.of(context).size.height * .5;
    // var width = MediaQuery.of(context).size.width * .5;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: const Color(0XFF000000),
          child: Column(
            children: [
              Container(
                height: 250,
                width: double.infinity,
                decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(150)),
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://img.freepik.com/premium-photo/bright-neon-portrait-girl-glasses-psychedelic-style-young-woman-model-created-by-ai_550060-4872.jpg?w=360'),
                        fit: BoxFit.cover),
                    boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 15)]),
              ),
              const SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Email',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w200,
                        color: Color(0xff4F4F4F)),
                  ),
                  Form(
                      child: Container(
                    width: 300,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextFormField(
                          style: const TextStyle(color: Colors.white),
                          controller: emailController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              isDense: true,
                              contentPadding: const EdgeInsets.all(10)),
                        ),
                        const SizedBox(height: 10),
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Password',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w200,
                                color: Color(0xff4F4F4F)),
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          style: const TextStyle(color: Colors.white),
                          controller: passwordController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              isDense: true,
                              contentPadding: const EdgeInsets.all(10)),
                        ),
                        const SizedBox(height: 10),
                        const Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w200,
                                color: Color(0xff4F4F4F)),
                          ),
                        ),
                      ],
                    ),
                  )),
                  const SizedBox(height: 10),
                ],
              ),
              const SizedBox(height: 10),
              AppRoundedButton(
                  onTap: () {
                    Navigator.pushNamed(context, 'SignupPage');
                  },
                  buttonColor: Colors.orange,
                  textColor: const Color(0XFF000000),
                  title: 'Sign in'),
              const SizedBox(height: 10),
              const Text(
                'or',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Container(
                height: 50,
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.g_mobiledata_outlined,
                        size: 35, color: Colors.orange),
                    Text(
                      'Login with Google',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color(0XFF0F1011)),
              ),
              const SizedBox(height: 10),
              const Text(
                "Don't Have an Account?",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w200,
                    color: Colors.white),
              ),
              const SizedBox(height: 10),
              InkWell(
                  onTap: () {},
                  child: const Text(
                    'Signup',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color(0XFFFC9502)),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
