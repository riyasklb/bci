import 'package:bci/constands/app_fonts.dart';
import 'package:bci/constands/constands.dart';
import 'package:bci/controllers/flights_controller.dart';
import 'package:bci/widgets/flight_booking_widgets/flight_dates_choosers.dart';
import 'package:bci/widgets/flight_booking_widgets/flight_destination_chooser.dart';
import 'package:bci/widgets/flight_booking_widgets/flight_landing_screen_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FlightBookingLandingScreen extends StatefulWidget {
  const FlightBookingLandingScreen({super.key});

  @override
  State<FlightBookingLandingScreen> createState() =>
      _FlightBookingLandingScreenState();
}

class _FlightBookingLandingScreenState
    extends State<FlightBookingLandingScreen> {
  final flightBookingController = Get.find<FlightsController>();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          FlightBookingHeader(),
          ksizedbox20,
          FlightDestinationChooser(),
          ksizedbox20,
          const Divider(
            thickness: 1,
          ),
          ksizedbox10,
          FlightDateRange(),
           ksizedbox20,
          const Divider(
            thickness: 1,
          ),
          ksizedbox10,
        ],
      ),
    );
  }
}
