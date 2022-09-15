import 'package:flutter/material.dart';

class CoffeType extends StatelessWidget {
  late final String coffe;
 final  bool isselected;
 final VoidCallback Ontap;

   CoffeType({required this.coffe, required this.isselected, required this.Ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: Ontap,
      child: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Text("$coffe"
        ,style:  TextStyle(
            fontSize: 18,fontWeight: FontWeight.bold,
            color: isselected?Colors.orange:Colors.white,
          ),),
      ),
    );
  }
}
