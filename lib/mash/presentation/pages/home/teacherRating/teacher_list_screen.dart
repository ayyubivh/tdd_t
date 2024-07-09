import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/mash/presentation/manager/bloc/teacher_bloc/teacher_bloc.dart';
import 'package:mash/mash/presentation/pages/home/teacherRating/widgets/teacher_card_widget.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/utils/handle_error.dart';
import 'package:mash/mash/presentation/utils/helper_classes.dart';
import 'package:mash/mash/presentation/utils/loader.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';

import '../../../widgets/drawer_widget.dart';

class TeacherListScreen extends StatelessWidget {
  const TeacherListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: AppStrings.teacherList),
      endDrawer: const DrawerWidget(),
      body: const TeacherListBody(),
    );
  }
}

class TeacherListBody extends StatefulWidget {
  const TeacherListBody({super.key});

  @override
  State<TeacherListBody> createState() => _TeacherListBodyState();
}

class _TeacherListBodyState extends State<TeacherListBody> {



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    TeacherBloc.get(context).add(const TeacherEvent.getRatings());
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: size.height,
      width: size.width,
      child: Container(
        margin: const EdgeInsets.only(top: 8.0),
        child: BlocConsumer<TeacherBloc, TeacherState>(
          builder: (context, state) {
            return state.getTeacherRating?.status == Status.LOADING
                ? const Loader()
                :state.getTeacherRating?.data?.length == 0 ? Center(child: HelperClasses.emptyDataWidget()) : ListView.builder(
                    itemBuilder: (context, index) {
                      return TeacherCardWidget(
                        onTap: state.getTeacherRating!.data![index].ratedOrNot == '0' ? () => GoRouter.of(context)
                            .pushNamed(AppPages.teacherRatingScreen,extra: state.getTeacherRating!.data![index]): (){
                          HelperClasses.showSnackBar(msg: 'Rating already submitted !');
                        },
                        imageUrl: state.getTeacherRating!.data![index].docName.toString(),
                        teacherName:
                            state.getTeacherRating!.data![index].fullName.toString(),
                        subjectName:
                            state.getTeacherRating!.data![index].subjectName.toString(),
                        rating: state.getTeacherRating!.data![index].rating
                            .toString(), isRated: state.getTeacherRating!.data![index].ratedOrNot == '0' ? false : true,
                      );
                    },
                    itemCount: state.getTeacherRating?.data?.length);
          },
          listener: (BuildContext context, TeacherState state) {
            if (state.getTeacherRating?.status == Status.ERROR) {
              handleErrorUi(
                  context: context, error: state.getTeacherRating?.error);
            }
          },
        ),
      ),
    );
  }
}
