import 'package:flutter/material.dart';
import 'package:ibrahim_project/core/custom_widgets/material_button.dart';
import 'on_boarding_model.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({
    super.key,
    required this.controller,
    required this.onPressed,
    required this.onPageChanged,
  });

  final PageController controller;
  final void Function()? onPressed;
  final void Function(int)? onPageChanged;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          PageView.builder(
            controller: controller,
            onPageChanged: onPageChanged,
            itemBuilder: (context, index) =>
                Image.asset(BoardingModel.list[index].image),
            itemCount: 3,
          ),
          Container(
            width: double.infinity,
            height: 330,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  const Text(
                      textAlign: TextAlign.right,
                      'كل الخدمات معنا في مكان واحد',
                      style:
                          TextStyle(fontSize: 34, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  const Text(
                    textAlign: TextAlign.right,
                    'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                  const SizedBox(height: 20),
                  CustomButton(
                    onPressed: onPressed,
                    text: 'التالي',
                    buttonColor: const Color(0xff01B2F8),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
