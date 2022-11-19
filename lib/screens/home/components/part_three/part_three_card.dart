import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class PartThreeCard extends StatelessWidget {
  final double completionPercent, investReturn, annualReturn;
  final int versionNumber, theDuration;
  const PartThreeCard({
    super.key,
    required this.versionNumber,
    required this.completionPercent,
    required this.investReturn,
    required this.annualReturn,
    required this.theDuration,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      height: size.height * 0.45,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(7),
            topRight: Radius.circular(7),
            bottomLeft: Radius.circular(7),
            bottomRight: Radius.circular(7)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            // spreadRadius: 5,
            blurRadius: 3,
            offset: const Offset(0.5, 2.5), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 20, 15, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  'صكوك المرابحة 01540-',
                  style: TextStyle(
                    fontFamily: 'Tajawal-Bold',
                    fontSize: 18,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.amberAccent),
                  ),
                  child: const Text(
                    'بعد يومين',
                    style: TextStyle(color: Colors.blueGrey, fontSize: 13),
                  ),
                )
              ],
            ),
            Text(
              'رقم الإصـدار   $versionNumber',
              style: const TextStyle(fontSize: 10, height: 2.2),
            ),
            const SizedBox(
              height: 20,
            ),
            // progress
            Row(
              children: [
                const Text(
                  '10,000,000',
                  style: TextStyle(
                    fontFamily: 'Tajawal-Bold',
                    fontSize: 14,
                  ),
                ),
                const Text(
                  'ريال',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                const Spacer(),
                Text(
                  '${completionPercent.toStringAsFixed(0)}%',
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            // progress bar
            LinearPercentIndicator(
              padding: EdgeInsets.zero,
              width: size.width * 0.7,
              barRadius: const Radius.circular(5),
              lineHeight: 10,
              percent: completionPercent / 100,
              backgroundColor: Colors.black12,
              progressColor: Colors.amber,
            ),
            const SizedBox(
              height: 40,
            ),
            // table
            const Divider(),
            Row(
              children: [
                SizedBox(
                  width: size.width * 0.4,
                  child: const Text(
                    'العائد على الاستثمار',
                    style: TextStyle(
                      fontFamily: 'Tajawal-light',
                    ),
                  ),
                ),
                Text(
                  '$investReturn %',
                  style: const TextStyle(
                    color: Colors.blueAccent,
                    fontFamily: 'Tajawal-Bold',
                  ),
                )
              ],
            ),
            const Divider(),
            Row(
              children: [
                SizedBox(
                  width: size.width * 0.4,
                  child: const Text(
                    'العائد السنوي',
                    style: TextStyle(
                      fontFamily: 'Tajawal-Light',
                    ),
                  ),
                ),
                Text(
                  '$annualReturn %',
                  style: const TextStyle(
                    color: Colors.blueAccent,
                    fontFamily: 'Tajawal-Bold',
                  ),
                )
              ],
            ),
            const Divider(),
            Row(
              children: [
                SizedBox(
                  width: size.width * 0.4,
                  child: const Text(
                    'المدة',
                    style: TextStyle(
                      fontFamily: 'Tajawal-Light',
                    ),
                  ),
                ),
                Text(
                  '$theDuration شهر',
                  style: const TextStyle(
                    color: Colors.blueAccent,
                    fontFamily: 'Tajawal-Bold',
                  ),
                )
              ],
            ),
            const Spacer(),
            Center(
              child: SizedBox(
                width: size.width * 0.6,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: const BorderSide(
                          color: Colors.black45,
                          width: 0.1,
                        ),
                      ),
                    ),
                  ),
                  child: SizedBox(
                    width: size.width * 0.5,
                    child: const Text(
                      'التفاصيل',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                          fontWeight: FontWeight.w100),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
