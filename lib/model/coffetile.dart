import 'package:flutter/material.dart';
class CoffeTile extends StatelessWidget {

  final String coffeimagepath;
  final String coffeName;
  final String coffePrice;


  const CoffeTile({required this.coffeimagepath, required this.coffeName, required this.coffePrice});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 25,bottom: 25),
      child: Container(
        padding: EdgeInsets.all(10),
        width: 200,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black54,

        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(coffeimagepath)

            ),
           Padding(
             padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 8),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text(
                  coffeName,style: TextStyle(
                   fontSize: 20,
                 ),
                 ),
                 SizedBox(height: 4,),
                 Text(
                   "With Milk",
                   style: TextStyle(
                       color: Colors.white70
                   ),
                 ),
               ],
             ),
           ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(4)
                      ),
                      child: Icon(Icons.minimize),
                  ),
                   Text(
                    coffePrice,
                  ),
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(4)
                    ),
                      child: Icon(Icons.add))
                ],
              ),
            )
          ],
        ),
      ),
    );

  }
}
