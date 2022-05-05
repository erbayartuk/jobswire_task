import 'package:bloc/bloc.dart';
import 'package:jobswire_bootcamp/model/newsModel.dart';
import 'package:jobswire_bootcamp/service/futureService.dart';
import 'package:meta/meta.dart';

part 'homepage_state.dart';

class HomepageCubit extends Cubit<HomepageState> {
  HomepageCubit() : super(HomepageInitial()) {
    emit(NewsLoadingState());
  }

  FutureService _futureService = FutureService();

  Future<void> getNewsData() async {
    NewsModel newsData = await _futureService.getNews();
    if (newsData.success == true) {
      emit(NewsSuccessfulState(newsData.result));
    }
  }
}
