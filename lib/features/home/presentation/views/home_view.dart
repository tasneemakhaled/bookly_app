import 'package:bookly_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: Image(image:AssetImage(AssetsData.logo) ),
      //   actions: [
      //     Icon(Icons.search),
      //   ],
      // ),
      body: HomeViewBody(),
    );
  }
}
