import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../../../constands/constands.dart';
import '../liquer_screen/liquer_brand_screen.dart';

class members_liquer_container extends StatelessWidget {
  const members_liquer_container({super.key});

  @override
  Widget build(BuildContext context) {
    return  InkWell(onTap: (){Get.to(liqor_brands());},
      child: Container(
          height: 150,
          width: double.infinity,
          color: kwhite,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/images/NoPath - Copy (19).png'),
              ),kwidth10,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Low Desk Bar &Night Club'),
                    Text('(240) Bar'),
                    Text('perambur'),
                    Text('Dine in')
                  ],
                ),
              )
            ],
          ),
        ),
    );
  }
}