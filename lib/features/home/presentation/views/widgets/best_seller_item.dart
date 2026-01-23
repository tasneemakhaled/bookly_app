import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:go_router/go_router.dart';
class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: (){
            GoRouter.of(context).push(AppRouter.kBookDetails);
          },
          child: SizedBox(
            height: 200,
            width: 120,
            child: Image(image: AssetImage(AssetsData.testImage))),
        ),
      Expanded(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          SizedBox(
            width: MediaQuery.of(context).size.width*.5,
            child: Text('''Harry Potter and the Goblet of Fire''',style: Styles.textStyle20.copyWith( fontFamily: kGtSectraFine,),maxLines: 2,)),
        Text('J.K. Rowling',style:Styles.textStyle14),    
           Row(
            children:[
            Text('19.99 €',style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold)),
            Spacer(),
            BookRating(), 
           ]),
          
        
          ],
        ))  
      ],
    );
  }
}