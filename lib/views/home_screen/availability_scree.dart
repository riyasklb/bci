import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constands/constands.dart';

class AvailabilityScreen extends StatefulWidget {
  const AvailabilityScreen({super.key});

  @override
  State<AvailabilityScreen> createState() => _AvailabilityScreenState();
}

class _AvailabilityScreenState extends State<AvailabilityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(250),
          child: ClipPath(
            clipper: SinCosineWaveClipper(),
            child: Container(
              height: 158,
              color: kblue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: kwhite,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 0,right: 20),
                    child: Text(
                      'Availability',
                      style: TextStyle(fontSize: 23, color: Color(0xffF8F9FD)),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Image.asset('assets/images/helps.png'),
                    )
                ],
              ),
            ),
          )),
          body: Column(
            children: [
              ksizedbox20,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Your Services',style: TextStyle(
                    fontSize: 22,color: kblue,
                    ),),
                  ksizedbox10,
                   Container(
                    height: 40,
                    width: 160,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: kOrange,
                        width: 1
                      ),
                      borderRadius: BorderRadius.circular(8)
                    ),
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(left: 5),
                         child: Text('Add Service',style: TextStyle(fontSize: 18,color: kOrange),),
                       ),
                       ksizedbox10,
                       kwidth10,
                       Padding(
                         padding: const EdgeInsets.only(right: 5),
                         child: Image.asset('assets/images/availabilitycircle.png'),
                       )
                     ],
                   ))
                ],
              ),
              ksizedbox30,
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   Container(
                        height: 40,
                        width: 160,
                        decoration: BoxDecoration(
                          color: Color(0xffE4E4E4),
                          border: Border.all(
                            color: kblue,
                            width: 1
                          ),
                          borderRadius: BorderRadius.circular(8)
                        ),
                       child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(left: 5),
                             child: Text('All Services',style: TextStyle(fontSize: 18,color: kblue),),
                           ),
                           ksizedbox10,
                           kwidth10,
                           Padding(
                             padding: const EdgeInsets.only(right: 5),
                             child: Image.asset('assets/images/availabilitycircle2.png'),
                           )
                         ],
                       )),
                        Container(
                        height: 40,
                        width: 160,
                        decoration: BoxDecoration(
                          color: Color(0xffE4E4E4),
                          border: Border.all(
                            color: kblue,
                            width: 1
                          ),
                          borderRadius: BorderRadius.circular(8)
                        ),
                       child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(left: 5),
                             child: Text('16/03/2023',style: TextStyle(fontSize: 18,color: kblue),),
                           ),
                           ksizedbox10,
                           kwidth10,
                           Padding(
                             padding: const EdgeInsets.only(right: 5),
                             child: Image.asset('assets/images/availabilitycircle3.png'),
                           )
                         ],
                       )),
                 ],
               )
            ],
          ),
    );
  }
}
