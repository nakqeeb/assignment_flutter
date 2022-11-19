import 'package:flutter/material.dart';

class PartSixCard extends StatelessWidget {
  final String title, label;
  final String? subTitle;
  const PartSixCard({
    super.key,
    required this.title,
    this.subTitle,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      /* width: size.width * 0.45,
      height: size.height * 0.09, */
      padding: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: const Color(0xff626262),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontFamily: 'Tajawal-Bold',
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: subTitle ?? '',
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  text: label,
                  style: const TextStyle(color: Colors.amber),
                ),
              ],
            ),
            style: const TextStyle(
              fontSize: 12,
              fontFamily: 'Tajawal-Light',
            ),
          ),
        ],
      ),
    );
  }
}
