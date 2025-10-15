part of 'simller_books_cubit.dart';

sealed class SimllerBooksState extends Equatable {
  const SimllerBooksState();

  @override
  List<Object> get props => [];
}

final class SimllerBooksInitial extends SimllerBooksState {}

final class SimllerBooksLoading extends SimllerBooksState {
  SimllerBooksLoading();
}

final class SimllerBooksSuccess extends SimllerBooksState {
  final List<BookModel> books;

  const SimllerBooksSuccess(this.books);
  
}

final class SimllerBooksFailure extends SimllerBooksState {
  final String errMessage;

  const SimllerBooksFailure(this.errMessage);
}
