import 'package:flutter/material.dart';
import '../../../../../../../core/utiles/styles.dart';


class CommonQuestions extends StatelessWidget {
  const CommonQuestions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade200
          ),
          child: const Icon(Icons.question_mark),
        ),
        const SizedBox(width: 10),
        Text('الاسئلة الشائعه', style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w700)),
        const Spacer(),
        const Icon(Icons.arrow_forward_ios_sharp, color: Colors.grey, size: 20)
      ],
    );
  }
}