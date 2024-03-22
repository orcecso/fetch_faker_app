import 'package:faker_fectcher_exam/models/persons_model/persons_model.dart';
import 'package:faker_fectcher_exam/repositories/server.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'faker_list_event.dart';
part 'faker_list_state.dart';

class FakerListBloc extends Bloc<FakerListEvent, FakerListState> {
  final int _initialItemsPerPage = 10;
  final int _itemsPerPageNext = 20;
  final PersonsRepository _personsRepository = PersonsRepository();
  int _loadAttempts = 0;

  FakerListBloc() : super(FakerListState.initial()) {
    on<FakerListEvent>(_onInit);
    on<LoadInitialPersonsListEvent>(_onLoadInitial);
    on<LoadNext20PersonsListEvent>(_loadNext20Data);
  }

  Future<void> _onInit(
    FakerListEvent event,
    Emitter<FakerListState> emit,
  ) async {
    _personsRepository.clearLoadedData();
    _loadAttempts = 0;
    emit(const FakerListState(
      status: FakerListStatus.loading,
      personDataList: [],
    ));
  }

  Future<void> _onLoadInitial(
    LoadInitialPersonsListEvent event,
    Emitter<FakerListState> emit,
  ) async {
    _personsRepository.clearLoadedData();

    emit(const FakerListState(
      status: FakerListStatus.loading,
      personDataList: [],
    ));
    _loadAttempts++;
    List<Persons> personsData =
        await _personsRepository.fetchPersons(1, _initialItemsPerPage);

    if (personsData.isEmpty && _loadAttempts >= 4) {
      emit(const FakerListState(
        status: FakerListStatus.noMoreData,
        personDataList: [],
      ));
      return;
    } else if (personsData.isEmpty) {
      emit(FakerListState.initial());
      return;
    }
    emit(state.copyWith(
        personData: personsData, status: FakerListStatus.success));
  }

  Future<void> _loadNext20Data(
    LoadNext20PersonsListEvent event,
    Emitter<FakerListState> emit,
  ) async {
    emit(state.copyWith(status: FakerListStatus.loadingNext20Items));

    try {
      final int nextPageKey =
          (state.personDataList.length ~/ _initialItemsPerPage) + 1;

      final newItems =
          await _personsRepository.fetchPersons(nextPageKey, _itemsPerPageNext);

      if (newItems.isEmpty) {
        emit(state.copyWith(status: FakerListStatus.allLoaded));
      } else {
        _loadAttempts++;
        final List<Persons> updatedPersonsList = List.of(newItems)
          ..addAll(state.personDataList);
        emit(state.copyWith(
            personData: updatedPersonsList,
            status: FakerListStatus.loadedNew20Items));
      }
    } catch (e) {
      emit(state.copyWith(status: FakerListStatus.error));
    }
  }
}
