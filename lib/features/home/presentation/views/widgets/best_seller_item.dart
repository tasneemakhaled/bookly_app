import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:bookly_app/core/utils/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(

      children: [
        SizedBox(
          height: 200,
          width: 120,
          child: Image(image: AssetImage(AssetsData.testImage))),
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
          Row(
            children:[
        Icon(FontAwesomeIcons.solidStar,color:Color(0xffFFDD4F)),
        SizedBox(width:5)
,            Text('4.8',style:Styles.textStyle16),
SizedBox(width:5),
            Text('(250)',style:Styles.textStyle14.copyWith(color:Color(0xff707070))),
          ])  
           ])
          
        
          ],
        ))  
      ],
    );
  }
}