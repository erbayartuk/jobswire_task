import 'package:jobswire_bootcamp/model/newsModel.dart';

abstract class IFutureService {
  Future<NewsModel> getNews();
}
