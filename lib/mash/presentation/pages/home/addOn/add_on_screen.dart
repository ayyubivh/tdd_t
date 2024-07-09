import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/mash/presentation/manager/bloc/addon_bloc/add_on_bloc.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/utils/helper_classes.dart';
import 'package:mash/mash/presentation/utils/loader.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/widgets/add_on_card.dart';
import 'package:mash/mash/presentation/widgets/drawer_widget.dart';

class AddOnScreen extends StatefulWidget {
  const AddOnScreen({super.key});

  @override
  State<AddOnScreen> createState() => _AddOnScreenState();
}

class _AddOnScreenState extends State<AddOnScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    BlocProvider.of<AddOnBloc>(context)
        .add(const AddOnEvent.getAddOnData(categoryId: '0', categorytype: '1'));
    _tabController = TabController(length: 2, vsync: this);
    // _tabController?.addListener(_handleTabIndexChange);
  }


  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      endDrawer: const DrawerWidget(),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(AppStrings.addOnScreenTitle),
        bottom: TabBar(
          onTap: (index){
            final bloc = BlocProvider.of<AddOnBloc>(context);
            if (index == 0) {
              bloc.add(const AddOnEvent.getAddOnData(categoryId: '0', categorytype: '1'));
            } else if (index == 1) {
              bloc.add( const AddOnEvent.getAddOnData(categoryId: '0', categorytype: '2'));
            }
          },
          indicator: const UnderlineTabIndicator(
            borderSide: BorderSide(width: 2.0, color: Colors.purple),
          ),
          controller: _tabController,
          tabs: const [
            Tab(text: AppStrings.tabBarTitleAcademic),
            Tab(text: AppStrings.tabBarTitleNonAcademic),
          ],
        ),
      ),
      body: addOnBody(),
    );
  }

  addOnBody() {
    return BlocBuilder<AddOnBloc, AddOnState>(
      builder: (context, state) {
        prettyPrint('********* list length ***********');
        prettyPrint('${state.getAddOnData.data?.length}');
        return TabBarView(
          controller: _tabController,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child:state.getAddOnData.data?.length == 0 ? HelperClasses.emptyDataWidget(): ListView.separated(
                    separatorBuilder: (context, index) {
                      return sizedBox(10.0);
                    },
                    itemCount: state.getAddOnData.data?.length ?? 0,
                    itemBuilder: (context, index) {
                      return state.getAddOnData.status == Status.LOADING
                          ? const Loader()
                          :AddOnCard(
                              cardImage:
                                  state.getAddOnData.data?[index]?.imgUrl ?? '',
                              onPress: () => GoRouter.of(context)
                                  .pushNamed(AppPages.addonDetailScreen,
                              pathParameters: {'addOnId': state.getAddOnData.data?[index]?.categoryId.toString() ?? '',
                                'addOnType': state.getAddOnData.data?[index]?.categoryType.toString() ?? ''},
                              ), title: state.getAddOnData.data?[index]?.categoryName.toString() ?? '',
                            );
                    }),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: state.getAddOnData.data?.length == 0 ? HelperClasses.emptyDataWidget(): ListView.separated(
                    separatorBuilder: (context, index) {
                      return sizedBox(10.0);
                    },
                    itemCount: state.getAddOnData.data?.length ?? 0,
                    itemBuilder: (context, index) {
                      return state.getAddOnData.status == Status.LOADING
                          ? const Loader()
                          : AddOnCard(
                              cardImage:
                              state.getAddOnData.data?[index]?.imgUrl ?? '',
                              onPress: () => GoRouter.of(context)
                                  .go("${AppPages.addonDetailScreen}/${state.getAddOnData.data?[index]?.categoryId.toString()}/${state.getAddOnData.data?[index]?.categoryType.toString()}",
                              ), title:  state.getAddOnData.data?[index]?.categoryName.toString() ?? '',
                            );
                    }),
              ),
            ),
          ],
        );
      },
    );
  }

  sizedBox(height) {
    return SizedBox(
      height: height,
    );
  }
}
