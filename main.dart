import 'package:fifth/widget/cityCard.dart';
import 'package:flutter/material.dart';

main(){
  runApp(sifat());
}
class sifat extends StatefulWidget {
  const sifat({super.key});

  @override
  State<sifat> createState() => _sifatState();
}

class _sifatState extends State<sifat> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ok",
      home:  loser(),

    );
  }
}
class loser extends StatefulWidget {
  const loser({super.key});

  @override
  State<loser> createState() => _jaanState();
}

class _jaanState extends State<loser> {
  int counter = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Easy Store",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
        backgroundColor: Colors.green,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(counter.toString(),
style: TextStyle(fontSize: 50,color: Colors.black),
            ),
          Row(
            children: [

              SizedBox(
                width:180 ,

              child: ElevatedButton(onPressed: (){

                setState(() {
                  counter++;

                });

                print("counter: $counter");
              }, child: Text("+",style: TextStyle(fontSize: 60),)),
              ),
              SizedBox(
                width: 180,


             child:  ElevatedButton(onPressed: (){
               setState(() {
                 counter--;

               });

               print("counter: $counter");
             }, child: Text("-",style: TextStyle(fontSize: 60))),
              ),
            ],

          ),

SizedBox(height: 50,),

    SingleChildScrollView(
scrollDirection: Axis.horizontal,

  child:  Row(
      children: [
        cityCard(image: 'https://images.pexels.com/photos/417074/pexels-photo-417074.jpeg', city: '1',),
        SizedBox(width: 10,),
        cityCard(image: 'https://images.pexels.com/photos/417074/pexels-photo-417074.jpeg', city: '2',),
        SizedBox(width: 10,),
        cityCard(image: 'https://images.pexels.com/photos/417074/pexels-photo-417074.jpeg', city: '3',),
        SizedBox(width: 10,),
        cityCard(image: 'https://images.pexels.com/photos/417074/pexels-photo-417074.jpeg', city: '4',),
        SizedBox(width: 10,),


      ],
    ),
    ),


          ],

        ),
      ),

    );
  }
}

