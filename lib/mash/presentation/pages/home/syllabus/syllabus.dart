import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/mash/presentation/manager/bloc/academic_bloc/academic_bloc.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/loader.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';

import '../../../widgets/drawer_widget.dart';

class SyllabusScreen extends StatefulWidget {
  const SyllabusScreen({super.key});

  @override
  State<SyllabusScreen> createState() => _SyllabusScreenState();
}

class _SyllabusScreenState extends State<SyllabusScreen> {
  @override
  void initState() {
    BlocProvider.of<AcademicBloc>(context)
        .add(const AcademicEvent.getSyllabusTerms());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: 'SYLLABUS'),
      endDrawer: const DrawerWidget(),
      body: syllabusBody(),
    );
  }

  syllabusBody() {
    var size = MediaQuery.sizeOf(context);
    return Container(
      height: size.height,
      width: size.width,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: BlocConsumer<AcademicBloc, AcademicState>(
        listenWhen: (previousState, currentState) {
          return currentState.syllabusTerms.data?.first?.termId?.isNotEmpty ==
                  true &&
              (previousState.syllabusTerms.data?.first?.termId?.isEmpty ??
                  true);
        },
        listener: (context, state) {
          prettyPrint('listening');
          BlocProvider.of<AcademicBloc>(context).add(
            AcademicEvent.getSyllabus(state.syllabusTerms.data!.first!.termId!),
          );
        },
        builder: (context, state) {
          return Column(
            children: [
              _selectTermTitle(),
              spacer10,
              _termsField(state),
              spacer10,
              state.syllabus.status == Status.LOADING
                  ? const Loader()
                  : _syllabusList(state),
            ],
          );
        },
      ),
    );
  }

  _selectTermTitle() {
    return const Align(
      alignment: Alignment.centerLeft,
      child: Text(
        'Select Term',
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20,
        ),
      ),
    );
  }

  Widget _termsField(AcademicState state) {
    List<String?> classes =
        state.syllabusTerms.data?.map((e) => e?.termName).toList() ?? [];
    return Wrap(
      spacing: 5,
      children: List.generate(classes.length, (index) {
        return FilterChip(
          checkmarkColor: AppColors.white,
          padding: const EdgeInsets.all(6),
          shape: StadiumBorder(
              side: BorderSide(
            color: state.selectedTermIndex == index
                ? AppColors.white
                : AppColors.primaryColor,
          )),
          label: Text(
            classes[index] ?? '',
          ),
          selected: state.selectedTermIndex == index,
          onSelected: (isSelected) {
            BlocProvider.of<AcademicBloc>(context)
              ..add(AcademicEvent.changeSyllabusTermIndex(index))
              ..add(AcademicEvent.getSyllabus(
                  state.syllabusTerms.data?[index]?.termId.toString() ?? ''));
          },
        );
      }),
    );
  }

  _syllabusList(AcademicState state) {
    final List<String?>? titleList =
        state.syllabus.data?.map((e) => e?.subjectName).toList();
    final subNameList =
        state.syllabus.data?.map((e) => e?.chapterNames).toList();
    return Expanded(
      child: ListView.separated(
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return spacer20;
          },
          itemCount: titleList?.length ?? 0,
          itemBuilder: (context, index) {
            return syllabusCard(
                itemCount: subNameList?[index]?.length ?? 0,
                title: titleList?[index] ?? '',
                items: subNameList?[index] ?? []);
          }),
    );
  }

  syllabusCard(
      {required int itemCount,
      required String title,
      required List<String> items}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8).copyWith(top: 10),
      decoration: BoxDecoration(
        color: AppColors.grey200.withOpacity(0.08),
        borderRadius: BorderRadius.circular(16),
      ),
      child: SizedBox(
        height: itemCount * 54 + 50,
        child: Column(
          children: [
            Align(
                alignment: Alignment.center,
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            spacer10,
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: AppColors.primaryColor.withOpacity(0.1),
                border: Border.all(
                  color: AppColors.white,
                ),
              ),
              child: ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.all(4),
                itemBuilder: (context, index) {
                  return Container(
                      padding: const EdgeInsets.only(left: 15),
                      height: 50,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          items[index],
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: AppColors.greyText,
                          ),
                        ),
                      ));
                },
                separatorBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Divider(
                      height: 1,
                      color: AppColors.white,
                    ),
                  );
                },
                itemCount: itemCount,
              ),
            )
          ],
        ),
      ),
    );
  }
}
