// import 'package:flutter/material.dart';
// import 'package:intro_slider/intro_slider.dart';
// import 'package:flutter_swiper/flutter_swiper.dart';

// class IntroSlider extends StatefulWidget {
//   @override
//   _IntroSliderState createState() => _IntroSliderState();
// }

// class _IntroSliderState extends State<IntroSlider> {
//   final List<String> images = [
//     "https://example.com/image1.jpg",
//     "https://example.com/image2.jpg",
//     "https://example.com/image3.jpg",
//   ];

//   final List<String> titles = [
//     "Welcome to MyApp!",
//     "Discover new things",
//     "Connect with others",
//   ];

//   final List<String> subtitles = [
//     "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
//     "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
//     "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
//   ];

//   int currentIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Expanded(
//               child: Swiper(
//                 itemCount: images.length,
//                 index: currentIndex,
//                 onIndexChanged: (index) {
//                   setState(() {
//                     currentIndex = index;
//                   });
//                 },
//                 itemBuilder: (BuildContext context, int index) {
//                   return Column(
//                     children: [
//                       Image.network(
//                         images[index],
//                         fit: BoxFit.cover,
//                         height: MediaQuery.of(context).size.height * 0.5,
//                       ),
//                       SizedBox(height: 20.0),
//                       Text(
//                         titles[index],
//                         style: TextStyle(
//                           fontSize: 24.0,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       SizedBox(height: 10.0),
//                       Text(
//                         subtitles[index],
//                         style: TextStyle(
//                           fontSize: 16.0,
//                           fontWeight: FontWeight.normal,
//                         ),
//                         textAlign: TextAlign.center,
//                       ),
//                     ],
//                   );
//                 },
//                 pagination: SwiperPagination(
//                   builder: DotSwiperPaginationBuilder(
//                     activeSize: 10.0,
//                     space: 5.0,
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 20.0),
//             ElevatedButton(
//               onPressed: () {
//                 // Add your code here for handling the button press
//               },
//               child: Text(
//                 currentIndex == images.length - 1 ? "Get Started" : "Next",
//                 style: TextStyle(
//                   fontSize: 18.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               style: ElevatedButton.styleFrom(
//                 fixedSize: Size(
//                   MediaQuery.of(context).size.width * 0.8,
//                   50.0,
//                 ),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(30.0),
//                 ),
//               ),
//             ),
//             SizedBox(height: 20.0),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:intro_slider/intro_slider.dart';

// class Introduction extends StatefulWidget {

//   @override
//   State<StatefulWidget> createState() {
//     return IntroductionState();
//   }
// }

// class IntroductionState extends State<Introduction> {
//   List<Slide> slides = [];

//   @override
//   void initState() {
//     super.initState();
//     addScreens();
//   }

//   void addScreens() {
//     slides.add(
//       Slide(
//         title: 'title',
//         description: 'description',
//         backgroundColor: Colors.white,
//         pathImage: 'assets/images/screen-one.png',
//         styleTitle: TextStyle(
//           color: Colors.black,
//           fontSize: 30,
//           fontWeight: FontWeight.bold
//         ),
//         styleDescription: TextStyle(
//           color: Colors.black,
//           fontSize: 18,
//         ),
//       ),
//     );
//     slides.add(
//       Slide(
//         title: 'title',
//         description: 'description',
//         backgroundColor: Colors.white,
//         pathImage: 'assets/images/screen-two.png',
//         styleTitle: TextStyle(
//           color: Colors.black,
//           fontSize: 30,
//           fontWeight: FontWeight.bold
//         ),
//         styleDescription: TextStyle(
//           color: Colors.black,
//           fontSize: 18,
//         ),
//       ),
//     );
//     slides.add(
//       Slide(
//         title: 'title',
//         description: 'description',
//         backgroundColor: Colors.white,
//         pathImage: 'assets/images/screen-three.png',
//         widthImage: 100,
//         heightImage: 100,
//         styleTitle: TextStyle(
//           color: Colors.black,
//           fontSize: 30,
//           fontWeight: FontWeight.bold
//         ),
//         styleDescription: TextStyle(
//           color: Colors.black,
//           fontSize: 18,
//         ),
//       ),
//     );
//   }

//   void onDonePress() {
//     Navigator.pop(context);
//   }

//   void onSkipPress() {
//     Navigator.pop(context);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return IntroSlider(
//       slides: slides,
//       colorActiveDot: Colors.black12,
//       styleNameSkipBtn: TextStyle(
//         color: Colors.black
//       ),
//       styleNameDoneBtn: TextStyle(
//         color: Colors.black
//       ),
//       onDonePress: onDonePress,
//       onSkipPress: onSkipPress
//     );
//   }
// }
