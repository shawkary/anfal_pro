import 'package:flutter/material.dart';
import '../../../../../../../core/utiles/styles.dart';


class PersonalImage extends StatelessWidget {
  const PersonalImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
            alignment: AlignmentDirectional.bottomStart,
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/images/man.png'))),
              ),
              CircleAvatar(
                radius: 11,
                backgroundColor: Colors.white,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.edit, color: Colors.white, size: 12),
                ),
              ),
            ]),
        const SizedBox(height: 15),
        const Text('م.محمد محمود', style: Styles.textStyle18),
        const Text('010765265677'),
      ],
    );
  }
}
