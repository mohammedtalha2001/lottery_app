import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp( MyApp());
}

// class MyApp extends StatelessWidget {
//   MyApp({super.key});
// Random random = Random();
//   int x = 0;
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//       appBar: AppBar(title: Text("Lottery App")),
//       body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Center(child: Text("lottery Winning Number is $x")),
//             Container(
//                 height: 250,
//                 decoration: BoxDecoration(
//                     color: Colors.grey.withOpacity(.3),
//                     borderRadius: BorderRadius.circular(10)),
//             child: Column(
//                 children:[
//                   Icon(Icons.error, color: Colors.red, size: 35,),
//                   SizedBox(height: 15,),
//                   Text('Better luck Next Time your Number is $x \n try again' , textAlign: TextAlign.center,)
//                 ]
//             )
//             )
//           ]),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           x = random.nextInt(6);
//           print("tap");
//
//         },
//         child: Icon(Icons.refresh),
//       ),
//     ));
//   }
// }





class MyApp extends StatefulWidget {
   MyApp({Key? key}) : super(key: key);



  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text("Lottery App")),
          body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(child: Text("lottery Winning Number is $x")),
                Container(
                    height: x==5? 300:250,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(.3),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: x ==5? Column(
                          children:[
                            Icon(Icons.done, color: Colors.green, size: 35,),
                            SizedBox(height: 15,),
                            Text('Congragulations you have won the lottery you number is $x ' , textAlign: TextAlign.center,)
                          ]
                      )
                          :
                      Column(
                          children:[
                            Icon(Icons.error, color: Colors.red, size: 35,),
                            SizedBox(height: 15,),
                            Text('Better luck Next Time your Number is $x \n try again' , textAlign: TextAlign.center,)
                          ]
                      ),
                    )
                )
              ]),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              x = random.nextInt(6);
              setState((){});
              print("tap");

            },
            child: Icon(Icons.refresh),
          ),
        ));
  }
}
