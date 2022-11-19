import 'package:flutter/material.dart';

class PartEightTile extends StatelessWidget {
  final String label, title, description, imgPath;
  const PartEightTile(
      {super.key,
      required this.label,
      required this.title,
      required this.description,
      required this.imgPath});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 37,
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(12, 4, 12, 2),
                margin: const EdgeInsets.only(bottom: 7),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.blueGrey, width: 0.3),
                ),
                child: Text(
                  label,
                  style: const TextStyle(
                    color: Colors.blueGrey,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 10),
                child: Text(
                  title,
                  style: const TextStyle(fontFamily: 'Tajawal-Bold'),
                ),
              ),
              SizedBox(
                width: size.width * 0.67,
                child: Text(
                  description,
                  style: const TextStyle(
                      fontSize: 12, fontFamily: 'Tajawal-Light'),
                ),
              ),
              TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.blueGrey,
                    padding: EdgeInsets.zero,
                    minimumSize: const Size(50, 30),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.keyboard_arrow_left,
                        size: 18,
                      ),
                      Text(
                        'ﻟﻠﻤﺰﻳﺪ ﻣﻦ اﻟﻌﻠﻮﻣﺎت',
                        style: TextStyle(
                            fontSize: 12,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w100),
                      )
                    ],
                  ))
            ],
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Image.asset(
              imgPath,
              height: 70,
            ),
          )
        ],
      ),
    );
  }
}
