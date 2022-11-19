import 'package:flutter/material.dart';

class PartFiveCard extends StatelessWidget {
  final String imgPath, label, title, description, boldWords;
  const PartFiveCard(
      {super.key,
      required this.imgPath,
      required this.label,
      required this.title,
      required this.description,
      required this.boldWords});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.4,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                child: Image.asset(
                  imgPath,
                  fit: BoxFit.contain,
                )),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
              height: size.height * 0.175,
              padding: const EdgeInsets.fromLTRB(22, 15, 22, 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    // spreadRadius: 2,
                    blurRadius: 2,
                    offset:
                        const Offset(1.5, 1.5), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: const Color(0xFF494949),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      label,
                      style: const TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                  Text(
                    title,
                    style: const TextStyle(
                        fontFamily: 'Tajawal-Bold', fontSize: 18, height: 2.3),
                  ),
                  Text.rich(
                    TextSpan(
                        children: [
                          TextSpan(
                              text: description,
                              style:
                                  const TextStyle(fontFamily: 'Tajawal-Light')),
                          TextSpan(
                              text: boldWords,
                              style:
                                  const TextStyle(fontFamily: 'Tajawal-Bold')),
                        ],
                        style: const TextStyle(
                          fontSize: 12,
                        )),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
