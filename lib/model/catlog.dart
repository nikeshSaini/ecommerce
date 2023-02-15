
class CatlogModel{
  final items = [
Item(
  id: 1,
  name:"Nikesh",
  desc: "apple is good",
  price : 999,
  color: "#33505a",
  image: "http://images5.fanpop.com/image/photos/28000000/Zoro-D-roronoa-zoro-28002003-2560-1848.jpg",
)
  ];
}

class Item{
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;
  Item({required this.id, required this.name , required this.desc, required this.price, required this.color, required this.image});
}


final product =[
  Item(
    id: 1,
    name:"Nikesh",
    desc: "apple is good",
    price : 999,
    color: "#33505a",
    image: "http://images5.fanpop.com/image/photos/28000000/Zoro-D-roronoa-zoro-28002003-2560-1848.jpg",

  )
];