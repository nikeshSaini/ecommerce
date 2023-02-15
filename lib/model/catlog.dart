
class CatlogModel{
  static final items = [
                  Item(
                    id: 1,
                    name:"Zoro",
                    desc: "Best Swordsman",
                    price : 600000000,
                    color: "#33505a",
                    image: "http://images5.fanpop.com/image/photos/28000000/Zoro-D-roronoa-zoro-28002003-2560-1848.jpg",
                  ),
    Item(
      id: 2,
      name:"Luffy",
      desc: "Straw Hat",
      price : 1000000000,
      color: "#33505a",
      image: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.JVEfjtFjdxEWlBLVRmHhwgHaFj%26pid%3DApi&f=1&ipt=c8d1340a2d70979040e2d329d1b3d1ddf5770724161d89d4888d22990aa939b1&ipo=images",
    ),
    Item(
      id: 2,
      name:"Luffy",
      desc: "Straw Hat",
      price : 1000000000,
      color: "#33505a",
      image: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.JVEfjtFjdxEWlBLVRmHhwgHaFj%26pid%3DApi&f=1&ipt=c8d1340a2d70979040e2d329d1b3d1ddf5770724161d89d4888d22990aa939b1&ipo=images",
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

  ),
  Item(
    id: 1,
    name:"Nikesh",
    desc: "apple is good",
    price : 999,
    color: "#33505a",
    image: "http://images5.fanpop.com/image/photos/28000000/Zoro-D-roronoa-zoro-28002003-2560-1848.jpg",

  )
];