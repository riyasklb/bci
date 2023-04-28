import 'package:bci/constands/constands.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Generate_otp extends StatelessWidget {
  const Generate_otp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ksizedbox30,
          Image.asset(
            'assets/images/a.png',
          ),
          Text(
            'Enter Your Phone Number',
            style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700),
          ),ksizedbox20,Text('We will send you an One Time Password',style: TextStyle(fontSize:20 ),),Text('on this mobile number',style: TextStyle(fontSize: 20),)
        ],
      ),
    );
  }
}
