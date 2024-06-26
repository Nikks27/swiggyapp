import 'package:flutter/material.dart';

class Addlocation extends StatefulWidget {
  const Addlocation({super.key});

  @override
  State<Addlocation> createState() => _AddlocationState();
}

class _AddlocationState extends State<Addlocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // appBar: AppBar(),
      body: Padding(
        padding:  EdgeInsets.only(bottom: 200),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 28,bottom: 20,top: 70),
              child: Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_outlined,
                        size: 30,
                        color: Colors.black,
                      ),
                  ),
                  Text('enter your area or apartment name',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            Container(
              height: 50,
              width: 360,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1, color: Colors.grey),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.grey,
                    ),
                    Text(
                      'Try jp Nagar, Siri Gardenia,etc.',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(onTap: () {
              Navigator.of(context).pushNamed('/');
            },
              child: Container(
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Row(
                     children: [
                       Icon(Icons.airplanemode_active,color: Colors.orange,),
                       Text('Use my current location',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.orange),),
                     ],
                ),
              ),
            ),
            InkWell(onTap: () {
              Navigator.of(context).pushNamed('/');
            },
              child: Container(
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.add,color: Colors.orange,),
                      Text('Add new address',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.orange),),
                    ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(right: 220),
              child: Text('SAVED ADDRESS'),
            ),
            SizedBox(height: 20,),
            Container(
                height: 70,
                width: 420,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Icon(Icons.home),
                    Text('Home\n',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    Text('276,maa Anandi Township, deladva Gam, Surat'),
                    Icon(Icons.more_vert_rounded),
                  ],
                ),
            ),
          ],
        ),
      ),
    );
  }
}
