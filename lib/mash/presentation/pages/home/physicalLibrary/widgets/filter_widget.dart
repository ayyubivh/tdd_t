import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/mash/domain/entities/library/library_get_data_entity.dart';
import 'package:mash/mash/presentation/manager/bloc/library_bloc/library_bloc.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/utils/loader.dart';

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({super.key});

  @override
  _FilterBottomSheetState createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  String selectedAuthor = '-1';
  String selectedLanguage = '-1';

  final ScrollController _controller = ScrollController();
  late LibraryBloc _libraryBloc;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    LibraryBloc.get(context).add(const LibraryEvent.getRequiredFilterData());
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return BlocBuilder<LibraryBloc, LibraryState>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          height: size.height,
          child: Stack(
            children: [
              state.getRequiredFilterData?.status == Status.LOADING ||
                      state.getRequiredFilterData?.data == null
                  ? const Loader()
                  : SingleChildScrollView(
                      controller: _controller,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Theme(
                            data: Theme.of(context)
                                .copyWith(dividerColor: Colors.transparent),
                            child: ExpansionTile(
                              title: const Text(AppStrings.author,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                              children: [
                                _buildFilterOption(
                                    state.getRequiredFilterData!.data!.authors,
                                    selectedAuthor, (value) {
                                  setState(() {
                                    selectedAuthor = value!;
                                  });
                                }),
                              ],
                            ),
                          ),
                          Theme(
                            data: Theme.of(context)
                                .copyWith(dividerColor: Colors.transparent),
                            child: ExpansionTile(
                              title: const Text(AppStrings.languages,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                              children: [
                                _buildFilterOptions(
                                    state
                                        .getRequiredFilterData!.data!.languages,
                                    selectedLanguage, (value) {
                                  setState(() {
                                    print(value.toString());
                                    selectedLanguage = value!;
                                  });
                                },
                                state.getRequiredFilterData?.status == Status.LOADING
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
              Positioned(
                  bottom: 10,
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColors.purpleLight,
                        borderRadius: BorderRadius.circular(15)),
                    height: 100,
                    width: size.width * 0.9,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text(
                              AppStrings.cancelSmall,
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              LibraryBloc.get(context).add(
                                  LibraryEvent.getPhysicalLibrary(
                                      prmLangId: selectedLanguage,
                                      prmAuthId: selectedAuthor,
                                      prmSearch: "-1"));
                              Navigator.pop(context);
                            },
                            child: const Text(
                              AppStrings.submit,
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ))
            ],
          ),
        );
      },
    );
  }

  Widget _buildFilterOptions(List<Language> languages, String selectedOption,
      ValueChanged<String?> onSelected, loading) {
    return ListView.builder(
        controller: _controller,
        shrinkWrap: true,
        itemCount: languages.length,
        itemBuilder: (context, index) {
          return loading? Loader(): ListTile(
            title: Text(languages[index].languageName),
            leading: Radio<String>(
              value: languages[index].languageId,
              groupValue: selectedOption,
              onChanged: onSelected,
            ),
          );
        });
  }

  Widget _buildFilterOption(List<Author> authors, String selectedOption,
      ValueChanged<String?> onSelected) {
    return ListView.builder(
        controller: _controller,
        shrinkWrap: true,
        itemCount: authors.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(authors[index].authorName),
            leading: Radio<String>(
              value: authors[index].authorId,
              groupValue: selectedOption,
              onChanged: onSelected,
            ),
          );
        });
  }
}
