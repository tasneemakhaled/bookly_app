import 'package:bookly_app/features/home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:flutter/material.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context,index){
      return FeaturedListViewItem();
    });
  }
}