import 'package:flutter/material.dart';

class PartTen extends StatelessWidget {
  const PartTen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff939191),
      padding: const EdgeInsets.fromLTRB(15, 15, 15, 25),
      child: const Text.rich(
        TextSpan(
          children: [
            TextSpan(
                text: 'إشعار المخاطر:',
                style: TextStyle(fontFamily: 'Tajawal-Bold')),
            TextSpan(
                text:
                    ' يقر ويدرك المستخدم/المستثمر بعلمه واطلاعه بأن جميع أنواع الاستثمارات تنطوي على درجة من المخاطر، وأن الاستثمار في الأوراق المالية عبر منصة صكوك يعتبر استثمار عالي المخاطر، وأنها ليست مضمونة أو مؤمن عليها بأي شكل، كما أن استثماره عرضة لجميع أنواع المخاطر والخسارة بشكل كلي أو جزئي، وأن الاستثمار فيها قد يخضع لقيود معينة من حيث المدة وإمكانية البيع أو التسييل.'),
          ],
        ),
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 12,
          height: 1.5,
        ),
      ),
    );
  }
}
