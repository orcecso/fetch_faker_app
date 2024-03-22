part of 'faker_list_bloc.dart';

enum FakerListStatus {
  initial,
  loading,
  success,
  loadingNext20Items,
  loadedNew20Items,
  allLoaded,
  noMoreData, //this will be 4th attempt
  error;

  bool get isInitial => this == initial;
  bool get isLoading => this == loading;
  bool get isSuccess => this == success;
  bool get isLoadingNext20Item => this == loadingNext20Items;
  bool get isLoadedNext20Item => this == loadedNew20Items;
  bool get isAllLoaded => this == allLoaded;
  bool get isNoMoreData => this == noMoreData;
  bool get isError => this == error;
}

class FakerListState extends Equatable {
  final FakerListStatus status;

  final List<Persons> personDataList;

  const FakerListState({
    required this.status,
    required this.personDataList,
  });

  factory FakerListState.initial() {
    return const FakerListState(
      status: FakerListStatus.initial,
      personDataList: [],
    );
  }

  FakerListState copyWith({
    FakerListStatus? status,
    List<Persons>? personData,
  }) {
    return FakerListState(
      status: status ?? this.status,
      personDataList: personData ?? personDataList,
    );
  }

  @override
  List<Object?> get props => [personDataList, status];
}
