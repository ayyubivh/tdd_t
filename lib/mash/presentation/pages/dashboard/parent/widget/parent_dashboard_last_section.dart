import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/mash/presentation/manager/bloc/dashboard_bloc/dashboard_bloc.dart';
import 'package:mash/mash/presentation/pages/dashboard/parent/widget/dashboard_common_last_section.dart';
import 'package:mash/mash/presentation/pages/dashboard/parent/widget/subject_perfomance_widget.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/widgets/buttons/icon_button.dart';
import 'package:mash/mash/presentation/widgets/common_bottom_sheet.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_strings.dart';

class ParentDashboardLastSection extends StatefulWidget {
  const ParentDashboardLastSection({super.key});

  @override
  ParentDashboardLastSectionState createState() =>
      ParentDashboardLastSectionState();
}

class ParentDashboardLastSectionState
    extends State<ParentDashboardLastSection> {
  @override
  void initState() {
    BlocProvider.of<DashboardBloc>(context)
        .add(const DashboardEvent.getTermDetailsEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          spacer30,
          _buildPerformanceSelectWidget(),
          spacer30,
          const SubjectPerformanceWidget(),
          spacer40,
          Align(
            alignment: Alignment.center,
            child: CustomIconButton(
              elevation: 2,
              name: 'View Dashboard',
              onTap: () {
                context.pushNamed(AppPages.progressReport);
              },
            ),
          ),
          spacer40,
          const DashboardCommonLastWidget()
        ],
      ),
    );
  }

  Widget _buildPerformanceSelectWidget() {
    return InkWell(
      onTap: () => _showPerformanceSelection(),
      splashColor: AppColors.primaryColor.withOpacity(0.2),
      child: Row(
        children: [
          Text(AppStrings.performance, style: _titleStyle()),
          spacerWidth20,
          BlocBuilder<DashboardBloc, DashboardState>(
            builder: (context, state) => Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      state.termDetailsResponse?.data?[state.selectedTermIndex]
                              .sectionName ??
                          "",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.primaryColor,
                      ),
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ),
                  spacerWidth20,
                  Card(
                    shape: const CircleBorder(),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 12,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showPerformanceSelection() {
    commonBottomSheet(
      context,
      title: AppStrings.select,
      child: _buildPerformanceSelection(),
      height: 0.4,
    );
  }

  Widget _buildPerformanceSelection() {
    return BlocBuilder<DashboardBloc, DashboardState>(
      builder: (context, state) {
        if (state.termDetailsResponse?.data == null) {
          return const Center(child: Text('No data found'));
        }

        return ListView.builder(
          itemCount: state.termDetailsResponse!.data!.length,
          itemBuilder: (context, index) {
            final performance = state.termDetailsResponse!.data![index];
            final isSelected = performance.sectionName ==
                state.termDetailsResponse?.data?[state.selectedTermIndex]
                    .sectionName;

            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  performance.sectionName!,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: isSelected ? Colors.deepPurple : Colors.black,
                  ),
                ),
                Radio(
                  value: isSelected,
                  groupValue: true,
                  onChanged: (value) {
                    BlocProvider.of<DashboardBloc>(context).add(
                      DashboardEvent.selectedTermIndexEvent(index),
                    );
                    context.pop();
                  },
                ),
              ],
            );
          },
        );
      },
    );
  }

  TextStyle _titleStyle() {
    return const TextStyle(fontSize: 17, fontWeight: FontWeight.w600);
  }
}
