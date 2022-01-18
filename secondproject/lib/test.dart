import 'package:flutter/material.dart';
import 'package:secondproject/Beverages.dart';

void main() {
  runApp(
   MaterialApp(
      initialRoute: '/bavarage',
      routes:{
       '/': (context) =>  Homepage(),
       '/bavarage' : (context) =>  Beverages(),
      } ,
 
    
   ),
  );
}



class Homepage extends StatefulWidget {
  const Homepage({ Key? key }) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        
        appBar: AppBar(
          elevation: 0
          ,title:Text("Find",
        style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        centerTitle: true,),
        body: Container(child: Products(),),
      
    );
  }
}

class Products extends StatefulWidget {
  const Products({ Key? key }) : super(key: key);

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
final list_item= [
  Product(product_name: 'Fruits & Vegetable',
  product_pic:"images/pic1.jpg" ,
  color: Color(0xffB7DFF540),
  ontap: (){},

  ),
  Product(product_name: 'Fruits & Vegetable',
  product_pic:"images/pic1.jpg" ,
  color: Colors.blue,
   ontap: (){},
  ),
  Product(product_name: 'Fruits & Vegetable',
  product_pic:"images/pic1.jpg" ,
  color: Colors.red,
   ontap: (){},
  ),
  Product(product_name: 'Fruits & Vegetable',
  product_pic:"images/pic1.jpg" ,
  color: Colors.red,
   ontap: (){},
  ),
  Product(product_name: 'Fruits & Vegetable',
  product_pic:"images/pic1.jpg" ,
  color: Colors.red,
   ontap: (){},
  ),
  Product(product_name: 'Fruits & Vegetable',
  product_pic:"images/pic1.jpg" ,
  color: Colors.red,
   ontap: (){
   
                 
   },
  ),

   
    // "name": "Cooking Oil & Ghee",
    //  "pic": "images/pic2.jpg",
    //  "color":Colors.red
  
   
    // "name": "Meat & Fish",
    //  "pic": "images/pic3.jpg",
    //  "color":Colors.red
  
   
    // "name": "Bakery & Snacks",
    
    //  "pic": "images/pic4.jpg",
    //  "color":Colors.red
  
   
    // "name": "Dairy & Eggs",
    //  "pic": "images/pic5.jpg",
    //  "color":Colors.red
  
   
    // "name": "Beverages",
    //  "pic": "images/pic6.jpg",
    //  "color":Colors.red
     
  
  
];


  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      
      itemCount: list_item.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
       itemBuilder: (BuildContext context,int index)
       { return
        //  return Product(
        //    product_name: list_item[index]["name"],
           
        //    product_pic: list_item[index]["pic"],
            GestureDetector(
              onTap: list_item[index].ontap,
              child: Card(
                color: list_item[index].color,
                  shape: RoundedRectangleBorder(
            
                    borderRadius: const BorderRadius.all(
                      Radius.circular(18.0),
                    ),
                  ),
                //  color: list_item[index].color,
                
                    // margin: EdgeInsets.all(7.0),
                    
                    // shape:  RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.all(Radius.circular(20))
                    // ),
                  
              child: Padding(padding: EdgeInsets.all(8.0),
              
              child: Column( 
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 
                  Expanded(
                  
                  child: 
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Image.asset(list_item[index].product_pic,
                    fit: BoxFit.cover,
                    
                    height: 74.9,
                    width: 111.38,
                    ),
                ),),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top:16),
                      child: Text(list_item[index].product_name,style: TextStyle(fontFamily: "Gilroy-Bold"),),
                    ),),
                ],
              ),
              ),
                      
                      
                  ),
            );

           

           
        //  );
      
       }
       );
  }
}

class Product {
   final product_name;
  final product_pic;
  late  Color color;
late var ontap;
  
Product({
  this.product_name,
  this.product_pic, required this.color, required this.ontap});
}








// footer: Container(
              //   child: ListTile(
              //   leading: Text(product_name,
                
              //   style: 
              //   TextStyle(
              //     fontWeight:
              //     FontWeight.bold,
                 
              //     color: Colors.black ,
              //     ),
              //     ),
              // ),
              // color: Colors.black12,),
              // child: 
              // Image.asset(product_pic,fit:BoxFit.contain ,
              // ),