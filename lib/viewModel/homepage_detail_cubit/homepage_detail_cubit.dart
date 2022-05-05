import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'homepage_detail_state.dart';

class HomepageDetailCubit extends Cubit<HomepageDetailState> {
  HomepageDetailCubit() : super(HomepageDetailInitial());
}
