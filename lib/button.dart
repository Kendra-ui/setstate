import 'package:flutter/material.dart';

class Button extends StatelessWidget {
   const Button({super.key, required this.callback, required this.name, });

   final  Function callback;
  //  final  Function increment;
  //  final  Function decrement;



   final String name;
  //  String counter;
  //  String minus;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        GestureDetector(
                  onTap: (){
                    callback('ken');
                  },
                  child:
                  Container(
                  height: 50,
                  width: double.infinity,
                  margin: const EdgeInsets.fromLTRB(40, 20, 40, 20),
                  decoration:  BoxDecoration(
                    color: const Color.fromARGB(255, 245, 144, 178),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: 
                  const Center(child: Text('Click', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)),              
    
                      ),
                ),
    
       
      ],
    );
  }
}