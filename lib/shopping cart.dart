import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Shoppingcart(),
  ));
}

class Shoppingcart extends StatelessWidget {
  @override
  var nam = ["Boat", "Marshall", "JBL", "Sony", "MIVI", "Zebronics"];
  var pri = ["2000", "15000", "12000", "13000", "6000", "4000"];
  var img = [
    "https://media-ik.croma.com/prod/https://media.croma.com/image/upload/v1665445193/Croma%20Assets/Entertainment/Speakers%20and%20Media%20Players/Images/225912_0_i3hdfo.png",
    "https://www.marshallheadphones.com/on/demandware.static/-/Sites-zs-master-catalog/default/dw83552fb9/images/marshall/speakers/emberton-ii/black-and-brass/high-res/emberton-ii-black-brass-01.png",
    "https://www.harmanaudio.in/dw/image/v2/BFND_PRD/on/demandware.static/-/Sites-masterCatalog_Harman/default/dw5219c48e/JBL_BOOMBOX_2_HERO_020_x1.png?sw=535&sh=535",
    "https://www.sony.co.in/image/719f4e782a9ac27f4406ae895fc9266d?fmt=png-alpha&wid=1014&hei=396",
    "https://www.compareprix.in/images/product/large/mivi-zero-bluetooth-speaker-large.jpg",
    "https://rbzone.com/pub/media/catalog/product/cache/f6721767d779d2feba5f86857e7bb8ac/3/1/31-brio-01.jpg"
  ];
  // var units=["3","4","2","1","4","3"];

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ProductList"),
          actions: [
            Icon(Icons.shopping_cart_outlined),
            SizedBox(width: 10),
            CircleAvatar(
              minRadius: 8,
              maxRadius: 9,
              backgroundColor: Colors.red,
              child: Text("0"),
            )
          ],
        ),
        body: ListView(
          children: List.generate(
              6,
                  (index) => Card(
                color: Colors.grey,
                child: ListTile(
                  title: Text(nam[index]),
                  subtitle: Column(children: [
                    Text("\$${pri[index]}"),
                    Text("Quantity:4"),
                  ],),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(img[index]),
                  ),
                  trailing: ElevatedButton(onPressed: (){
                  },style: ElevatedButton.styleFrom(primary: Colors.black)
                      , child: Text("Add To Cart")),
                ),
              )),
        ));
  }
}