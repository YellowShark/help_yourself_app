import 'package:help_yourself_app/ui/base/base_view_model.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'video_recommendations_store.g.dart';

abstract class VideoRecommendationsViewModel extends BaseViewModel {
}

@Injectable(as: VideoRecommendationsViewModel)
class VideoRecommendationsStore = _VideoRecommendationsStore with _$VideoRecommendationsStore;

abstract class _VideoRecommendationsStore with Store implements VideoRecommendationsViewModel {

}