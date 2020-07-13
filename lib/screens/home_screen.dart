import 'package:covid_19/constants.dart';
import 'package:covid_19/widgets/info_card.dart';
import 'package:covid_19/widgets/prevention_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor.withOpacity(.03),
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset('assets/icons/menu.svg'),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset('assets/icons/search.svg'),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
              left: 20,
              bottom: 40,
              right: 20,
              top: 20,
            ),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Wrap(
              spacing: 20,
              runSpacing: 20,
              children: [
                InfoCard(
                  title: 'Confirmed Cases',
                  count: 1062,
                  iconColor: Color(0xFFFF9C00),
                ),
                InfoCard(
                  title: 'Deaths',
                  count: 75,
                  iconColor: Color(0xFFFF2D55),
                ),
                InfoCard(
                  title: 'Total Recoveries',
                  count: 675,
                  iconColor: Color(0xFF50E3C2),
                ),
                InfoCard(
                  title: 'New Cases',
                  count: 23,
                  iconColor: Color(0xFF5856D6),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    'Preventions',
                    style: Theme.of(context)
                        .textTheme
                        .title
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PreventionCard(
                      text: 'Wash Hands',
                      image: 'assets/icons/hand_wash.svg',
                    ),
                    PreventionCard(
                      text: 'Use Masks',
                      image: 'assets/icons/use_mask.svg',
                    ),
                    PreventionCard(
                      text: 'Clean and Disinfect',
                      image: 'assets/icons/Clean_Disinfect.svg',
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Container(
                  height: 150,
                  width: double.infinity,
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * .4,
                          top: 10,
                          right: 20,
                        ),
                        height: 130,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF60BE93),
                              Color(0xFF1B8D59),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Dial 101 for \nmedical help!\n\n',
                                style: Theme.of(context)
                                    .textTheme
                                    .title
                                    .copyWith(color: Colors.white),
                              ),
                              TextSpan(
                                text: 'If any symptoms appear',
                                style: TextStyle(
                                  color: Colors.white.withOpacity(.7),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: SvgPicture.asset('assets/icons/nurse.svg'),
                      ),
                      Positioned(
                        top: 30,
                        right: 10,
                        child: SvgPicture.asset('assets/icons/virus.svg'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
