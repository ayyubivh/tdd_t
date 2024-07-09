import 'package:flutter/material.dart';

class ExamLinkCard extends StatelessWidget {
  const ExamLinkCard({super.key,required this.isRegistered,required this.title,required this.date,required this.onPress});

  final bool isRegistered;
  final String title;
  final String date;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
     onTap: onPress,
      child: Container(
        // height: 0,
        margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.6),
              blurRadius: 5.0,
            ),
          ],
        ),
        child: ListTile(
          title:  Text(title,style: const TextStyle(fontSize: 17,fontWeight: FontWeight.w600),),
          subtitle:Row(
            children: [
              Text(isRegistered ? 'Exam Date : ' : 'Last Date To Apply : ',style: const TextStyle(fontSize: 13,fontWeight: FontWeight.w400),),
               Text(date,style: const TextStyle(fontSize: 13,fontWeight: FontWeight.w600),),
            ],
          ),
          trailing: const Icon(Icons.arrow_forward_ios_outlined),
        ) ,
      ),
    );
  }
}
