import 'package:flutter/material.dart';
import 'package:ibrahim_project/features/home/presentation/manager/home_cubit/cubit.dart';
import '../../../../../../../core/utiles/styles.dart';


class ServiceDetailsListView extends StatelessWidget {
  const ServiceDetailsListView(this.cubit, {super.key});
  final HomeCubit cubit;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 3),
            child: Row(
              children: [
                Text(cubit.words[index], style: Styles.textStyle14),
                const Spacer(),
                if(!cubit.isChecked[index])
                  Text('(550 ر.س )', style: Styles.textStyle14.copyWith(fontSize: 13, color: Colors.grey)),
                IconButton(
                    onPressed: (){
                      cubit.changeCheckBox(index);
                    },
                    icon: Icon(
                        cubit.isChecked[index] ? Icons.check_box_outline_blank : Icons.check_box,
                        color: cubit.isChecked[index] ? Colors.grey.shade300 : Colors.blue,
                    ))
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Container(height: 1, color: Colors.grey.shade300);
        },
        itemCount: 10,
    );
  }
}
