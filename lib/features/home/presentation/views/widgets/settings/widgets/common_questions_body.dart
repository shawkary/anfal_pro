import 'package:flutter/material.dart';
import 'package:ibrahim_project/core/custom_widgets/text_form_field.dart';
import '../../../../../../../core/utiles/styles.dart';


class CommonQuestionsBody extends StatefulWidget {
  const CommonQuestionsBody({super.key});

  @override
  State<CommonQuestionsBody> createState() => _CommonQuestionsBodyState();
}

class _CommonQuestionsBodyState extends State<CommonQuestionsBody> {
  bool isDown1 = false;
  bool isDown2 = false;
  bool isDown3 = false;
  bool isDown4 = false;
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                      decoration: BoxDecoration(border: Border.all()),
                      child: const Icon(Icons.arrow_back, size: 15)),
                ),
                const SizedBox(width: 10),
                Text('الاسئلة الشائعه',
                    style: Styles.textStyle14
                        .copyWith(fontWeight: FontWeight.w700)),
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  const CustomFormField(
                    prefixIcon: Icon(Icons.search, color: Colors.grey),
                    hintText: 'بحث...',
                  ),
                  const SizedBox(height: 30),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isDown1 = !isDown1;
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('كيف الانفال العقارية',
                            style: Styles.textStyle14
                                .copyWith(fontWeight: FontWeight.w700)),
                        Icon(!isDown1 ? Icons.arrow_drop_down : Icons.arrow_drop_up),
                      ],
                    ),
                  ),
                  if(isDown1)
                    const Text(
                      'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.',
                      style: TextStyle(color: Colors.grey)),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Container(
                      color: Colors.grey.shade300,
                      height: 1,
                    ),
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isDown2 = !isDown2;
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('متي يمكنني الاتصال بالشخص ؟',
                            style: Styles.textStyle14
                                .copyWith(fontWeight: FontWeight.w700)),
                        Icon(!isDown2 ? Icons.arrow_drop_down : Icons.arrow_drop_up),
                      ],
                    ),
                  ),
                  if(isDown2)
                    const Text(
                        'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.',
                        style: TextStyle(color: Colors.grey)),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Container(
                      color: Colors.grey.shade300,
                      height: 1,
                    ),
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isDown3 = !isDown3;
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('متي يمكنني الاتصال بالشخص ؟',
                            style: Styles.textStyle14
                                .copyWith(fontWeight: FontWeight.w700)),
                        Icon(!isDown3 ? Icons.arrow_drop_down : Icons.arrow_drop_up),
                      ],
                    ),
                  ),
                  if(isDown3)
                    const Text(
                        'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.',
                        style: TextStyle(color: Colors.grey)),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Container(
                      color: Colors.grey.shade300,
                      height: 1,
                    ),
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isDown4 = !isDown4;
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('متي يمكنني الاتصال بالشخص ؟',
                            style: Styles.textStyle14
                                .copyWith(fontWeight: FontWeight.w700)),
                        Icon(!isDown4 ? Icons.arrow_drop_down : Icons.arrow_drop_up),
                      ],
                    ),
                  ),
                  if(isDown4)
                    const Text(
                        'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.',
                        style: TextStyle(color: Colors.grey)),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Container(
                      color: Colors.grey.shade300,
                      height: 1,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
