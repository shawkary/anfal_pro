import 'package:flutter/material.dart';
import 'package:ibrahim_project/features/home/presentation/views/widgets/wehdaty/widgets/add_wehda_view_body.dart';


class AddWehdaView extends StatelessWidget {
  const AddWehdaView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(child: AddWehdaViewBody()),
      ),
    );
  }
}
