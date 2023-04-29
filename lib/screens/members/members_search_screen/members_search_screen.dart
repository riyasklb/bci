import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../constands/constands.dart';

class Members_search_screen extends StatelessWidget {
  const Members_search_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: kwhite, appBar: PreferredSize(
          preferredSize: Size.fromHeight(250),
          child: ClipPath(
            clipper: SinCosineWaveClipper(),
            child: Container(
              height: 160,
              color: kblue,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [ksizedbox20,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Search',style: TextStyle(fontSize: 22,color: kwhite),),
                      
                        Icon(
                          Icons.question_mark,
                          color: kwhite,
                        )
                      ],
                    ),ksizedbox20,
                TextField(
 // controller: _controller,
 
  decoration: InputDecoration(
    fillColor: kwhite,
    focusColor: kwhite,
    isDense: true,
    filled: true,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(4.0),
    ),
    suffixIcon: Image.asset('assets/images/XMLID_223_.png')
  ),
) ],
                ),
              ),
            ),
          )),);
  }
}