import 'package:flutter/material.dart';
import 'package:birthdays/screens/add_new_screen.dart' as screen;

class BirthdayScreen extends StatelessWidget{
  BirthdayScreen({Key? key,names, birthdays}
   ) : super(key: key);

  // get list => [];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.red,
      floatingActionButton: FloatingActionButton(onPressed: () {
        showModalBottomSheet(context: context, builder: (context)=>  const screen.AddNewScreen());
      },
        backgroundColor: Colors.red,
        child: const Icon(Icons.add,),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15,),
            const Padding(
              padding: EdgeInsets.all(4.0),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.accessibility_outlined,color: Colors.red,),
              ),
            ),
            const SizedBox(height: 20,width: 15,),
            const Text('  Birthdays',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
              ),
            ),
            const SizedBox(height: 25,),

            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)
                  ),
                ),
                height: 200,
                child: ListView(
                  children: List.generate(16,
                          (index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Material(
                              // color: Colors.yellowAccent,
                              borderRadius: const BorderRadius.all(Radius.circular(20)),
                              // shadowColor: Colors.yellow,
                                child: birthdayTile('name$index', '$index/ $index/ $index'),
                            ),
                          ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  ListTile birthdayTile(
  final String nameBirthday,
  final String dateBirthday,
  // birthdayTile(this.title,this.subtitle);
  ) {
    return ListTile(
                    //Name
                    title: Text(nameBirthday),
                    //date
                    subtitle: Text(dateBirthday),
                  );
  }
}