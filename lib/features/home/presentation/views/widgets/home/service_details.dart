import 'package:flutter/material.dart';
import 'package:ibrahim_project/features/home/presentation/views/widgets/home/widgets/service_details_app_bar.dart';
import 'package:ibrahim_project/features/home/presentation/views/widgets/home/widgets/service_details_body.dart';


class ServiceDetails extends StatelessWidget {
  const ServiceDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: appBar(context),
        body: const SafeArea(child: ServiceDetailsBody()),
      ),
    );
  }
}
