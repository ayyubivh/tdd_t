import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/mash/presentation/manager/bloc/digital_library/digital_library_bloc.dart';
import 'package:mash/mash/presentation/pages/home/library/widgets/non_academic_body.dart';
import 'package:mash/mash/presentation/pages/home/library/widgets/search_widget.dart';

import '../../../../../di/injector.dart';
import '../../../../../firebase_options.dart';
import '../../../widgets/common_appbar.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  configureDependencies();

  runApp(const MaterialApp(
    home: NonAcademic(),
  ));
}

class NonAcademic extends StatefulWidget {
  const NonAcademic({super.key});

  @override
  State<NonAcademic> createState() => _NonAcademicState();
}

class _NonAcademicState extends State<NonAcademic> {
  Timer? _debounce;

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  @override
  void initState() {
    DigitalLibraryBloc.get(context)
        .add(const DigitalLibraryEvent.getNonAcademic(typeId: "-1"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(
          title: 'NON ACADEMICS',
          onClose: () {
            DigitalLibraryBloc.get(context)
              ..add(const DigitalLibraryEvent.closeSearch())
              ..add(const DigitalLibraryEvent.getNonAcademic(typeId: "-1"));
          },
          searchFunction: (str) {
            if (_debounce?.isActive ?? false) _debounce?.cancel();
            _debounce = Timer(const Duration(milliseconds: 500), () {
              prettyPrint("searching");
              DigitalLibraryBloc.get(context)
                ..add(const DigitalLibraryEvent.startSearch())
                ..add(DigitalLibraryEvent.searchNonAcademic(search: str));
            });
          }),
      body: BlocBuilder<DigitalLibraryBloc, DigitalLibraryState>(
        buildWhen: (previous, current) =>
            previous.isSearching != current.isSearching,
        builder: (context, state) {
          return state.isSearching
              ? const SearchWidget()
              : const NonAcademicBody();
        },
      ),
    );
  }
}
