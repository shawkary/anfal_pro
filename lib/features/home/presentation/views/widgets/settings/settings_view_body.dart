import 'package:flutter/material.dart';
import 'package:ibrahim_project/features/home/presentation/views/widgets/settings/widgets/button_log_out.dart';
import 'package:ibrahim_project/features/home/presentation/views/widgets/settings/widgets/personal_image.dart';
import 'package:ibrahim_project/features/home/presentation/views/widgets/settings/widgets/setting_change_password.dart';
import 'package:ibrahim_project/features/home/presentation/views/widgets/settings/widgets/setting_common_questions.dart';
import 'package:ibrahim_project/features/home/presentation/views/widgets/settings/widgets/setting_language.dart';
import 'package:ibrahim_project/features/home/presentation/views/widgets/settings/widgets/setting_notification.dart';
import 'package:ibrahim_project/features/home/presentation/views/widgets/settings/widgets/setting_privacy.dart';
import 'package:ibrahim_project/features/home/presentation/views/widgets/settings/widgets/setting_terms_conditions.dart';
import 'package:ibrahim_project/features/home/presentation/views/widgets/settings/widgets/who_are_we.dart';
import '../../../../../../core/utiles/styles.dart';


class SettingsViewBody extends StatelessWidget {
  const SettingsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('الاعدادت',
                style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600)),
            const SizedBox(height: 30),
            const PersonalImage(),
            const SizedBox(height: 30),
            const Text('عامة'),
            const SizedBox(height: 20),
            const Notifications(),
            const SizedBox(height: 15),
            const Language(),
            const SizedBox(height: 15),
            const ChangePassword(),
            const SizedBox(height: 20),
            const Text('الدعم'),
            const SizedBox(height: 15),
            const TermsAndConditions(),
            const SizedBox(height: 15),
            const PrivacyPolicy(),
            const SizedBox(height: 15),
            const CommonQuestions(),
            const SizedBox(height: 15),
            const WhoAreWe(),
            const SizedBox(height: 20),
            const ButtonLogOut(),
          ],
        ),
      ),
    );
  }
}
