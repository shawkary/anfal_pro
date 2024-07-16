import 'package:flutter/material.dart';
import 'package:ibrahim_project/core/utiles/components.dart';
import 'package:ibrahim_project/features/home/presentation/views/widgets/home/request_preview.dart';
import '../../../../../../../core/utiles/styles.dart';


PreferredSizeWidget? appBar(context) => AppBar(
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
          Text('تفاصيل الخدمة',
              style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w700)),
        ],
      ),
      actions: [
        IconButton(
            onPressed: (){
              navigateTo(context, const RequestPreview());
            },
            padding: const EdgeInsets.only(left: 10),
            icon: const Icon(Icons.arrow_circle_down)),
      ],
    );
