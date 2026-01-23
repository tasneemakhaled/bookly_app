import 'package:bookly_app/features/home/presentation/views/widgets/liked_books_list_view.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Align(
              alignment: Alignment.centerLeft,
              child: Text('You can also like',style: Styles.textStyle18,)),
              
            LikedBooksListView(),
      ],
    );
  }
}