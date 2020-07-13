import 'package:covid_19/screens/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';
import 'line_chart.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final int count;
  final Color iconColor;

  const InfoCard({
    Key key,
    this.title,
    this.count,
    this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailsScreen(),
            ),
          );
          print('${MediaQuery.of(context).size.height}&${MediaQuery.of(context).size.width}');
        },
        child: Container(
          width: constraints.maxWidth / 2 - 10,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: iconColor.withOpacity(0.12),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        'assets/icons/running.svg',
                        height: 12,
                        color: iconColor,
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(color: kTextColor),
                          children: [
                            TextSpan(
                              text: '$count\n',
                              style: Theme.of(context)
                                  .textTheme
                                  .title
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: 'People',
                              style: TextStyle(
                                fontSize: 12,
                                height: 2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(child: LineReportChart()),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
