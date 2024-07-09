import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/pages/home/competitiveExams/widgets/regiestered_exam_body.dart';
import 'package:mash/mash/presentation/pages/home/competitiveExams/widgets/unregisterd_exam_body.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:mash/mash/presentation/widgets/drawer_widget.dart';

class ExamDetailScreen extends StatelessWidget {
  const ExamDetailScreen({super.key, required this.isRegistered});

  final bool isRegistered;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: AppStrings.examDetails),
      endDrawer: const DrawerWidget(),
      body: isRegistered
          ? const RegisteredExamDetailBody()
          : const ExamDetailBody(),
    );
  }
}
