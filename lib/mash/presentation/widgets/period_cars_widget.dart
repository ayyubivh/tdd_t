

import 'package:flutter/material.dart';

class PeriodCard extends StatelessWidget {
  const PeriodCard({super.key,required this.periodNumber, required this.time,required this.subjectName });

  final String periodNumber;
  final String time;
  final String subjectName;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.all(10),
      child: AnimatedContainer(
        duration: const Duration(microseconds: 300),
        curve: Curves.easeIn,
        // height: size.height * 0.21,
        width: size.width,
        decoration: BoxDecoration(
            boxShadow:  const [BoxShadow(
              color: Colors.grey,
              blurRadius: 5.0,
            ),],
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Expanded(
                  flex: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      color: Colors.purple.shade100,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('Period $periodNumber',style: const TextStyle(fontSize: 20),),
                              Text(time,style: const TextStyle(fontSize: 14),)
                            ],
                          ),
                        ),
                      ),
                    ),
                  )),
              Expanded(
                  flex: 4,
                  child: ListTile(
                    title: Text(subjectName,style: const TextStyle(fontSize: 30,fontWeight: FontWeight.w600),),
                    subtitle: const Text('Info'),
                  ))],
          ),
        ),
      ),
    );
  }
}
