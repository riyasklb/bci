import 'package:bci/views/home_screen/coupons/view_history.dart';
import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../constands/constands.dart';

class CouponScreen extends StatefulWidget {
  const CouponScreen({super.key});

  @override
  State<CouponScreen> createState() => _CouponScreenState();
}

class _CouponScreenState extends State<CouponScreen> {
  var couponController = TextEditingController();
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
                      padding: const EdgeInsets.only(left: 10),
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
                      padding: const EdgeInsets.only(right: 20),
                      child: Text(
                        'Coupon Redemption',
                        style: TextStyle(
                            fontSize: 23,
                            //fontWeight: FontWeight.bold,
                            color: Colors.white),
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
            ksizedbox30,
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Enter Coupon',
                    style: TextStyle(
                        fontSize: 23,
                        color: kblue,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            ksizedbox20,
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: TextField(
                controller: couponController,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: kblue)),
                    border: OutlineInputBorder()),
              ),
            ),
            ksizedbox40,
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: kOrange,
                    minimumSize:
                        Size(MediaQuery.of(context).size.width * 0.9, 55)),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 180, bottom: 120),
                          child: Dialog(
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: ListView(children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 50),
                                      child: Image.asset(
                                        'assets/images/coupondone.png',
                                        width: 150,
                                      ),
                                    ),
                                    ksizedbox30,
                                    Text(
                                      'Coupon Code Apply',
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      'Your Coupon Code used Successful Applied',
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text('and submit your coupon complete',
                                        style: TextStyle(fontSize: 14)),
                                    ksizedbox40,
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            minimumSize: Size(
                                                MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.5,
                                                50),
                                            backgroundColor: kOrange),
                                        onPressed: () {},
                                        child: Text(
                                          'DONE',
                                          style: TextStyle(fontSize: 23),
                                        ))
                                  ],
                                ),
                              ]),
                            ),
                          ),
                        );
                      });
                },
                child: Text(
                  'APPLY',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ))
          ],
        ),
        bottomNavigationBar: Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
            child: InkWell(
              onTap: () {
                Get.to(CouponViewHistory());
              },
              child: Container(
                height: 55,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: kwhite, 
                    border: Border.all(color: kblue)),
                child: Center(
                  child: Text('VIEW HISTORY',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22,
                        color: kblue,
                      )),
                ),
              ),
            )));
  }
}
