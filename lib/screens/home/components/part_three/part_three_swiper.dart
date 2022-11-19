import 'package:flutter/material.dart';

import 'part_three_card.dart';

class PartThreeSwiper extends StatelessWidget {
  PartThreeSwiper({super.key});
  final List investmentInfo = [
    {
      'version': 4,
      'percent': 72.00,
      'invest': 27.05,
      'annual': 17.48,
      'duration': 21
    },
    {
      'version': 3,
      'percent': 21.00,
      'invest': 16.35,
      'annual': 10.79,
      'duration': 19
    },
    {
      'version': 2,
      'percent': 54.00,
      'invest': 21.84,
      'annual': 12.42,
      'duration': 14
    },
    {
      'version': 1,
      'percent': 89.00,
      'invest': 30.11,
      'annual': 21.48,
      'duration': 11
    }
  ];
  final ScrollController _controller = ScrollController();

// This is what you're looking for!
  void _scrollDown() {
    _controller.animateTo(
      _controller.position.minScrollExtent,
      duration: Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
            height: size.height * 0.5,
            child: ListView.builder(
              controller: _controller,
              scrollDirection: Axis.horizontal,
              itemCount: investmentInfo.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                  child: PartThreeCard(
                    versionNumber: investmentInfo[index]['version'],
                    completionPercent: investmentInfo[index]['percent'],
                    investReturn: investmentInfo[index]['invest'],
                    annualReturn: investmentInfo[index]['annual'],
                    theDuration: investmentInfo[index]['duration'],
                  ),
                );
              },
            )),
        const SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: () {
            _scrollDown();
          },
          child: Container(
            height: 9,
            width: 9,
            decoration: BoxDecoration(
                color: Colors.amber, borderRadius: BorderRadius.circular(10)),
          ),
        )
      ],
    );
  }
}
