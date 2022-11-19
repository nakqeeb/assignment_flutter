import 'package:flutter/material.dart';

class PartTwoCard extends StatelessWidget {
  final String total, title, subTitle;
  const PartTwoCard(
      {super.key,
      required this.total,
      required this.title,
      required this.subTitle});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(7),
            topRight: Radius.circular(7),
            bottomLeft: Radius.circular(7),
            bottomRight: Radius.circular(7)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.15),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 20, 15, 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              total,
              style: const TextStyle(
                color: Colors.amber,
                fontWeight: FontWeight.bold,
                fontFamily: 'Tajawal-Bold',
                fontSize: 25,
                letterSpacing: 1,
              ),
            ),
            Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                letterSpacing: 0.2,
              ),
            ),
            const Divider(),
            Text(
              subTitle,
              style: const TextStyle(
                fontSize: 10,
                letterSpacing: 0.2,
                fontFamily: 'Tajawal-Light',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
