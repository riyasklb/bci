import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../constands/constands.dart';

class liquer_screen extends StatelessWidget {
  const liquer_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(   appBar: PreferredSize(
          preferredSize: Size.fromHeight(250),
          child: ClipPath(
            clipper: SinCosineWaveClipper(),
            child: Container(
              height: 150,
              color: kblue,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(onTap: Get.back,
                      child: Image.asset('assets/images/chevron-left (2).png')),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Text(
                        'Liquors',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    Icon(
                      Icons.notifications,
                      color: kwhite,
                    )
                  ],
                ),
              ),
            ),
          )),);
  }
}