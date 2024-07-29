import 'package:flutter/material.dart';
import 'package:to_do_app/Coustom_Widget/App_Rounded_Button.dart';

class QuestionOption extends StatefulWidget {
  const QuestionOption({super.key,});

  @override
  State<QuestionOption> createState() => _QuestionOptionState();
}

class _QuestionOptionState extends State<QuestionOption> {
  TextEditingController questionController = TextEditingController();
  TextEditingController optionOneController = TextEditingController();
  TextEditingController optionTwoController = TextEditingController();
  TextEditingController optionThreeController = TextEditingController();
  TextEditingController optionFourController = TextEditingController();
  TextEditingController optionResultController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  List<Map<String, dynamic>> question = [
    {'Question 1':'What is correct answer',
      'Options':{
        'Option 1':'Jaipur',
        'Option 2':'Jodhpur',
        'Option 3':'Bikaner',
        'Option 4':'Jaisalmer',
      },
      'Answer':'Jaipur'

    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question Imput'),
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            Column(
              children: [
                TextFormField(
                  controller: questionController,
                  decoration: InputDecoration(
                    labelText: 'Enter your Question',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^[a-z A-Z]+$').hasMatch(value!)) {
                      return "Enter correct ";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: optionOneController,
                  decoration: InputDecoration(
                    labelText: 'Your Question',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your question';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: optionTwoController,
                  decoration: InputDecoration(
                    labelText: 'Your Question',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your question';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: optionThreeController,
                  decoration: InputDecoration(
                    labelText: 'Your Question',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your question';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: optionFourController,
                  decoration: InputDecoration(
                    labelText: 'Your Question',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your question';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: optionResultController,
                  decoration: InputDecoration(
                    labelText: 'Your Question',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your question';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                AppRoundedButton(
                    onTap: () {
                      setState(() {
                        question.add({
                          "optionName": questionController.text,
                          "optionOne": optionOneController.text,
                          "optionTwo": optionTwoController.text,
                          "optionThree": optionThreeController.text,
                          "optionFour": optionFourController.text,
                          "optionResult": optionResultController.text,
                        });
                        question.clear();
                      });
                    },
                    buttonColor: Colors.black,
                    textColor: Colors.white,
                    title: 'Add'),

                /*ListView.builder(
                  itemCount: question.length,
                  itemBuilder: (context, index) {
                  return Column(
                    children: [

                    ],
                  );
                },)*/
              ],
            ),
          ],
        ),
      ),
    );
  }
}