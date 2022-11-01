import 'package:flutter/material.dart';

class Tshirt extends StatefulWidget {
  const Tshirt({Key? key}) : super(key: key);

  @override
  State<Tshirt> createState() => _TshirtState();
}

class _TshirtState extends State<Tshirt> {

  var product_list =[
    {
      "name":"Highlander",
      "picture":"assets/images/home/tshirt/img28.jpg",
      "old_price": 1299,
      "price":284,
    },
    {
      "name":"Dennis",
      "picture":"assets/images/home/tshirt/img29.jpg",
      "old_price": 1849,
      "price":324,
    },
    {
      "name":"Roadster",
      "picture":"assets/images/home/tshirt/img30.jpg",
      "old_price": 1849,
      "price":344,
    },
    {
      "name":"Dennis",
      "picture":"assets/images/home/tshirt/img31.jpg",
      "old_price": 1849,
      "price":299,
    },
    {
      "name":"Roadster",
      "picture":"assets/images/home/tshirt/img32.jpg",
      "old_price": 1849,
      "price":319,
    },
    {
      "name":"Roadster",
      "picture":"assets/images/home/tshirt/img33.jpg",
      "old_price": 1849,
      "price":349,
    },
    {
      "name":"Highlander",
      "picture":"assets/images/home/tshirt/img28.jpg",
      "old_price": 1299,
      "price":284,
    },
    {
      "name":"Dennis",
      "picture":"assets/images/home/tshirt/img29.jpg",
      "old_price": 1849,
      "price":324,
    },
    {
      "name":"Roadster",
      "picture":"assets/images/home/tshirt/img30.jpg",
      "old_price": 1849,
      "price":344,
    },
    {
      "name":"Dennis",
      "picture":"assets/images/home/tshirt/img31.jpg",
      "old_price": 1849,
      "price":299,
    },
    {
      "name":"Roadster",
      "picture":"assets/images/home/tshirt/img32.jpg",
      "old_price": 1849,
      "price":319,
    },
    {
      "name":"Roadster",
      "picture":"assets/images/home/tshirt/img33.jpg",
      "old_price": 1849,
      "price":349,
    },
    {
      "name":"Highlander",
      "picture":"assets/images/home/tshirt/img28.jpg",
      "old_price": 1299,
      "price":284,
    },
    {
      "name":"Dennis",
      "picture":"assets/images/home/tshirt/img29.jpg",
      "old_price": 1849,
      "price":324,
    },
    {
      "name":"Roadster",
      "picture":"assets/images/home/tshirt/img30.jpg",
      "old_price": 1849,
      "price":344,
    },
    {
      "name":"Dennis",
      "picture":"assets/images/home/tshirt/img31.jpg",
      "old_price": 1849,
      "price":299,
    },
    {
      "name":"Roadster",
      "picture":"assets/images/home/tshirt/img32.jpg",
      "old_price": 1849,
      "price":319,
    },
    {
      "name":"Roadster",
      "picture":"assets/images/home/tshirt/img33.jpg",
      "old_price": 1849,
      "price":349,
    },
    {
      "name":"Highlander",
      "picture":"assets/images/home/tshirt/img28.jpg",
      "old_price": 1299,
      "price":284,
    },
    {
      "name":"Dennis",
      "picture":"assets/images/home/tshirt/img29.jpg",
      "old_price": 1849,
      "price":324,
    },
    {
      "name":"Roadster",
      "picture":"assets/images/home/tshirt/img30.jpg",
      "old_price": 1849,
      "price":344,
    },
    {
      "name":"Dennis",
      "picture":"assets/images/home/tshirt/img31.jpg",
      "old_price": 1849,
      "price":299,
    },
    {
      "name":"Roadster",
      "picture":"assets/images/home/tshirt/img32.jpg",
      "old_price": 1849,
      "price":319,
    },
    {
      "name":"Roadster",
      "picture":"assets/images/home/tshirt/img33.jpg",
      "old_price": 1849,
      "price":349,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            child: GridTile(
              footer: Container(
                height: 60.0,
                color: Colors.white60,
                child: ListTile(
                  leading: Text(
                    prod_name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  title: Text(
                    "\Rs $prod_price",
                    style:const TextStyle(
                      fontSize: 15.0,
                      color: Colors.red,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subtitle: Text(
                    "\Rs $prod_old_price",
                    style:const TextStyle(
                      color: Colors.black54,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ),
              ),
              child: Image.asset(
                prod_picture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );;
  }
}

