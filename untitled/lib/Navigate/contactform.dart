
import 'package:untitled/contactus.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'info.dart';


class ContactForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: ContactUsBottomAppBar(
          companyName: 'Youssef Geagea',
          textColor: Colors.white,
          backgroundColor: Colors.white,
          email: 'arak.bchaaleh@gmail.com',
          // textFont: 'Sail',
        ),

        appBar: AppBar(
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

                if(x==2){

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()), );}
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
        body: ContactUs(
            cardColor: Colors.brown,
            textColor: Colors.white,
            logo: AssetImage('assets/images/Youssef.jpg'),
            email: 'arak.bchaaleh@gmail.com',
            companyName: 'Youssef Geagea',
            companyColor: Colors.brown,
            dividerThickness: 3,
            phoneNumber: '+9613396873',
            website: 'http://arak-bchaaleh.c1.biz/',
            instagram: 'arak_bchaaleh',
          tagLine: 'Arak Bchaaleh',
          taglineColor: Colors.brown,
      ),)
    );
  }
}