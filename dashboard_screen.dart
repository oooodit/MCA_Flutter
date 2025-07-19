import 'package:dashboard_screen/screens/registration_screen.dart';
import 'package:flutter/material.dart';
class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("ShaadiKaro.com",
          style: TextStyle(
              fontWeight:FontWeight.w800,
            color: Colors.white
          ),),
      ),
    body: Column(
      children: [
        Row(
          children: [
            // GestureDetector(
            //   onTap: () {
            //     Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage(),));
            //   },
            //     child: dashboardButton(context,img:"assets/images/customer.png",title:"User")
            // ),  //Function Called
            dashboardButton(context,img:"assets/images/customer.png",title:"User"),
            dashboardButton(context,img:"assets/images/registration.png",title:"User List"),
          ],
        ),

        Row(
          children: [
            dashboardButton(context,img:"assets/images/heart.png",title:"Favourite"),  //Function Called
            dashboardButton(context,img:"assets/images/profile.png",title:"About Us"),
          ],
        ),
      ],
    ),
    );
  }
}


Widget dashboardButton(context,{required img,required title}){
  return Expanded( //Responsive - bhag padi dye
    child: Container(
      margin: EdgeInsets.all(8),
      // decoration: BoxDecoration(
      //     border: Border.all(width: 2),
      // ),
      height: 150, //width: 150,
      // color: Colors.yellow, //Can't be used while using box decoration

      child: Card( //Wrap around Widget - Card
        color: Colors.white,
        elevation: 4,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(70)
        ),
        child: InkWell(
          onTap: (){
            print('$title has been clicked');
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$title has been clicked!'),duration: Duration(seconds: 1),));

          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, //Column ne Center ma Lay aava mate
            children: [
              Image.asset(
                img,
                height: 60,
                width: 60,
                color: Colors.red,
              ),
              SizedBox(height: 8,), //Provides Space between text and image
              Text(title,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800),),
            ],
          ),
        ),
      ),
    ),
  );
}