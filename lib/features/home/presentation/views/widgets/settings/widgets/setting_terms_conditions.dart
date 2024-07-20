import 'package:flutter/material.dart';
import 'package:ibrahim_project/core/utiles/components.dart';
import 'package:ibrahim_project/features/home/presentation/views/widgets/settings/widgets/terms_conditions_body.dart';
import '../../../../../../../core/utiles/styles.dart';


class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        navigateTo(context, const TermsConditionsBody());
      },
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade200
            ),
            child: const Icon(Icons.safety_check_outlined),
          ),
          const SizedBox(width: 10),
          Text('شروط والاحكام', style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w700)),
          const Spacer(),
          const Icon(Icons.arrow_forward_ios_sharp, color: Colors.grey, size: 20)
        ],
      ),
    );
  }
}
