import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'home.dart';
import 'contactform.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();

}
class _HomeState extends State< Home > {
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.bottomRight,
              colors: <Color>[
                Colors.white,
                Colors.brown

              ],
            ),
          ),
        ),
        automaticallyImplyLeading: false,

        title: Row(

          children: [
            Image.asset(
              'assets/images/czc.jpg',
              fit: BoxFit.cover,
              height: 60,),

            Container(
              padding: const EdgeInsets.all(20.0),
              child: Text('Toast to Lebanon',
                style: Theme
                    .of(context)
                    .textTheme
                    .headline1,),),

          ],

        ), toolbarHeight: 60,
        actions:[
          PopupMenuButton(
            onSelected: (x) {
              if(x==0){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()), );}
              if(x==1){

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactForm()), );}



            },
            icon:Icon(Icons.menu_rounded,color:Colors.white),
            color: Colors.white,
            itemBuilder:(context)=>[
              PopupMenuItem<int>(
                value:0,
                child:Row(
                  children:[
                    Icon(Icons.home,color:Colors.brown,size: 20,),
                    Text(" Home",style:TextStyle(color:Colors.brown),),

                  ],),),
              PopupMenuItem<int>(
                value:1,
                child:Row(
                  children:[
                    Icon(Icons.contacts_rounded,color:Colors.brown,size: 20,),
                    Text(" Contact us",style:TextStyle(color:Colors.brown),),

                  ],),),
              PopupMenuItem<int>(
                value:2,
                child:Row(
                  children:[
                    Icon(Icons.info_rounded,color:Colors.brown,size: 20,),
                    Text(" Info",style:TextStyle(color:Colors.brown),),

                  ],),),
              PopupMenuItem<int>(
                value:3,
                child:Row(
                  children:[
                    Icon(Icons.settings_rounded,color:Colors.brown,size: 20,),
                    Text(" Settings",style:TextStyle(color:Colors.brown),),

                  ],),),

            ],

          )
        ],

      ),
        body:
        ListView(
          children: [

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                height: 280,
                width: 250,
                child: Container(
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage(
                        'assets/images/Bchealeh-1.jpg',),
                      fit: BoxFit.fill, //NetworkImage
                    ),
                    border: Border.all(
                        width: 4.0,
                        style: BorderStyle.none), //Border.all

                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12.0),
                      topRight: Radius.circular(12.0),
                      bottomLeft: Radius.circular(12.0),
                      bottomRight: Radius.circular(12.0),
                    ),

                    /************************************/
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(
                          0.0,
                          0.0,
                        ),
                        blurRadius: 20.0,
                        spreadRadius: 20.0,
                      ), //BoxShadow
                      BoxShadow(
                        color: Colors.brown,
                        offset: const Offset(0.0, 0.0),
                        blurRadius: 10.0,
                        spreadRadius: 10.0,
                      ), //BoxShadow
                    ],

                  ),
                  //BoxDecoration
                ), //Container
              ), //SizedBox
            ),
            Chip(
                avatar: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: const Icon(Icons.home_outlined,color: Colors.brown,),
                ),
                label: const Text('Bchaaleh',style: TextStyle(color: Colors.white),),backgroundColor: Colors.brown
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                height: 250,
                width: 250,
                child: Container(
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage(
                        'assets/images/WhatsApp Image 2021-08-11 at 6.59.26 PM.jpeg',),
                      fit: BoxFit.fill, //NetworkImage
                    ),
                    border: Border.all(
                        width: 4.0,
                        style: BorderStyle.none), //Border.all

                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12.0),
                      topRight: Radius.circular(12.0),
                      bottomLeft: Radius.circular(12.0),
                      bottomRight: Radius.circular(12.0),
                    ),

                    /************************************/
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(
                          0.0,
                          0.0,
                        ),
                        blurRadius: 10.0,
                        spreadRadius: 10.0,
                      ), //BoxShadow
                      BoxShadow(
                        color: Colors.brown,
                        offset: const Offset(0.0, 0.0),
                        blurRadius: 10.0,
                        spreadRadius:10.0,
                      ), //BoxShadow
                    ],

                  ),
                  //BoxDecoration
                ), //Container
              ), //SizedBox
            ),
            Chip(
                avatar: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: const Icon(Icons.agriculture_outlined,color: Colors.brown),
                ),
                label: const Text('From the hands of our Ancestors',style: TextStyle(color: Colors.white),),backgroundColor: Colors.brown
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                height: 220,
                width: 250,
                child: Container(
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage(
                        'assets/images/soil-grape.jpg',),
                      fit: BoxFit.fill, //NetworkImage
                    ),
                    border: Border.all(
                        width: 4.0,
                        style: BorderStyle.none), //Border.all

                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12.0),
                      topRight: Radius.circular(12.0),
                      bottomLeft: Radius.circular(12.0),
                      bottomRight: Radius.circular(12.0),
                    ),

                    /************************************/
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(
                          0.0,
                          0.0,
                        ),
                        blurRadius:10.0,
                        spreadRadius: 10.0,
                      ), //BoxShadow
                      BoxShadow(
                        color: Colors.brown,
                        offset: const Offset(0.0, 0.0),
                        blurRadius: 10.0,
                        spreadRadius: 10.0,
                      ), //BoxShadows
                    ],

                  ),
                  //BoxDecoration
                ), //Container
              ), //SizedBox
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.white,
                child: const Icon(Icons.grain,color: Colors.brown),
              ),
              label: const Text('Fresh Grapes',style: TextStyle(color: Colors.white),),backgroundColor: Colors.brown,
            ),
          ],
        )


    );


  }
}