import 'package:flutter/material.dart';
import '../../../../../../../core/utiles/styles.dart';


class Language extends StatelessWidget {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return Directionality(
              textDirection: TextDirection.rtl,
              child: SizedBox(
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text('لغة التطبيق', style: Styles.textStyle18.copyWith(color: Colors.blue)),
                      const SizedBox(height: 10),
                      GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade300
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('العربية', style: TextStyle(color: Colors.blue)),
                              Icon(Icons.radio_button_on, color: Colors.blue)
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('English'),
                            Icon(Icons.radio_button_off)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
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
            child: const Icon(Icons.language),
          ),
          const SizedBox(width: 10),
          Text('اللغة', style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w700)),
          const Spacer(),
          const Icon(Icons.arrow_forward_ios_sharp, color: Colors.grey, size: 20)
        ],
      ),
    );
  }
}
