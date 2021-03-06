import 'package:city_guide/model/constants.dart';
import 'package:flutter/material.dart';

class NoData extends StatelessWidget {
  const NoData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 16,
        ),
        Image.asset(
          'assets/images/empty.png',
          height: 120,
        ),
        const SizedBox(
          height: 12,
        ),
        const Text(
          'No suitable trips found',
          style: TextStyle(
            fontFamily: 'NunitoSans',
            fontWeight: FontWeight.bold,
            color: black,
          ),
        ),
      ],
    );
  }
}
