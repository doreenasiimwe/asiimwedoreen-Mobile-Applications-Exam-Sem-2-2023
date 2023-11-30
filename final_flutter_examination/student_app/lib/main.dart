import 'package:flutter/material.dart';
import 'package:student_app/Pages/about_screen.dart';
// import 'package:student_app/Pages/state_management.dart';
// import 'package:student_app/Pages/home_page.dart';

void main() {
  runApp(const MyApp(),
  
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Final Exam',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      
      home: ShowDetails(title:"Student Details"),
      
    );
  }
}

class ShowDetails extends StatefulWidget {
  const ShowDetails({super.key, required this.title});


  final String title;

  @override
  State<ShowDetails> createState() => _ShowDetailsState();
}

class _ShowDetailsState extends State<ShowDetails> {
  String _Student_details= "";

  void _Studentdetailsshow() {
    setState(() {
      
      _Student_details = "John Doe, Age: 20, Grade A";
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
            child: Text(
          "Student App",
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),),
      ),

      
      body: Center(
        
        child: Column(
        
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Student Details:', style:  TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
            Text(
              '$_Student_details',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
         ElevatedButton(
          
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutScreen()),
              );
            },
            
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.lightBlue),
            ),
            child: const Text(
              " About Screen",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),   
            
          ],
        ),
        
      ),
      
      floatingActionButton: FloatingActionButton(
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(5),
            
          ),
        ),
        onPressed: _Studentdetailsshow,
        tooltip: _Student_details,
        backgroundColor: Colors.blue,
        child: Text(
          "Show Details",
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
      
      

      
    );
  }
}