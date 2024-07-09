import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mash/mash/presentation/manager/bloc/drawer_bloc/drawer_bloc.dart';
import 'package:mash/mash/presentation/manager/bloc/profile_bloc/profile_bloc.dart';
import 'package:mash/mash/presentation/pages/bottomBar/bottom_navigation_bar.dart';
import 'package:mash/mash/presentation/pages/dashboard/parent/parent_dashboard_screen.dart';
import 'package:mash/mash/presentation/pages/dashboard/teacher_dashboard.dart';
import 'package:mash/mash/presentation/pages/home/addOn/add_on_screen.dart';
import 'package:mash/mash/presentation/pages/home/homeWork/home_work_notes_screen.dart';
import 'package:mash/mash/presentation/pages/home/library/library_screen.dart';
import 'package:mash/mash/presentation/pages/home/timeTable/time_table_main_screen.dart';
import 'package:mash/mash/presentation/router/router_config.dart';

class HomeScreen extends StatefulWidget {
  final int currentIndex;
  const HomeScreen({super.key, required this.currentIndex});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    BlocProvider.of<ProfileBloc>(context).add(const ProfileEvent.getSiblings());
    BlocProvider.of<DrawerBloc>(context)
        .add(const DrawerEvent.getRoleMenuEvent());
    _init();
    super.initState();
  }

  final List<Widget> _screens = [];
  List<Widget> _init() {
    _screens.add(
      AppRouteManager.navigateByUserType(
        parent: const ParentDashBoard(),
        staff: const TeacherDashboard(),
        student: const ParentDashBoard(),
      ),
    );
    _screens.addAll([
      const TimeTableScreen(),
      const HomeWorkNotesScreen(),
      const LibraryScreen(),
      const AddOnScreen()
    ]);
    return _screens;
  }

  @override
  Widget build(BuildContext context) {
    //Widget getWidget = await  AppRouteManager.navigateByUserType(staff: staff, parent: parent, student: student)
    return Scaffold(
      bottomNavigationBar: const BottomNavigationBarScreen(),
      body: _screens[widget.currentIndex],
    );
  }
}
