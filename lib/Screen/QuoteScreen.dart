import 'package:flutter/material.dart';

class NotificatinScreen extends StatefulWidget {
  const NotificatinScreen({super.key});

  @override
  State<NotificatinScreen> createState() => _NotificatinScreenState();
}

class _NotificatinScreenState extends State<NotificatinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
       body: Column(
           children: [
             Text('Get update on your ',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
             SizedBox(width:10,),
             Text('order status  ',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
             SizedBox(width: 20,),
             Text('Allow push notification to get real-time ',style: TextStyle(fontSize: 20),),
             Text('updates on your order status',style: TextStyle(fontSize: 20),),
             Row(
               children: [
                 Container(
                   margin: EdgeInsets.only(top: 30,left: 30,right: 30),
                   height: 400,
                   width: 350,
                   decoration: BoxDecoration(
                     color: Colors.white,
                     image: DecorationImage(
                       image: AssetImage('Assest/flower-4905417_1920.jpg'),
                       fit: BoxFit.cover,
                     ),
                   ),
                 ),
               ],
             ),
             Container(
               margin: EdgeInsets.only(top: 30,right: 15,left: 15),
               height: 60,
               width: 360,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(15),
                 color: Colors.red,
               ),
               child: TextButton(
                 onPressed: () => showDialog<String>(
                   context: context,
                   builder: (BuildContext context) => AlertDialog(
                     title: Text('Allow Swiggy to send you notification?'),
                     actions: [
                       Row(
                         children: [
                           TextButton(onPressed: () {
                             Navigator.of(context).pushNamed('/');
                           }, child: Text('Allow ')),
                           TextButton(onPressed: () {
                             Navigator.of(context).pop();
                           }, child: Text('Dont Allow '))
                         ],
                       )
                     ],
                   ),
                 ),
                 child:  Text('Turn on Notification',style: TextStyle(fontSize: 20,color: Colors.white),),
               ),
               
             ),
             SizedBox(height: 10,),
             TextButton(onPressed:() {
               Navigator.of(context).pushNamed('/');
             }, child: Text('Not now ',style: TextStyle(fontSize: 20),),)
           ],
       ),
    );
  }
}
