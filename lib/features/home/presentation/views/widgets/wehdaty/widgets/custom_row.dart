import 'package:flutter/material.dart';
import 'package:ibrahim_project/core/utiles/components.dart';
import 'package:ibrahim_project/features/home/presentation/manager/wehdaty_cubit/cubit.dart';
import 'package:ibrahim_project/features/home/presentation/views/widgets/wehdaty/add_wehda_view.dart';
import '../../../../../../../core/utiles/styles.dart';


class CustomRow extends StatelessWidget {
  const CustomRow(this.cubit, {super.key});
  final WehdatyCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('يمكنك مشاهدة كل وحداتك هنا',
                style: Styles.textStyle14.copyWith(fontSize: 15, fontWeight: FontWeight.w600)),
            const Text('يمكنك اختيار واحدة واحدة فقط',
                style: Styles.textStyle12),
          ],
        ),
        if(!cubit.isFirst)
        MaterialButton(
          onPressed: (){
            navigateTo(context, const AddWehdaView());
          },
          height: 40,
          color: Colors.blue,
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none
          ),
          minWidth: 130,
          child: const Row(
            children: [
              Text('اضافة وحدة', style: TextStyle(color: Colors.white),),
              SizedBox(width: 6),
              Icon(Icons.add_box_outlined, color: Colors.white, size: 18,)
            ],
          ),
        ),
      ],
    );
  }
}
