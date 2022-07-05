import 'package:flutter/material.dart';
import 'package:flutter_app1/constant.dart';
import '../details.dart';

List<ImageDetails> _images = [
  ImageDetails(
    imagePath: 'assets/images/i5.png',
    price: 'Rp2.000.000',
    category: 'CPU',
    title: 'Intel i5-10400F',
    ),
    ImageDetails(
    imagePath: 'assets/images/3070.png',
    price: 'Rp10.000.000',
    category: 'VGA',
    title: 'Asus ROG Strix RTX 3070 8GB',
    ),
    ImageDetails(
    imagePath: 'assets/images/mobo.png',
    price: 'Rp17.500.000',
    category: 'Motherboard',
    title: 'Asus ROG Maximus Z690 Extreme',
    ),
    ImageDetails(
    imagePath: 'assets/images/monitor.png',
    price: 'Rp22.000.000',
    category: 'Monitor',
    title: 'Samsung G9 Oddysey 49" 240Hz',
    ),
    ImageDetails(
    imagePath: 'assets/images/flashdrive.png',
    price: 'Rp180.000',
    category: 'Storage',
    title: 'FlashDrive Netac 128GB OTG',
    ),
];

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.bg1,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
            height: 40,
          ),
          new Center(
            child: new Image.asset(
              "assets/images/logo2.png",
              height: 90.0,
              width: 270.0,
              ),
          ),
          Text(
            'Terbaik di Solo!',
            style: TextStyle(
              fontSize: 15,
              fontFamily: '',
              fontWeight: FontWeight.w600,
              color: Colors.brown,
            ),
            textAlign: TextAlign.center,
          ),
          
          SizedBox(
            height: 40,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical:30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30) )
              ),
              child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10, 
              ), itemBuilder: (context, index){
                return RawMaterialButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => DetailsPage(
                        imagePath: _images[index].imagePath, 
                        category: _images[index].category, 
                        title: _images[index].title,
                        price: _images[index].price,
                      ),
                    ),
                    );
                  },
                  child: Container(
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage(_images[index].imagePath),
                        fit: BoxFit.cover,
                      ),
                      ), 
                    ),
                  );
              }, itemCount: _images.length,),
            ),
          ),
          ]
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class ImageDetails{
  final String imagePath;
  final String price;
  final String category;
  final String title;
  ImageDetails({
    required this.imagePath,
    required this.price,
    required this.category,
    required this.title,
  });
}