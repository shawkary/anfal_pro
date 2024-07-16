import 'package:flutter/material.dart';
import 'package:ibrahim_project/features/home/presentation/views/widgets/home/widgets/request_preview_body.dart';

import '../../../../../../core/utiles/styles.dart';

class RequestPreview extends StatelessWidget {
  const RequestPreview({super.key});

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
                    decoration: BoxDecoration(
                        border: Border.all()
                    ),
                    child: const Icon(Icons.arrow_back, size: 15)),
              ),
              const SizedBox(width: 10),
              Text('طلب معاينة',
                  style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w700)),
            ],
          ),
        ),
        body: const SafeArea(child: RequestPreviewBody()),
      ),
    );
  }
}
