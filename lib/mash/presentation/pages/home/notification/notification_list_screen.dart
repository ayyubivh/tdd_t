import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/mash/presentation/manager/bloc/notification_bloc/notification_bloc.dart';
import 'package:mash/mash/presentation/pages/home/notification/widgets/notification_card.dart';
import 'package:mash/mash/presentation/utils/helper_classes.dart';
import 'package:mash/mash/presentation/utils/loader.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';

class NotificationListScreen extends StatefulWidget {
  const NotificationListScreen({super.key});

  @override
  State<NotificationListScreen> createState() => _NotificationListScreenState();
}

class _NotificationListScreenState extends State<NotificationListScreen> {
  @override
  void initState() {
    super.initState();
    // Delay the event dispatch to ensure BLoC initialization
    Future.delayed(Duration.zero, () {
      BlocProvider.of<NotificationBloc>(context)
          .add(const NotificationEvent.getNotifications());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: 'Notifications'),
      body: notificationBody(),
    );
  }

  Widget notificationBody() {
    var size = MediaQuery.sizeOf(context);
    return BlocBuilder<NotificationBloc, NotificationState>(
      builder: (context, state) {
        if (state.notificationListData.status == Status.LOADING) {
          return const Loader();
        } else if (state.notificationListData.status == Status.ERROR) {
          return Center(
              child: Text('Error: ${state.notificationListData.error}'));
        } else if (state.notificationListData.data?.isEmpty ?? true) {
          return HelperClasses.emptyDataWidget();
        } else {
          return SizedBox(
            height: size.height,
            width: size.width,
            child: ListView.builder(
              itemCount: state.notificationListData.data?.length ?? 0,
              itemBuilder: (context, index) {
                return NotificationCard(
                  title: state.notificationListData.data?[index]?.msgSub ?? '',
                  description:
                      state.notificationListData.data?[index]?.msgBody ?? '',
                  time: state.notificationListData.data?[index]?.msgTime ?? '',
                  date: state.notificationListData.data?[index]?.dt ?? '',
                );
              },
            ),
          );
        }
      },
    );
  }
}
