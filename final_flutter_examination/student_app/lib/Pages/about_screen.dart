import 'package:flutter/material.dart';
import 'package:student_app/Pages/state_management.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 100,),
              Card(
                color: Colors.blue,
          child:Text("I am Asiimwe Doren, Email: doreenasiimwe5@gmail.com, studentNumber: 2022/DCSE/008/ss",style: TextStyle(color: Colors.white,fontSize: 20),) ,
        
          
          
        ),
         ElevatedButton(
          
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => StateManagement()),
              );
            },
            
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.lightBlue),
            ),
            child: const Text(
              " To Stateful Widget",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
            ]
      ),
      )
            
          ),
        );
    
    
  }
}