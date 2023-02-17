import 'package:ecommerce/model/catlog.dart';
import 'package:ecommerce/screens/drawer.dart';
import 'package:ecommerce/screens/item_widget.dart';
import 'package:ecommerce/screens/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.purple.shade100,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginPage()));
            },
            icon:   Icon(Icons.logout, color: Colors.black,),),
        ],
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(Icons.menu,color: Colors.black,),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          }
        ),
        title: Center(child: Text("Catlog App" , style: TextStyle(color: Colors.black),)),
      ),
      body: Column(
        children: [
          Expanded(
            // height: 150,
            // width: double.infinity,
            child: Padding(
              padding: EdgeInsets.only(top: 10, left: 10,right: 10, bottom: 10),
              child: (CatlogModel.items !=null ||  CatlogModel.items.isNotEmpty)
                ?ListView.builder(
                  itemCount: CatlogModel.items.length,
                  itemBuilder:(context, index){
                    return ItemWidget(
                      item: CatlogModel.items[index],
                    );
                  }
              )
                  :Center(
                child: CircularProgressIndicator(color: Colors.black,),
              )
            ),
          ),
        ],
      ),
    );


  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catlogJson =
    await rootBundle.loadString("assets/files/catlog.json");
    final decodeJson = jsonDecode(catlogJson);
    final productData = decodeJson["products"];
    CatlogModel.items = List.from(productData).map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});

  }
}
