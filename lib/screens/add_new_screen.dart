import 'package:flutter/material.dart';

class AddNewScreen extends StatelessWidget{
  const AddNewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomSheet(
      // color: const Color(0xff757575),
      builder: (BuildContext context) { return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Text('Name'),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            Text('date'),
            IconButton(onPressed: null,icon: Icon(Icons.add_card_sharp),),
            TextButton(onPressed: null, style: ButtonStyle(

            ), child: Text('DONE'),)
          ],
        )); }, onClosing: () {  },
      // child:
      // ),
    );
  }

}