import 'package:flutter/material.dart';

class Shoes extends StatefulWidget {
  const Shoes({Key? key}) : super(key: key);

  @override
  State<Shoes> createState() => _ShoesState();
}

class _ShoesState extends State<Shoes> {
  var product_list =[
    {
      "name":"Highlander",
      "picture":"assets/images/home/shoes/img50.jpg",
      "old_price": 1299,
      "price":579,
    },
    {
      "name":"Dennis",
      "picture":"assets/images/home/shoes/img51.jpg",
      "old_price": 1849,
      "price":669,
    },
    {
      "name":"Roadster",
      "picture":"assets/images/home/shoes/img52.jpg",
      "old_price": 1849,
      "price":650,
    },
    {
      "name":"INVICTUS",
      "picture":"assets/images/home/shoes/img53.jpg",
      "old_price": 1849,
      "price":684,
    },
    {
      "name":"Dennis",
      "picture":"assets/images/home/shoes/img54.jpg",
      "old_price": 1849,
      "price":534,
    },
    {
      "name":"LOCOMOTIVE",
      "picture":"assets/images/home/shoes/img55.jpg",
      "old_price": 1849,
      "price":699,
    },
    {
      "name":"Highlander",
      "picture":"assets/images/home/shoes/img56.jpg",
      "old_price": 1299,
      "price":579,
    },
    {
      "name":"Dennis",
      "picture":"assets/images/home/shoes/img57.jpg",
      "old_price": 1849,
      "price":669,
    },
    {
      "name":"Highlander",
      "picture":"assets/images/home/shoes/img50.jpg",
      "old_price": 1299,
      "price":579,
    },
    {
      "name":"Dennis",
      "picture":"assets/images/home/shoes/img51.jpg",
      "old_price": 1849,
      "price":669,
    },
    {
      "name":"Roadster",
      "picture":"assets/images/home/shoes/img52.jpg",
      "old_price": 1849,
      "price":650,
    },
    {
      "name":"INVICTUS",
      "picture":"assets/images/home/shoes/img53.jpg",
      "old_price": 1849,
      "price":684,
    },
    {
      "name":"Dennis",
      "picture":"assets/images/home/shoes/img54.jpg",
      "old_price": 1849,
      "price":534,
    },
    {
      "name":"LOCOMOTIVE",
      "picture":"assets/images/home/shoes/img55.jpg",
      "old_price": 1849,
      "price":699,
    },
    {
      "name":"Highlander",
      "picture":"assets/images/home/shoes/img56.jpg",
      "old_price": 1299,
      "price":579,
    },
    {
      "name":"Dennis",
      "picture":"assets/images/home/shoes/img57.jpg",
      "old_price": 1849,
      "price":669,
    },
    {
      "name":"Highlander",
      "picture":"assets/images/home/shoes/img50.jpg",
      "old_price": 1299,
      "price":579,
    },
    {
      "name":"Dennis",
      "picture":"assets/images/home/shoes/img51.jpg",
      "old_price": 1849,
      "price":669,
    },
    {
      "name":"Roadster",
      "picture":"assets/images/home/shoes/img52.jpg",
      "old_price": 1849,
      "price":650,
    },
    {
      "name":"INVICTUS",
      "picture":"assets/images/home/shoes/img53.jpg",
      "old_price": 1849,
      "price":684,
    },
    {
      "name":"Dennis",
      "picture":"assets/images/home/shoes/img54.jpg",
      "old_price": 1849,
      "price":534,
    },
    {
      "name":"LOCOMOTIVE",
      "picture":"assets/images/home/shoes/img55.jpg",
      "old_price": 1849,
      "price":699,
    },
    {
      "name":"Highlander",
      "picture":"assets/images/home/shoes/img56.jpg",
      "old_price": 1299,
      "price":579,
    },
    {
      "name":"Dennis",
      "picture":"assets/images/home/shoes/img57.jpg",
      "old_price": 1849,
      "price":669,
    },
    {
      "name":"Highlander",
      "picture":"assets/images/home/shoes/img50.jpg",
      "old_price": 1299,
      "price":579,
    },
    {
      "name":"Dennis",
      "picture":"assets/images/home/shoes/img51.jpg",
      "old_price": 1849,
      "price":669,
    },
    {
      "name":"Roadster",
      "picture":"assets/images/home/shoes/img52.jpg",
      "old_price": 1849,
      "price":650,
    },
    {
      "name":"INVICTUS",
      "picture":"assets/images/home/shoes/img53.jpg",
      "old_price": 1849,
      "price":684,
    },
    {
      "name":"Dennis",
      "picture":"assets/images/home/shoes/img54.jpg",
      "old_price": 1849,
      "price":534,
    },
    {
      "name":"LOCOMOTIVE",
      "picture":"assets/images/home/shoes/img55.jpg",
      "old_price": 1849,
      "price":699,
    },
    {
      "name":"Highlander",
      "picture":"assets/images/home/shoes/img56.jpg",
      "old_price": 1299,
      "price":579,
    },
    {
      "name":"Dennis",
      "picture":"assets/images/home/shoes/img57.jpg",
      "old_price": 1849,
      "price":669,
    },
    {
      "name":"Highlander",
      "picture":"assets/images/home/shoes/img50.jpg",
      "old_price": 1299,
      "price":579,
    },
    {
      "name":"Dennis",
      "picture":"assets/images/home/shoes/img51.jpg",
      "old_price": 1849,
      "price":669,
    },
    {
      "name":"Roadster",
      "picture":"assets/images/home/shoes/img52.jpg",
      "old_price": 1849,
      "price":650,
    },
    {
      "name":"INVICTUS",
      "picture":"assets/images/home/shoes/img53.jpg",
      "old_price": 1849,
      "price":684,
    },
    {
      "name":"Dennis",
      "picture":"assets/images/home/shoes/img54.jpg",
      "old_price": 1849,
      "price":534,
    },
    {
      "name":"LOCOMOTIVE",
      "picture":"assets/images/home/shoes/img55.jpg",
      "old_price": 1849,
      "price":699,
    },
    {
      "name":"Highlander",
      "picture":"assets/images/home/shoes/img56.jpg",
      "old_price": 1299,
      "price":579,
    },
    {
      "name":"Dennis",
      "picture":"assets/images/home/shoes/img57.jpg",
      "old_price": 1849,
      "price":669,
    },

  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const Text(
          'Shopping App',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Mulish',
            fontSize: 25.0,
          ),
        ),
        backgroundColor: Colors.indigoAccent,
        centerTitle: true,
      ),
      body: GridView.builder(
          itemCount: product_list.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2
          ),
          itemBuilder: (BuildContext context, int index){
            return Single_prod(
              prod_name: product_list[index]['name'],
              prod_picture: product_list[index]['picture'],
              prod_old_price: product_list[index]['old_price'],
              prod_price: product_list[index]['price'],
            );
          }
      ),
    );
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(tag: prod_name,
        child: Material(
          child: InkWell(
            onTap: (){},
            child:  GridTile(
              footer: Column(
                children: [
                  Container(
                    color: Colors.white60,
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            prod_name,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                        Text(
                          "\Rs $prod_price",
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 40.0,
                    width: double.infinity,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 40.0,
                          width: 60.0,
                          color: Colors.red,
                          child: TextButton(
                              onPressed: (){},
                              child: const Text(
                                'BUY',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              )
                          ),
                        ),
                        IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.add_shopping_cart_outlined),
                        ),
                        IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.favorite_border_rounded),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              child: Image.asset(
                prod_picture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

