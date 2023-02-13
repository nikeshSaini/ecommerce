import 'package:ecommerce/screens/login_page.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            color: Colors.purple.shade300,
            child: Column(
              children: [
                SizedBox(height: 50,),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: NetworkImage("http://images5.fanpop.com/image/photos/28000000/Zoro-D-roronoa-zoro-28002003-2560-1848.jpg"),
                          fit: BoxFit.cover)
                  ),
                ),
                SizedBox(height: 10,),
                Text("Name", style:TextStyle(
                  color: Colors.white
                ),),
                SizedBox(height: 10,),


              ],
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: ListTile(
              leading:Icon(Icons.home) ,
              title :Text("Home"),
            ),
          ),
          ListTile(
            leading:Icon(Icons.settings) ,
            title :Text("Setting"),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()));
            },
            child: ListTile(
              leading:Icon(Icons.logout) ,
              title :Text("Logout"),
            ),
          ),
        ],
      ),
    );
  }
}
