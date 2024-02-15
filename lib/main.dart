import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SacfoldWidget(),
  ));
}

class SacfoldWidget extends StatelessWidget {
  const SacfoldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Text Widget',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),

      // body section
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: TextField(
          // keyboardType: TextInputType.text,
          keyboardType: TextInputType.multiline,
          // onChanged: (String textVal) {
          //   print('output++++++++++++++++++' + textVal);
          // },
          onTap: () {
            print('taped');
          },
          // enabled: false,
          enabled: true,
          maxLines: 5,
          // controller: TextEditingController(text: 'name'),
          // style
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.green,
                  width: 2,
                ),

                // borderRadius: BorderRadius.circular(20))),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5))),
            disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 4),

                // borderRadius: BorderRadius.circular(20))),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(40))),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue, width: 4),

              // borderRadius: BorderRadius.circular(20))),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            // icons
            icon: Icon(
              Icons.account_box,
              color: Colors.blue,
            ),
            suffixIcon: Icon(Icons.more),
            // suffixText: 'ok',
            // suffix: TextButton(
            //   onPressed: () {},
            //   child: Text('click'),
            // ),
            // padding
            contentPadding: EdgeInsets.all(30),
            labelText: 'User Name',
            labelStyle: TextStyle(color: Colors.brown, fontSize: 20),
            hintText: 'John',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            helperText: 'Please Enter your user name',
            helperStyle: TextStyle(color: Colors.orange, fontSize: 20),
          ),
        ),
      )),

      backgroundColor: Colors.white,
    );
  }
}
