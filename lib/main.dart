

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(debugShowCheckedModeBanner: false,
        home: HomeScreen()
    );
  }
}
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Text> data=[Text('Communication Systems Quiez',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20)),
      Text('OS Report',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20)),
      Text('Buy Some Stuff',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20)),
      Text('Go To The Gym',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20)),
      Text('Flutter Task',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20)),
      Text('Flutter Task بردو',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20)),
       Text('Buy Some Stuff',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20)),
      Text('Go To The Gym',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20)),
      Text('Flutter Task',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20)),
      Text('Flutter Task بردو',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20),

      )
    ];
    List<String> time=['10:00 AM','11:00 AM','1:00 PM','2:00 PM','4:00 PM','6:00 PM''1:00 PM','2:00 PM','4:00 PM','6:00 PM'];
    return Scaffold(
      backgroundColor:Color(0xFF4368FF) ,
      appBar:AppBar(

        backgroundColor: Color(0xFF4368FF),
        title: Center(
          child: Text('Todo List',style: TextStyle(fontFamily:'Raleway Medium',
          fontSize: 25,
            fontWeight: FontWeight.w700
          ),),
        ),
      ),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemBuilder: (context,index){
      return Container(
        child: ListTile(
          title: data[index],
          textColor: Colors.white,
        trailing: IconButton(onPressed: () {
          showDialog(
            barrierDismissible: false,
              context: context,
              builder: (BuildContext context){
                return AlertDialog(

                  title: Text('Delete'),
                  content: Text('Are You sure you want to delete this item'),
                  actions: [
                    MaterialButton(
                      child: Text('Cancel'),
                      onPressed:()
                      {
                        Navigator.of(context).pop();
                      },
                    ),
                    MaterialButton(
                      child: Text('Yes'),
                      onPressed:() {
                        Navigator.of(context).pop();
                    },
                    ),

                  ],
                );
              }
          );
        },

          icon:Icon(Icons.restore_from_trash_rounded,color: Colors.white ,),

          ),
          subtitle: Text(time[index],style: TextStyle(
            color: Colors.white,
          ),
          ),
        ),

      );
      },
        itemCount: data.length,


      ),
    );
  }
}
