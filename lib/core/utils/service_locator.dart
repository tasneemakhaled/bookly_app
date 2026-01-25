import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/repos/homr_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

// Create a global instance (or use GetIt.instance)
final getIt = GetIt.instance;
void setupServiceLocator(){
    getIt.registerSingleton<ApiService>(ApiService(Dio()));
    getIt.registerSingleton<HomrRepoImpl>(HomrRepoImpl(getIt.get<ApiService>()));
}

// تجنب اني اعمل نسخ كتير من نفس الكلاس وكمان اي تغيير يسمع معايا في كل حتة dependency injection singlr tone pattern
// تجنب استخدام الطريقة دي مع الكيوبيت عسان الكيوبيت كده مش هيتقفل علي مدار التطبيق لكن نستخدم عادي البلوك بروفايدر