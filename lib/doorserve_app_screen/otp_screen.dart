import 'package:flutter/material.dart';

import '../Coustom_Widget/App_Rounded_Button.dart';



class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final GlobalKey _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Center(child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Text('OTP Verification',style: TextStyle(color: Colors.black,fontSize: 20),),
          )),
          SizedBox(height: 30,),
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
                image:  DecorationImage(
                    image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwT1r_bjvvyWONFhlDK6Q6C7AFmINJyfaGwg&usqp=CAU'),
                    fit: BoxFit.fill
                )
            ),
          ),
          SizedBox(height: 30,),
          Expanded(child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 55,left: 55),
                child: Text('Please enter 6 digit OTP received on your mobile number',style: TextStyle(fontSize: 14,color: Color(0XFF707070)),textAlign: TextAlign.center),
              ),
              SizedBox(height: 23,),
              Text('+44-8562842499',style: TextStyle(fontSize: 18,color: Color(0XFF252525)),textAlign: TextAlign.center),
              SizedBox(height: 22,),
              Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18,right: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 50,
                          width: 50,
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          width: 50,
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          width: 50,
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          width: 50,
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          width: 50,
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          width: 50,
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
              SizedBox(height: 22,),
              Text('20 SEC',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Color(0XFFF9922D)),textAlign: TextAlign.center),
              SizedBox(height: 22,),
              Text('CODE EXPIRES',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400,color: Color(0XFF707070)),textAlign: TextAlign.center),
              SizedBox(height: 22,),
              Text('Don’t receive the OTP? Resend OTP',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0XFF252955)),textAlign: TextAlign.center),
              SizedBox(height: 70,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SizedBox(
                    height: 48,
                    child: AppRoundedButton(onTap: (){}, buttonColor: Colors.orange, textColor: Colors.white, title: 'Verify OTP')),
              )
            ],
          ))
        ],
      ),
    );
  }
}
