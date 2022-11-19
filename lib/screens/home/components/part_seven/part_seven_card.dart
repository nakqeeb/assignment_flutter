import 'package:flutter/material.dart';

class PartSevenCard extends StatelessWidget {
  final String comment, name;
  const PartSevenCard({super.key, required this.comment, required this.name});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: size.height * 0.34,
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(12, 4, 12, 2),
                margin: const EdgeInsets.only(bottom: 7),
                decoration: BoxDecoration(
                  color: Colors.amberAccent,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Text(
                  'ﻋﻤﻠﺎء ﺻﻜﻮك',
                  style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'Tajawal-Light',
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                height: size.height * 0.1,
                child: Text(
                  comment,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'Tajawal-Bold',
                    fontSize: 14,
                  ),
                ),
              ),
              Text(
                name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 11,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
        Container(
          height: size.height * 0.34,
          decoration: BoxDecoration(
            color: Colors.black26,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ],
    );
  }
}
