import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_application_1/features/home/data/model/book_model/book_model.dart';
import 'package:flutter_application_1/features/home/data/repo/home_repo.dart';

part 'simller_books_state.dart';

class SimllerBooksCubit extends Cubit<SimllerBooksState> {
  SimllerBooksCubit(this.homeRepo) : super(SimllerBooksInitial());

  
  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimllerBooksLoading());
    var result = await homeRepo.fetchSimilarBooks(category:category );
    result.fold(
      (failure) {
        emit(SimllerBooksFailure(failure.errMessage));
      },
      (books) {
        emit(SimllerBooksSuccess(books));
      },
    );
  }
}
