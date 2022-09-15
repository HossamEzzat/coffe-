import 'package:coffe/model/coffetile.dart';
import 'package:coffe/model/coffetype.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePa extends StatefulWidget {



  @override
  State<HomePa> createState() => _HomePaState();
}

class _HomePaState extends State<HomePa> {
  final List coffetypee=[
    ['Cuppcino',true],
    ['Latte',false],
    ['Black',false],
    ['Tea',false],
  ];
  void CoffetypeSelected(int indwx){
    setState(() {
      for(int i=0;i<coffetypee.length;i++){
        coffetypee[i][1]=false;
      }
      coffetypee[indwx][1]=true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        elevation: 0,
       leading: const Icon(Icons.menu),
       actions: const [
         Padding(
           padding: EdgeInsets.only(right: 20),
           child: Icon(Icons.person),
         )
       ],
       backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: "",
        ),
      ],

      ),
      body: Column(
        children:   [
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 25),
             child: Text(
               "Find your coffe for you",style: GoogleFonts.bebasNeue(
               fontSize: 40,fontWeight: FontWeight.bold
             ),
             ),
             ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(

              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: "find your coffe...",
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.grey.shade600
                    )
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey.shade600
                  )
                )
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: coffetypee.length,
              itemBuilder: (BuildContext context, int index) {
                return CoffeType(coffe: coffetypee[index][0], isselected: coffetypee[index][1], Ontap: (){
                  CoffetypeSelected(index);
                });
              },

            ),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
               CoffeTile(coffeimagepath:"images/nathan-dumlao-ikU3J1nr52w-unsplash.jpg", coffeName:  "Latte", coffePrice: '\$10',),
               CoffeTile(coffeimagepath:"images/nathan-dumlao-_kbLnZGKK0A-unsplash.jpg", coffeName:  "Mocka", coffePrice: '\$10',),
               CoffeTile(coffeimagepath:"images/slashio-photography-J8UWo1dnhPk-unsplash.jpg", coffeName:  "Bondk", coffePrice: '\$10',),
               CoffeTile(coffeimagepath:"images/nathan-dumlao-_kbLnZGKK0A-unsplash.jpg", coffeName:  "Latte", coffePrice: '\$10',),
               CoffeTile(coffeimagepath:"images/nathan-dumlao-ikU3J1nr52w-unsplash.jpg", coffeName:  "Latte", coffePrice: '\$10',),
               CoffeTile(coffeimagepath:"images/nathan-dumlao-ikU3J1nr52w-unsplash.jpg", coffeName:  "Latte", coffePrice: '\$10',),
              ],
            ),
          )

        ],
      ),
    );
  }
}
