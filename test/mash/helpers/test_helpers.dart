import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:mash/core/api_provider.dart';
import 'package:mash/core/connection_checker.dart';
import 'package:mash/core/firebase_database.dart';
import 'package:mash/core/hive_service.dart';
import 'package:mash/mash/data/local/data_sources/auth_local_data_source.dart';
import 'package:mash/mash/data/local/data_sources/dash_board_local_data_source.dart';
import 'package:mash/mash/data/remote/data_sources/academic_remote_data_source.dart';
import 'package:mash/mash/data/remote/data_sources/auth_remote_data_source.dart';
import 'package:mash/mash/data/remote/data_sources/dashboard_remote_data_source.dart';
import 'package:mash/mash/data/remote/data_sources/drawer_menu_items_remote_data_source.dart';
import 'package:mash/mash/data/remote/data_sources/home_remote_data_source.dart';
import 'package:mash/mash/domain/repositories/academic_repository.dart';
import 'package:mash/mash/domain/repositories/auth_repository.dart';
import 'package:mash/mash/domain/repositories/dash_board_repository.dart';
import 'package:mash/mash/domain/repositories/drawer_menu_items_repository.dart';
import 'package:mash/mash/domain/repositories/home_repository.dart';
import 'package:mash/mash/domain/use_cases/auth/login_use_case.dart';
import 'package:mash/mash/presentation/manager/bloc/auth_bloc/auth_bloc.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks(
  [
    BuildContext,
    //providers
    InternetConnectionChecker,
    ApiProvider,
    ConnectionChecker,
    HiveService,
    FirebaseDatabaseMethods,

    //auth
    AuthRepository,
    AuthRemoteDataSource,
    AuthLocalDataSource,
    AuthBloc,
    LoginUseCase,

    //dasshboard
    DashBoardRemoteDataSource,
    DashBoardRepository,
    DashBoardLocalDataSource,

    //drawer menu itesm
    DrawerMenuItemsRepository,
    DrawerMenuItemsRemoteDataSource,

    //Academics
    AcademicRepository,
    AcademicRemoteDataSource,

    //home
    HomeRepository,
    HomeRemoteDataSource,
  ],
)
void main() {}
