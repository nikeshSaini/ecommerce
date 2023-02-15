import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../model/catlog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({Key? key, required this.item}) : assert (item !=null ),super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ListTile(
        leading: TextButton(
          onPressed: (){
            print("${item.name}  pressed");
          },
            child: Image.network(item.image)),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price}",
          style: TextStyle(color: Colors.deepPurple,),
          textScaleFactor: 1.2,
        ),
      ),
    );
  }
}
