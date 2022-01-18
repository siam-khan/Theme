// import 'package:flutter/material.dart';
// import 'package:secondproject/Beverages.dart';

// void main() {
//   runApp(MyApp());
// }


// class MyApp extends StatelessWidget {
//   const MyApp({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: "s",
//       home: Homepage(),
      
//     );
//   }
// }
// class Homepage extends StatefulWidget {
//   const Homepage({ Key? key }) : super(key: key);

//   @override
//   _HomepageState createState() => _HomepageState();
// }

// class _HomepageState extends State<Homepage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title:Text("Find",
//       style: TextStyle(color: Colors.black),),
//       backgroundColor: Colors.white,
//       centerTitle: true,),
//       body: Container(child: Products(),),
//     );
//   }
// }

// class Products extends StatefulWidget {
//   const Products({ Key? key }) : super(key: key);

//   @override
//   _ProductsState createState() => _ProductsState();
// }

// class _ProductsState extends State<Products> {
// final list_item= [
//   {
//     "name": "Frash Fruits & Vegetable",
//      "pic": "images/pic1.jpg",
//      "color":Colors.red},
//    {
//     "name": "Cooking Oil & Ghee",
//      "pic": "images/pic2.jpg",
//      "color":Colors.red
//   },
//    {
//     "name": "Meat & Fish",
//      "pic": "images/pic3.jpg",
//      "color":Colors.red
//   },
//    {
//     "name": "Bakery & Snacks",
    
//      "pic": "images/pic4.jpg",
//      "color":Colors.red
//   },
//    {
//     "name": "Dairy & Eggs",
//      "pic": "images/pic5.jpg",
//      "color":Colors.red
//   },
//    {
//     "name": "Beverages",
//      "pic": "images/pic6.jpg",
//      "color":Colors.red
     
//   }
  
// ];


//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
      
//       itemCount: list_item.length,
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
//        itemBuilder: (BuildContext context,int index)
//        {
//          return Product(
//            product_name: list_item[index]["name"],
           
//            product_pic: list_item[index]["pic"],
           

           

           
//          );
//        },
//        );
//   }
// }

// class  Product extends StatelessWidget {
//   final product_name;
//   final product_pic;
//   late  Color color;

// Product({
//   this.product_name,
//   this.product_pic, required this.color});
//   @override
//   Widget build(BuildContext context) {
//     return Container(
      
//       // decoration: BoxDecoration(
//       //   borderRadius: BorderRadius.circular(200)
//       // ),
//       child: Card(
      
    
//         // margin: EdgeInsets.all(7.0),
        
//         // shape:  RoundedRectangleBorder(
//         //   borderRadius: BorderRadius.all(Radius.circular(20))
//         // ),
//         child: Container(
//           child: Hero(tag: product_name,child:Material(
            
//             child:InkWell(
             
//               onTap: (){
//                 Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Beverages(),));
//               },
//               child: GridTile(
                
//                child: Padding(padding: EdgeInsets.all(8.0),
               
//                child: Container(
//                  color: Colors.pink,
//                  child: Column( 
//                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                    children: [
                    
//                      Expanded(
                     
//                      child: 
//                    Image.asset(product_pic,
//                      fit: BoxFit.cover,
                     
//                      height: 74.9,
//                      width: 111.38,
//                      ),),
//                      Expanded(
//                        child: Text(product_name,style: TextStyle(fontFamily: "Gilroy-Bold"),),),
//                    ],
//                  ),
//                ),
//                ),
               
               
               
               
               
               
               
               
               
//                 ),
//             ) ,),
//             ),
//         ),
//       ),
//     );
//   }
// }








// // footer: Container(
//               //   child: ListTile(
//               //   leading: Text(product_name,
                
//               //   style: 
//               //   TextStyle(
//               //     fontWeight:
//               //     FontWeight.bold,
                 
//               //     color: Colors.black ,
//               //     ),
//               //     ),
//               // ),
//               // color: Colors.black12,),
//               // child: 
//               // Image.asset(product_pic,fit:BoxFit.contain ,
//               // ),