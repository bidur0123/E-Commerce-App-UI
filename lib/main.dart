import 'package:flutter/material.dart';
import 'package:shopping_app/pages/product/jewellery.dart';
import 'package:shopping_app/pages/product/shirt.dart';
import 'package:shopping_app/pages/product/tshirt.dart';
import 'package:shopping_app/pages/product/girlkurti.dart';
import 'package:shopping_app/pages/product/girldress.dart';
import 'package:shopping_app/pages/product/shoes.dart';
import 'package:shopping_app/pages/product/jewellery.dart';
import 'package:shopping_app/pages/product/bedsheet.dart';
import 'package:shopping_app/pages/product/accesseries.dart';
import 'package:shopping_app/pages/product/beautykit.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
        home:  HomePage(),
        debugShowCheckedModeBanner: false
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  final pages = [
    const Home(),
    const Category(),
    const Cart(),
    const Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: pages[pageIndex],
        bottomNavigationBar: buildMyNavBar(context),
      ),
      debugShowCheckedModeBanner: false,
    );
  }


  buildMyNavBar(BuildContext context){
    return Container(
      height: 70,
      color: Colors.indigoAccent,
      child:Column(
      children:[
        Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              onPressed: (){
                setState(() {
                  pageIndex=0;
                });
              },
              icon: pageIndex ==0
                 ?const Icon(
              Icons.home_filled,
              color: Colors.white,
              size: 35,
         )
              : const Icon(
            Icons.home_outlined,
            color: Colors.white,
            size: 35,
          ),
          ),
          IconButton(
            onPressed: (){
              setState(() {
                pageIndex=1;
              });
            },
            icon: pageIndex ==1
                ?const Icon(
              Icons.widgets,
              color: Colors.white,
              size: 35,
            )
                : const Icon(
              Icons.widgets_outlined,
              color: Colors.white,
              size: 35,
            ),
          ),
          IconButton(
            onPressed: (){
              setState(() {
                pageIndex=2;
              });
            },
            icon: pageIndex ==2
                ?const Icon(
              Icons.shopping_cart,
              color: Colors.white,
              size: 30,
            )
                : const Icon(
              Icons.shopping_cart_outlined,
              color: Colors.white,
              size: 35,
            ),
          ),
          IconButton(
            onPressed: (){
              setState(() {
                pageIndex=3;
              });
            },
            icon: pageIndex ==3
                ?const Icon(
              Icons.account_circle_rounded,
              color: Colors.white,
              size: 30,
            )
                : const Icon(
              Icons.account_circle_outlined,
              color: Colors.white,
              size: 35,
            ),
          ),
        ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Text(
                'Home',
              style: TextStyle(
                fontFamily: 'Mulish',
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
             Text (
                'Category',
                   style: TextStyle(
                   fontFamily: 'Mulish',
                   fontWeight: FontWeight.bold,
                   color: Colors.white,
               ),
            ),
            Text(
               'Cart',
              style: TextStyle(
                  fontFamily: 'Mulish',
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
           ),
             Text(
              'Account',
               style: TextStyle(
                   fontFamily: 'Mulish',
                 fontWeight: FontWeight.bold,
                 color: Colors.white,
               ),
           ),
          ],
        ),
      ],
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void tmpFunction(){}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title:const Text(
        'Shopping App',
        style: TextStyle(
          color: Colors.white,
          fontSize: 25.0,
          fontFamily:'Mulish',
          fontWeight: FontWeight.bold,
      ),
    ),
          actions: [
            IconButton(
                onPressed: (){},
                icon:Icon(Icons.search),
            ),
            IconButton(
              onPressed: (){},
              icon:Icon(Icons.notifications),
            ),
          ],
          centerTitle: true,
          backgroundColor: Colors.indigoAccent,
        ),
       drawer:const  MyDrawer(),
       body: SingleChildScrollView(
         scrollDirection: Axis.vertical,
         child: Column (
           children: [
           SingleChildScrollView(
             scrollDirection: Axis.horizontal,
             child: Row(
               children: [
                 // GestureDetector(
                 //   onTap: tmpFunction,
                 //   child: Image.asset(
                 //     'assets/images/home/top/img1.jpg',
                 //     //  width: double.infinity,
                 //     // fit: BoxFit.cover,
                 //     width: 100.0, height: 125.0,
                 //   ),
                 // ),
                 // InkWell(
                 //   onTap: () {},
                 //   child: Ink.image(
                 //     image: AssetImage('assets/images/home/top/img1.jpg'),
                 //     fit: BoxFit.cover,
                 //     width: 100.0, height: 125.0,
                 //   ),
                 // ),
                 InkWell(
                   onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=> Shirt()));
                   },
                   child: Ink.image(
                     image: AssetImage('assets/images/home/top/img2.jpg'),
                     fit: BoxFit.cover,
                     width: 100.0, height: 125.0,
                   ),
                 ),
                 InkWell(
                   onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=> Girlkurti()));
                   },
                   child: Ink.image(
                     image: AssetImage('assets/images/home/top/img3.jpg'),
                     fit: BoxFit.cover,
                     width: 100.0, height: 125.0,
                   ),
                 ),
                 InkWell(
                   onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=> Girldress()));
                   },
                   child: Ink.image(
                     image: AssetImage('assets/images/home/top/img4.jpg'),
                     fit: BoxFit.cover,
                     width: 100.0, height: 125.0,
                   ),
                 ),
                 InkWell(
                   onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=> Accesseries()));
                   },
                   child: Ink.image(
                     image: AssetImage('assets/images/home/top/img5.jpg'),
                     fit: BoxFit.cover,
                     width: 100.0, height: 125.0,
                   ),
                 ),
                 // InkWell(
                 //   onTap: () {
                 //     Navigator.push(context, MaterialPageRoute(builder: (context)=> Shoes()));
                 //   },
                 //   child: Ink.image(
                 //     image: AssetImage('assets/images/home/top/img6.jpg'),
                 //     fit: BoxFit.cover,
                 //     width: 100.0, height: 125.0,
                 //   ),
                 // ),
                 InkWell(
                   onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=> Accesseries()));
                   },
                   child: Ink.image(
                     image: AssetImage('assets/images/home/top/img7.jpg'),
                     fit: BoxFit.cover,
                     width: 100.0, height: 125.0,
                   ),
                 ),
                 InkWell(
                   onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=> Bedsheet()));
                   },
                   child: Ink.image(
                     image: AssetImage('assets/images/home/top/img8.jpg'),
                     fit: BoxFit.cover,
                     width: 100.0, height: 125.0,
                   ),
                 ),
                 // InkWell(
                 //   onTap: () {
                 //     Navigator.push(context, MaterialPageRoute(builder: (context)=> Bedsheet()));
                 //   },
                 //   child: Ink.image(
                 //     image: AssetImage('assets/images/home/top/img9.jpg'),
                 //     fit: BoxFit.cover,
                 //     width: 100.0, height: 125.0,
                 //   ),
                 // ),
               ],
             ),
           ),
             // SizedBox(
             //     height: 118.0,
             //     width: double.infinity,
             //     child: Carousel(
             //   //    boxFit: BoxFit.fitWidth,
             //       images: const [
             //         ExactAssetImage("assets/images/home/top2/img1.png"),
             //         ExactAssetImage("assets/images/home/top2/img2.png"),
             //         ExactAssetImage("assets/images/home/top2/img3.png"),
             //         ExactAssetImage("assets/images/home/top2/img4.png"),
             //         ExactAssetImage("assets/images/home/top2/img5.png"),
             //         ExactAssetImage("assets/images/home/top2/img6.png"),
             //       ],
             //       dotSize: 4.0,
             //       dotSpacing: 15.0,
             //       dotColor: Colors.lightGreenAccent,
             //       indicatorBgPadding: 5.0,
             //       dotBgColor: Colors.purple.withOpacity(0.0),
             //    //   borderRadius: true,
             //     ),
             // ),
             // SizedBox(
             //   height: 118.0,
             //   width: double.infinity,
             //   child: Carousel(
             //     //   boxFit: BoxFit.fitWidth,
             //     images:   const [
             //       ExactAssetImage("assets/images/home/top4/img1.png"),
             //       ExactAssetImage("assets/images/home/top4/img2.png"),
             //     ],
             //     dotSize: 4.0,
             //     dotSpacing: 15.0,
             //     dotColor: Colors.white,
             //     indicatorBgPadding: 5.0,
             //     dotBgColor: Colors.purple.withOpacity(0.0),
             //     //   borderRadius: true,
             //   ),
             // ),
             // SizedBox(
             //   height: 118.0,
             //   width: double.infinity,
             //   child: Carousel(
             //     //   boxFit: BoxFit.fitWidth,
             //     images:   const [
             //       ExactAssetImage("assets/images/home/top3/img1.jpg"),
             //       ExactAssetImage("assets/images/home/top3/img2.jpg"),
             //     ],
             //     dotSize: 4.0,
             //     dotSpacing: 15.0,
             //     dotColor: Colors.white,
             //     indicatorBgPadding: 5.0,
             //     dotBgColor: Colors.purple.withOpacity(0.0),
             //     //   borderRadius: true,
             //   ),
             // ),
             InkWell(
               child: Image.asset('assets/images/home/top4/img1.png'),
               onTap: (){},
               //splashColor: Colors.white10,
             ),
             InkWell(
               child: Image.asset('assets/images/home/top4/img2.png'),
               onTap: (){},
               //splashColor: Colors.white10,
             ),
             InkWell(
               child: Image.asset('assets/images/home/top3/img2.jpg'),
               onTap: (){},
               //splashColor: Colors.white10,
             ),
             InkWell(
               child: Image.asset('assets/images/home/top3/img3.jpg'),
               onTap: (){},
               //splashColor: Colors.white10,
             ),
             SingleChildScrollView(
               scrollDirection: Axis.horizontal,
               child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Shoes()));
                    },
                    child: Ink.image(
                      image: AssetImage('assets/images/home/top3/img4.jpg'),
                       fit: BoxFit.cover,
                      width: 130, height: 180,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Shirt()));
                    },
                    child: Ink.image(
                      image: AssetImage('assets/images/home/top3/img5.jpg'),
                       fit: BoxFit.cover,
                      width: 130, height: 180,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Tshirt()));
                    },
                    child: Ink.image(
                      image: AssetImage('assets/images/home/top3/img6.jpg'),
                      fit: BoxFit.cover,
                      width: 130, height: 180,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Girlkurti()));
                    },
                    child: Ink.image(
                      image: AssetImage('assets/images/home/top3/img7.jpg'),
                      fit: BoxFit.cover,
                      width: 130, height: 180,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Girlkurti()));
                    },
                    child: Ink.image(
                      image: AssetImage('assets/images/home/top3/img8.jpg'),
                      fit: BoxFit.cover,
                      width: 130, height: 180,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Shoes()));
                    },
                    child: Ink.image(
                      image: AssetImage('assets/images/home/top3/img9.jpg'),
                      fit: BoxFit.cover,
                      width: 130, height: 180,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Jewellery()));
                    },
                    child: Ink.image(
                      image: AssetImage('assets/images/home/top3/img10.jpg'),
                      fit: BoxFit.cover,
                      width: 130, height: 180,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Accesseries()));
                    },
                    child: Ink.image(
                      image: AssetImage('assets/images/home/top3/img11.jpg'),
                      fit: BoxFit.cover,
                      width: 130, height: 180,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Accesseries()));
                    },
                    child: Ink.image(
                      image: AssetImage('assets/images/home/top3/img12.jpg'),
                      fit: BoxFit.cover,
                      width: 130, height: 180,
                    ),
                  ),
                ],
               ),
             ),
             InkWell(
               onTap: () {},
               child: Ink.image(
                 image: AssetImage('assets/images/home/top3/img19.jpg'),
                 fit: BoxFit.cover,
                width: double.infinity, height: 70,
               ),
             ),
             SingleChildScrollView(
               scrollDirection: Axis.horizontal,
               child: Row (
                 children: [
                   InkWell(
                     onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> Shirt ())),
                     child: Ink.image(
                       image: AssetImage('assets/images/home/top3/img20.jpg'),
                       fit: BoxFit.cover,
                       width: 150, height: 250,
                     ),
                   ),
                 const  SizedBox(
                     width: 25.0,
                   ),
                   InkWell(
                     onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> Tshirt ())),

                     child: Ink.image(
                       image: AssetImage('assets/images/home/top3/img21.jpg'),
                       fit: BoxFit.cover,
                       width: 150, height: 250,
                     ),
                   ),
                 ],
               ),
             ),
             Container(
               margin:const  EdgeInsets.only(left: 5.0, right: 70,top: 5.0),
               child: const Text(
                   'Deals of The Day',
                 style: TextStyle(
                   fontSize: 30.0,
                   fontFamily: 'Mulish',
                   fontWeight: FontWeight.bold,
                   color: Colors.red,
                 ),
               ),
             ),
             Row(
               children: [
                 InkWell(
                   onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=> Shirt()));
                   },
                   child: Ink.image(
                     image: AssetImage('assets/images/home/top3/img13.jpg'),
                     fit: BoxFit.cover,
                     width: 119, height: 200,
                   ),
                 ),
                const SizedBox(
                  width: 2.0,
                ),
                 InkWell(
                   onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=> Girlkurti()));
                   },
                   child: Ink.image(
                     image: AssetImage('assets/images/home/top3/img14.jpg'),
                     fit: BoxFit.cover,
                     width: 118, height: 200,
                   ),
                 ),
                 const SizedBox(
                   width: 2.0,
                 ),
                 InkWell(
                   onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=> Girldress()));
                   },
                   child: Ink.image(
                     image: AssetImage('assets/images/home/top3/img15.jpg'),
                     fit: BoxFit.cover,
                     width: 119, height: 200,
                   ),
                 ),
               ],
             ),
             const Divider (
               thickness: 2.0,
             //  color: Colors.white,
             ),
             Row(
               children: [
                 InkWell(
                   onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=> Shoes()));
                   },
                   child: Ink.image(
                     image: AssetImage('assets/images/home/top3/img16.jpg'),
                     fit: BoxFit.cover,
                     width: 119, height: 200,
                   ),
                 ),
                 const SizedBox(
                   width: 2.0,
                 ),
                 InkWell(
                   onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=> Jewellery()));
                   },
                   child: Ink.image(
                     image: AssetImage('assets/images/home/top3/img17.jpg'),
                     fit: BoxFit.cover,
                     width: 118, height: 200,
                   ),
                 ),
                 const SizedBox(
                   width: 2.0,
                 ),
                 InkWell(
                   onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) =>  Bedsheet()));
                   },
                   child: Ink.image(
                     image: AssetImage('assets/images/home/top3/img18.jpg'),
                     fit: BoxFit.cover,
                     width: 119, height: 200,
                   ),
                 ),
               ],
             ),
           ],
         ),
       ),
    );
  }
}

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  void tmpFunction(){}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title:const Text(
        'Category',
        style: TextStyle(
        color: Colors.white,
        fontSize: 22.0,
        fontFamily:'Mulish',
        fontWeight: FontWeight.bold,
    ),
    ),
          actions: [
            IconButton(
              onPressed: (){},
              icon:Icon(Icons.search),
            ),
            IconButton(
              onPressed: (){},
              icon:Icon(Icons.notifications),
            ),
          ],
        centerTitle: true,
        backgroundColor: Colors.indigoAccent,
          elevation: 0,
        ),
      body: SingleChildScrollView(
       scrollDirection: Axis.vertical,
        child: Column(
          children: [
           //  GestureDetector(
           //    onTap: tmpFunction,
           //    child: Image.asset(
           //        'assets/images/categories/img1.jpg',
           //      width: double.infinity,
           //      fit: BoxFit.cover,
           //    ),
           //  ),
           // const  Divider(
           //    height: 5.0,
           //  ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Shirt()));
              },
              child: Ink.image(
                image: AssetImage('assets/images/categories/img3.jpg'),
                width: double.infinity,
                height: 120.0,
              ),
            ),
            const  Divider(
              height: 5.0,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Girlkurti()));
              },
              child: Ink.image(
                image: AssetImage('assets/images/categories/img2.jpg'),
                width: double.infinity,
                height: 120.0,
              ),
            ),
            const  Divider(
              height: 5.0,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Girldress()));
              },
              child: Ink.image(
                image: AssetImage('assets/images/categories/img4.jpg'),
                width: double.infinity,
                height: 120.0,
              ),
            ),
            const  Divider(
              height: 5.0,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Beautykit()));
              },
              child: Ink.image(
                image: AssetImage('assets/images/categories/img5.jpg'),
                width: double.infinity,
                height: 120.0,
              ),
            ),
            const  Divider(
              height: 5.0,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Bedsheet()));
              },
              child: Ink.image(
                image: AssetImage('assets/images/categories/img6.jpg'),
                width: double.infinity,
                height: 120.0,
              ),
            ),
            const  Divider(
              height: 5.0,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Accesseries()));
              },
              child: Ink.image(
                image: AssetImage('assets/images/categories/img7.jpg'),
                width: double.infinity,
                height: 120.0,
              ),
            ),
            const  Divider(
              height: 5.0,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Girldress()));
              },
              child: Ink.image(
                image: AssetImage('assets/images/categories/img8.jpg'),
                width: double.infinity,
                height: 120.0,
              ),
            ),
            const  Divider(
              height: 5.0,
            ),
            // InkWell(
            //   onTap: () {},
            //   child: Ink.image(
            //     image: AssetImage('assets/images/categories/img9.jpg'),
            //     width: double.infinity,
            //     height: 120.0,
            //   ),
            // ),
            // const  Divider(
            //   height: 5.0,
            // ),
          ],
        ),
      ),
    );
  }
}

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text(
          'Cart',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
            fontFamily:'Mulish',
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon:Icon(Icons.search),
          ),
          IconButton(
            onPressed: (){},
            icon:Icon(Icons.notifications),
          ),
        ],
        centerTitle: true,
        backgroundColor: Colors.indigoAccent,
     ),
     bottomNavigationBar: Container(
       color: Colors.white,
       child: Row(
         children:  [
           const Expanded(
               child: ListTile(
                 title: Text(
                     'Total:',
                   style: TextStyle(
                     fontWeight: FontWeight.bold,
                   ),
                 ),
                 subtitle: Text(
                     'Rs 2324',
                   style: TextStyle(
                     fontWeight: FontWeight.w400,
                   ),
                 ) ,
               ),
           ),
           MaterialButton(
               onPressed: () {},
             color: Colors.red,
             height: 65.0,
               child: const Text (
                   'BUY NOW',
                 style: TextStyle(
                   fontWeight: FontWeight.bold,
                   color: Colors.white,
                   fontSize: 18.0,
                 ),
               ),
           ),
         ],
       ),
     ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Card (
              child: ListTile(
                leading: Image.asset('assets/images/home/shirt/img22.jpg'),
                title:   const Text('T-shirt'),
                subtitle:const Text('Rs 499'),
                trailing: Icon(Icons.add),
              ),
            ),
            Card (
              child: ListTile(
                leading: Image.asset('assets/images/home/shoes/img50.jpg'),
                title:   const Text('Shoes'),
                subtitle:const Text('Rs 677'),
                trailing: Icon(Icons.add),
              ),
            ),
            Card (
              child: ListTile(
                leading: Image.asset('assets/images/home/girlkurti/img43.jpg'),
                title:   const Text('Kurti'),
                subtitle:const Text('Rs 799'),
                trailing: Icon(Icons.add),
              ),
            ),
            Card (
              child: ListTile(
                leading: Image.asset('assets/images/home/tshirt/img28.jpg'),
                title:   const Text('Denis T-shirt'),
                subtitle:const Text('Rs 349'),
                trailing: Icon(Icons.add),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Account',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24.0,
            fontFamily:'Mulish',
         fontWeight: FontWeight.bold
         //   fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon:Icon(Icons.search),
          ),
          IconButton(
            onPressed: (){},
            icon:Icon(Icons.notifications),
          ),
        ],
        centerTitle: true,
        backgroundColor: Colors.indigoAccent,
        elevation: 0,
    ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 200.0,
              child: Stack(
                children: [
                  Column (
                  children: [
                    Container(
                      height: 120.0,
                      color: Colors.black.withOpacity(0.7),
                    ),
                    Container(
                      height: 80.0,
                      color: Colors.white,
                    ),
                  ],
                ),
                  Positioned(
                    top: 30,
                    left: 20,
                    child: Container(
                    //  padding: EdgeInsets.all(0.0),
                      color: Colors.red,
                      height: 132.0,
                      width: 132.0,
                      child: Card(
                        child: Image.asset("assets/images/account/photo.png"),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 120,
                    left: 167,
                    child: Container(
                      padding: const EdgeInsets.all(3.0),
                      height: 40.0,
                      width: 180.0,
                      color: Colors.red,
                      child: ElevatedButton(
                          onPressed: (){},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.red),
                          textStyle: MaterialStateProperty.all(
                           const   TextStyle(
                            fontSize: 20.0,
                                fontFamily: 'Mulish',
                          ))
                        ),
                          child: Container(
                            height: 40.0,
                              child: const Center(child: Text(
                                  'Bidur Gupta',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Mulish',
                                ),
                              ),
                              ),
                          ),
                      ),
                    ),
                  ),
               ],
              ),
            ),
           const  Divider(
              height: 40.0,
              thickness: 20.0,
            ),
            const  ListTile(
              leading: Icon(
                Icons.wallet_giftcard,
                size: 35.0,
              ),
              title:  Text(
                'My Wallet',
                style: TextStyle(
                  fontSize: 18.0,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle:  Text('Manage all your refund and gift cards',style: TextStyle(fontFamily: 'Mulish'),),
              trailing:  Icon(Icons.arrow_forward_ios_rounded),
            ),
            const  Divider(
              thickness: 1.0,
            ),
            ListTile(
              leading: Image.asset(
                  'assets/images/account/orders.png',
                height: 35.0,
              ),
              title: const Text(
                  'Orders',
                style: TextStyle(
                  fontSize: 18.0,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text('Check your orders status',style: TextStyle(fontFamily: 'Mulish'),),
              trailing:const  Icon(Icons.arrow_forward_ios_rounded),
            ),
           const  Divider(
              thickness: 1.0,
            ),
            ListTile(
              leading: Image.asset(
                'assets/images/account/helpcenter.png',
                height: 35.0,
              ),
              title: const Text(
                'Help Centre',
                style: TextStyle(
                  fontSize: 18.0,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text('Help regarding your recent purchases',style: TextStyle(fontFamily: 'Mulish'),),
              trailing:const  Icon(Icons.arrow_forward_ios_rounded),
            ),
            const  Divider(
              thickness: 1.0,
            ),
           const  ListTile(
              leading: Icon(
                  Icons.favorite_border_rounded,
                size: 35.0,
              ),
              title:  Text(
                'Wishlist',
                style: TextStyle(
                  fontSize: 18.0,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle:  Text('Your favourite items are here',style: TextStyle(fontFamily: 'Mulish'),),
              trailing:  Icon(Icons.arrow_forward_ios_rounded),
            ),
            const  Divider(
              thickness: 1.0,
            ),
            const  ListTile(
              leading: Icon(
                Icons.add_location_alt_sharp,
                size: 35.0,
              ),
              title:  Text(
                'Addresses',
                style: TextStyle(
                  fontSize: 18.0,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle:  Text('Edit your addresses',style: TextStyle(fontFamily: 'Mulish'),),
              trailing:  Icon(Icons.arrow_forward_ios_rounded),
            ),
            const  Divider(
              thickness: 1.0,
            ),
            ListTile(
              leading: Image.asset(
                'assets/images/account/refer.png',
                height: 35.0,
              ),
              title: const Text(
                'Refer and Earn',
                style: TextStyle(
                  fontSize: 18.0,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text('Refer your friends to earn Rs.100',style: TextStyle(fontFamily: 'Mulish'),),
              trailing:const  Icon(Icons.arrow_forward_ios_rounded),
            ),
            const  Divider(
              height: 40.0,
              thickness: 20.0,
            ),
            ListTile(
              leading: Image.asset(
                'assets/images/account/manageaccount.png',
                height: 35.0,
              ),
              title: const Text(
                'Manage your account',
                style: TextStyle(
                  fontSize: 18.0,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.bold,
                ),
              ),
                 subtitle: const Text('Email ID , Password and Phone number',style: TextStyle(fontFamily: 'Mulish'),),
              trailing:const  Icon(Icons.arrow_forward_ios_rounded),
            ),
            const  Divider(
              thickness: 1.0,
            ),
            ListTile(
              leading: Image.asset(
                'assets/images/account/setting.png',
                height: 30.0,
              ),
              title: const Text(
                'Setting',
                style: TextStyle(
                  fontSize: 18.0,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text('Manage notification and app setting',style: TextStyle(fontFamily: 'Mulish'),),
              trailing:const  Icon(Icons.arrow_forward_ios_rounded),
            ),
            const Divider(
              thickness: 30.0,
              height: 45.0,
            ),
            // ElevatedButton(
            //   style:  ButtonStyle(
            //     elevation: MaterialStateProperty.all(0),
            //     backgroundColor: MaterialStateProperty.all(Colors.white),
            //   ),
            //  child:
              ListTile(
                leading: Image.asset(
                  'assets/images/account/logout.png',
                  height: 30.0,
                ),
                title: const Text(
                  'LOG OUT',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
         //     onPressed: (){},
        //    ),
          ],
        ),
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: const [
          DrawerHeader (
            padding: EdgeInsets.all(0.0),
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color:Colors.indigoAccent,
              ),
              accountName: Text(
                "Bidur Gupta",
                style: TextStyle(
                  fontFamily: 'Mulish',
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              accountEmail: Text(
                "bidurgupta125@gmail.com",
                style: TextStyle(
                  fontFamily: 'Mulish',
                  color: Colors.white,
                ),
              ),
              currentAccountPictureSize: Size.square(70),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.black,
                child: Text(
                  "BG",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontFamily: 'Mulish',
                    color: Colors.white,
                  ),
                ), //Text
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.my_library_books_rounded),
            title: Text(' FAQs'),
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text(' About Us'),
          ),
          ListTile(
            leading: Icon(Icons.contact_phone),
            title: Text(' Contact Us '),
          ),
          ListTile(
            leading: Icon(Icons.privacy_tip),
            title: Text(' Privacy and Policy  '),
          ),
          ListTile(
            leading: Icon(Icons.pin_end),
            title: Text(' Terms and Condition  '),
          ),
          Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(45.0, 200.0, 40.0, 20.0),
                child: Text (
                    'Made By Bidur Gupta..',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Mulish',
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),
                ),
              ),
          ),
        ],
      ),
    );
  }
}