import 'package:bci/authentications/generate_otp/generate_otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../constands/constands.dart';

class landing_screen extends StatelessWidget {
  const landing_screen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,

      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/01 Login Screen Options.png',),fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(body:   Column(mainAxisAlignment: MainAxisAlignment.end,
        children: [Image.asset('assets/images/Group 5814.png'),
          SizedBox(
                        height: 65,
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromARGB(255, 177, 126, 60),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                              ),
                              onPressed: () {
                             Get.off(Generate_otp());
                              },
                              child: Text(
                                'Member Login',
                                style: TextStyle(fontSize: 22,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                      ), ksizedbox20,    SizedBox(
                        height: 65,
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor:Color.fromARGB(0, 246, 246, 246),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                              ),
                              onPressed: () {
                              
                              },
                              child: Text(
                                'Bussiness login',
                                style: TextStyle(fontSize: 22,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                      ),ksizedbox30
        ],
      ),  
        backgroundColor: Colors.transparent),
    );
  }
}
