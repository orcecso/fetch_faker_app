import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:faker_fectcher_exam/models/persons_model/persons_model.dart';
import 'package:faker_fectcher_exam/router.gr.dart';
import 'package:faker_fectcher_exam/screens/faker_list_screen/bloc/faker_list_bloc.dart';
import 'package:faker_fectcher_exam/utils/app_theme.dart';
import 'package:faker_fectcher_exam/utils/constants.dart';
import 'package:faker_fectcher_exam/widgets/default_scaffold.dart';
import 'package:faker_fectcher_exam/widgets/v_spacer.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FakerListComponent extends StatefulWidget {
  const FakerListComponent({super.key});

  @override
  State<FakerListComponent> createState() => _FakerListComponentState();
}

class _FakerListComponentState extends State<FakerListComponent> {
  late final FakerListBloc _fakerListBloc;
  final ScrollController _scrollController = ScrollController();
  bool showLoadMore = false;
  List<Persons> dataList = [];
  @override
  void initState() {
    super.initState();
    _fakerListBloc = BlocProvider.of<FakerListBloc>(context);
    _fakerListBloc.add(const LoadInitialPersonsListEvent());
    _scrollController.addListener(_handleScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_handleScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _handleScroll() async {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent) {
      if (kIsWeb) {
        setState(() async {
          showLoadMore = true;
          loadMore();
        });
      } else {
        loadMore();
      }
    }
  }

  loadMore() async {
    await Future.delayed(const Duration(microseconds: 200));
    _fakerListBloc.add(const LoadNext20PersonsListEvent());
  }

  @override
  Widget build(BuildContext context) {
    return InitialScaffold(
      systemUiOverlayStyle: DefaultAppThemes.defaultSystemUIOverlayStyle,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Faker List Screen"),
        actions: [
          if (kIsWeb)
            InkWell(
                onTap: () {
                  dataList.clear();
                  _fakerListBloc.add(const LoadInitialPersonsListEvent());
                },
                child: const Icon(Icons.refresh)),
        ],
      ),
      child: BlocConsumer<FakerListBloc, FakerListState>(
        listener: (context, state) {
          if (state.status.isSuccess) {
            dataList.addAll(state.personDataList);
          }
          if (state.status.isLoadedNext20Item) {
            dataList.addAll(state.personDataList);
          }
        },
        builder: ((context, state) {
          if (state.status.isLoading && dataList.isEmpty) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state.status.isNoMoreData) {
            return const Center(
              child: Text("No more data to load try again later!"),
            );
          }
          if (state.status.isError) {
            return const Center(
              child: Text("Failed to load products"),
            );
          }

          return RefreshIndicator(
            onRefresh: () async {
              _fakerListBloc.add(const LoadInitialPersonsListEvent());
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                VSpace.xs,
                const Text(
                  "Please Select a Person Below",
                  style: kBodyTextStyle18BlackBold,
                  textAlign: TextAlign.center,
                ),
                VSpace.xs,
                Expanded(
                  child: ListView.builder(
                    controller: _scrollController,
                    itemCount: dataList.length +
                        (state.status.isLoadingNext20Item ? 0 : 1),
                    itemBuilder: (context, index) {
                      if (index < dataList.length) {
                        return InkWell(
                          onTap: () => _checkContents(dataList[index]),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              elevation: 3,
                              child: SizedBox(
                                height: 150,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text('Person : ${index + 1} ',
                                            style: kBodyTextStyle16BlackBold),
                                        Text(
                                            '${dataList[index].firstname} ${dataList[index].lastname}',
                                            style: kBodyTextStyle16BlackBold),
                                        Text(dataList[index].email ?? '',
                                            textAlign: TextAlign.center,
                                            style: kBodyTextStyle14BlackBold),
                                      ],
                                    ),
                                    //Fakerapi is using placeimg.com to generate its images, and because of that issues are occuring such as we cannot
                                    // render any image on our UI and some other issues in code, we tried handling the error buts cache is not able to capture it, will need for the library to be updated, fo now ignore error on log : Failed to create image decoder with message 'unimplemented'Input contained an error.
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: CachedNetworkImage(
                                        imageUrl: dataList[index].image ?? '',
                                        placeholder: (context, url) =>
                                            const CircularProgressIndicator(),
                                        errorWidget: (context, url, error) =>
                                            Image.asset(
                                          'assets/images/default_image.png',
                                          width: defaultImageWidth,
                                          height: defaultImageHeight,
                                          gaplessPlayback: true,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      } else {
                        return _buildFooter();
                      }
                    },
                  ),
                ),
                VSpace.xs,
              ],
            ),
          );
        }),
      ),
    );
  }

  Widget _buildFooter() {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Center(child: CircularProgressIndicator()),
    );
  }

  _checkContents(Persons personsData) {
    context.router.push(MainFakerContentRoute(personsData: personsData));
  }
}
