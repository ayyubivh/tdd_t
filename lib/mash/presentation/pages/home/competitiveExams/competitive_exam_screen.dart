import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/mash/presentation/manager/bloc/comp_exam/competetive_exam_bloc.dart';
import 'package:mash/mash/presentation/pages/home/competitiveExams/widgets/exam_link_card.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/utils/size_utility.dart';
import 'package:mash/mash/presentation/widgets/drawer_widget.dart';
import 'package:mash/mash/presentation/widgets/shimmers/custom_shimmer_widget.dart';

class CompetitiveExamScreen extends StatefulWidget {
  const CompetitiveExamScreen({super.key});

  @override
  State<CompetitiveExamScreen> createState() => _CompetitiveExamScreenState();
}

class _CompetitiveExamScreenState extends State<CompetitiveExamScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(_handleTabSelection);
    _fetchDataForTab(_tabController.index);
  }

  void _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      _fetchDataForTab(_tabController.index);
    }
  }

  void _fetchDataForTab(int index) {
    final flag = index == 0 ? 3 : 2;
    BlocProvider.of<CompetetiveExamBloc>(context)
        .add(CompetetiveExamEvent.getTobeRegistered(flag: flag.toString()));
  }

  @override
  void dispose() {
    _tabController.removeListener(_handleTabSelection);
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(AppStrings.examLinks),
          bottom: TabBar(
            controller: _tabController,
            tabs: const [
              Tab(text: AppStrings.toBeRegistered),
              Tab(text: AppStrings.registered),
            ],
          ),
        ),
        endDrawer: const DrawerWidget(),
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _tabController,
          children: const [
            ExamBody(isRegistered: false),
            ExamBody(isRegistered: true),
          ],
        ),
      ),
    );
  }
}

class ExamBody extends StatelessWidget {
  final bool isRegistered;

  const ExamBody({super.key, required this.isRegistered});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocBuilder<CompetetiveExamBloc, CompetetiveExamState>(
        builder: (context, state) {
          final data = state.compExamTobeRegisteredResponse.data;
          if (isRegistered) {
            return ListView.separated(
              separatorBuilder: (context, index) => spacer7,
              itemCount: data?.length ?? 0,
              itemBuilder: (context, index) {
                return data == null ||
                        state.compExamTobeRegisteredResponse.status ==
                            Status.LOADING
                    ? CustomShimmerWidget(
                        height: 60,
                        borderRadius: 12,
                        width: SizeUtility(context).width,
                      )
                    : ExamLinkCard(
                        isRegistered: true,
                        title: data[index].examName ?? "",
                        date: data[index].examDate ?? "",
                        onPress: () {
                          BlocProvider.of<CompetetiveExamBloc>(context).add(
                            CompetetiveExamEvent.getTobeRegisteredDetails(
                              data[index].examId ?? "",
                            ),
                          );
                          GoRouter.of(context).pushNamed(
                            AppPages.examDetailScreen,
                            extra: true,
                          );
                        },
                      );
              },
            );
          } else {
            return ListView.separated(
              separatorBuilder: (context, index) => spacer7,
              itemCount: state.compExamTobeRegisteredResponse.data?.length ?? 0,
              itemBuilder: (context, index) {
                final data = state.compExamTobeRegisteredResponse.data?[index];
                return data == null ||
                        state.compExamTobeRegisteredResponse.status ==
                            Status.LOADING
                    ? CustomShimmerWidget(
                        height: 60,
                        borderRadius: 12,
                        width: SizeUtility(context).width,
                      )
                    : ExamLinkCard(
                        isRegistered: false,
                        title: data.examName ?? "",
                        date: data.examEndDate ?? "",
                        onPress: () {
                          BlocProvider.of<CompetetiveExamBloc>(context).add(
                            CompetetiveExamEvent.getTobeRegisteredDetails(
                              data.examId ?? "",
                            ),
                          );
                          GoRouter.of(context).pushNamed(
                            AppPages.examDetailScreen,
                            extra: false,
                          );
                        },
                      );
              },
            );
          }
        },
      ),
    );
  }
}
