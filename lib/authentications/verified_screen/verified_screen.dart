import 'package:bci/constands/constands.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../members widgets/bottumbavigation.dart';
//import '../../widgets/bottumbavigation.dart';

class verified_Screen extends StatelessWidget {
  const verified_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ksizedbox30,
          Image.asset('assets/images/Group 5817.png'),
          Text(
            "Welcome :)",
            style: TextStyle(
                fontSize: 22, color: Colors.black, fontWeight: FontWeight.w700),
          ),ksizedbox30,   Text(
            "Your account has been verified",
            style: TextStyle(
                fontSize: 19, color: Colors.black, ),
          ), Text(
            "Successfully",
            style: TextStyle(
                fontSize: 19, color: Colors.black, ),
          ),ksizedbox40,ksizedbox40,    SizedBox(
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
                            Get.off(HelloConvexAppBar());
                              },
                              child: Text(
                                'Done',
                                style: TextStyle(fontSize: 22,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                      ),],
      ),
    );
  }
}
