import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class PreventionCard extends StatelessWidget {
  final String image;
  final String text;

  const PreventionCard({
    Key key,
    this.image,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          SvgPicture.asset(image),
          Text(
            text,
            style: Theme.of(context)
                .textTheme
                .body2
                .copyWith(color: kPrimaryColor),
          ),
        ],
      ),
    );
  }
}
