import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 2, 31, 55),
      body: SafeArea(child: Column(
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
                'Privacy Policy',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white),
              )
            ],
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text('POLICY',style: TextStyle(fontSize:28,color: Colors.blue),
                
          ),SizedBox(width: 20,),
          Icon(Icons.policy,color: Colors.purple,)
              ],
            ),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which dont look even slightly believable.If you are going to use a passage of Lorem Ipsum, you need to be sure there isnt anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.',style: TextStyle(fontSize: 20,color: Colors.grey),),
          )
        ],
      )),
    );
  }
}