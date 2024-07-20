import 'package:flutter/material.dart';
import '../../../../../../../core/custom_widgets/material_button.dart';
import '../../../../../../../core/utiles/styles.dart';


class ButtonLogOut extends StatelessWidget {
  const ButtonLogOut({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return Directionality(
              textDirection: TextDirection.rtl,
              child: Container(
                padding: const EdgeInsets.all(20),
                height: 400,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 50.0),
                      child: Icon(
                        Icons.warning_amber_rounded,
                        size: 150,
                        color: Colors.red,
                      ),
                    ),
                    Text(
                      'تسجيل الخروج',
                      style: Styles.textStyle25.copyWith(color: Colors.blue),
                    ),
                    Text(
                      'هل أنت متأكد من رغبتك بتسجيل الخروج ؟',
                      style: Styles.textStyle14
                          .copyWith(color: Colors.grey.shade700),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: CustomButton(
                            onPressed: () {},
                            height: 60,
                            text: 'لا',
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: CustomButton(
                            onPressed: () {},
                            height: 60,
                            buttonColor: Colors.white,
                            textColor: Colors.black,
                            borderSide: const BorderSide(),
                            text: 'تسجيل الخروج',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
      height: 55,
      text: 'تسجيل الخروج',
    );
  }
}
