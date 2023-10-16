import 'package:flutter/material.dart';
import 'package:setstate/button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner:false ,
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String name = 'name';
  // String number ='0';

  void callback(varName) {
    setState(() {
      name = varName;

    });
  }

  // void increment(counter){
  //   setState(() {
  //     counter++;
  //   });
  // }

  //   void decrement(minus){
  //   setState(() {
  //     minus--;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 248, 140, 132),
        title: const Text('setState',),
      ),
      
      body:  Center( 
        child: Column(
          children: [
            Container(
              height: 50,
              width: double.infinity,
               margin: const EdgeInsets.fromLTRB(40, 50, 40, 20),
              decoration:  BoxDecoration(
                color: const Color.fromARGB(255, 245, 144, 178),
                borderRadius: BorderRadius.circular(20)
              ),
              child: 
              Center(child: Text('My name is $name', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)),             
            
                  ),

               Button(name: 'name', callback: callback),

              //  Padding(padding: EdgeInsets.all(20),
              //    child: Row(
              //      children: [
              //        ElevatedButton(
              //         onPressed: (){}, child:
              //          const Text('+', style: TextStyle(fontWeight: FontWeight.bold),)
              //          ),
               
              //           Container(
              //       width: 30,
              //       height: 20,
              //       margin: const EdgeInsets.fromLTRB(40, 20, 40, 20),
               
              //       decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(5),
                      
              //       ),
              //       child: Text(number),
              //      ),
               
              //     ElevatedButton(
               
              //     onPressed: (){}, child:
              //      const Text('-', style: TextStyle(fontWeight: FontWeight.bold),)
              //      ),
              //          ],
              //          ),
              //  )
        ],
               ),
                
        )
      )
    ;
  }
}
