import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_button_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/liked_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
         
         CustomBookDetailsAppBar(),
         Padding(
           padding: EdgeInsets.symmetric(horizontal: width*.17),
           child: CustomBookImage(),
         ),
          Text('''The Jungle Book''',style: Styles.textStyle30.copyWith( fontFamily: kGtSectraFine,),maxLines: 2,),
          SizedBox(height: 7,),
          Opacity(
            opacity: .7,
            child: Text('Rodyard Kipling',style:Styles.textStyle18)), 
            SizedBox(height: 10,) ,   
             BookRating(mainAxisAlignment: MainAxisAlignment.center,),
             SizedBox(height: 10,) ,   
            BooksButtonAction(),
             SizedBox(height: 7,) ,  
            Align(
              alignment: Alignment.centerLeft,
              child: Text('You can also like',style: Styles.textStyle18,)),
               SizedBox(height: 7,) ,  
            LikedBooksListView(),
        ],),
      ),
    );
  }
}