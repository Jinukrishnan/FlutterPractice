import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ImageWidget(),
  ));
}

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Image Widget'),
        ),
      ),
      body: Center(
        child: Container(
          // width: MediaQuery.of(context).size.width,
          // height: MediaQuery.of(context).size.height,
          width: 300,
          height: 500,
          color: Colors.green[100],
          child: Stack(
            // clipBehavior: Clip.none,
            textDirection: TextDirection.rtl,
            alignment: Alignment.topLeft,
            children: [
              Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: 200,
                    height: 200,
                    color: Colors.red,
                    // child: Image.asset('assets/day.png'),
                    // child: Image(image: AssetImage('assets/day.png')),
                    child: Image.network(
                        'https://adhil369.weebly.com/uploads/1/2/5/1/12517544/1191237.jpg'),
                  )),
              Positioned(
                  left: 0,
                  bottom: 0,
                  child: Container(
                    width: 200,
                    height: 200,
                    color: Colors.green,
                    child: Image.network(
                      'https://www.cinejosh.com/newsimg/newsmainimg/happy-birthday-to-mohanlal_b_2105231058.jpg',
                      fit: BoxFit.cover,
                    ),
                    // child: Image.asset('assets/night.png'),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
