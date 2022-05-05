part of 'homepage_cubit.dart';

@immutable
abstract class HomepageState {}

class HomepageInitial extends HomepageState {}

class NewsLoadingState extends HomepageState {}

class NewsSuccessfulState extends HomepageState {
  final List<News>? data;

  NewsSuccessfulState(this.data);
}
