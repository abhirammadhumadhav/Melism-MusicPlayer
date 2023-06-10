import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TermsScreen extends StatelessWidget {
  const TermsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color.fromARGB(255, 2, 31, 55),
      body: SafeArea(child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    }, icon: Icon(Icons.arrow_back_ios_new,color: Colors.white,)),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Terms and Condition',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white),
                )
              ],
            ),
            SizedBox(height: 20,),
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Welcome to our music app! By downloading or using this app, you agree to be bound by these terms and conditions. These terms and conditions apply to all users of the app, including registered and unregistered usersUser License: This app is licensed to you for personal and non-commercial use only. You may not sublicense, transfer, or sell the app or any of its features.Account Registration: You may be required to create an account to use certain features of the app. You are responsible for maintaining the confidentiality of your account information and for any activity that occurs under your account.Payment: Some features of the app may require payment. Payment options and terms will be outlined in the app.Content: You are responsible for the content you upload to the app, and must ensure it complies with our community guidelines and terms of service. We reserve the right to remove content that violates these guidelines.Intellectual Property: All intellectual property rights associated with the app are owned by us. You may not copy, modify, or distribute any content from the app without permission.Liability: We are not liable for any damages or losses arising from the use of the app, including but not limited to data loss, system failure, or security breaches.Termination: We reserve the right to terminate your account or access to the app at any time for any reason, without notice.By using this app, you agree to comply with these terms and conditions. If you do not agree with these terms, please do not use this app.',style: TextStyle(fontSize: 20,color: Colors.grey),),
            )
          ],
        ),
      )),
    );
  }
}