import 'package:es_hr/service/camera_service.dart';
import 'package:es_hr/service/face_detector_service.dart';
import 'package:es_hr/service/ml_service.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setupServices() {
  locator.registerLazySingleton<CameraService>(() => CameraService());
  locator
      .registerLazySingleton<FaceDetectorService>(() => FaceDetectorService());
  locator.registerLazySingleton<MLService>(() => MLService());
}
