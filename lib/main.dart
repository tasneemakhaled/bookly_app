import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/data/repos/homr_repo_impl.dart';
import 'package:bookly_app/features/home/presentation/view_models/cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/view_models/cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
  BlocProvider(create: (context){
 return FeaturedBooksCubit( getIt.get<HomeRepoImpl>())..fetchFeaturedBooks() ;
  }),
    BlocProvider(create: (context){
 return NewestBooksCubit( getIt.get<HomeRepoImpl>())..fetchNewestBooks() ;
  }),
  
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: primaryColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
        // home: SplashView(),
      ),
    );
    // return GetMaterialApp(home: SplashView());
  }
}

// final router=GoRouter(routes: [
// GoRoute(path: '/',builder:(context, state) => const SplashView(),)
// ]);

// use get package (getx) for navigation
// single tone pattern dependency injection get it package
