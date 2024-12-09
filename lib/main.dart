import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Demo App'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        height: 280,
        color: Color(0xFFefedf5),
        padding:EdgeInsets.all(12),
        margin: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Attendance",
                  style: TextStyle(fontSize: 18,color: Colors.black),
                ),
                SizedBox(height: 8),

                Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [

                Text(
                  "Location",
                  style: TextStyle(fontSize: 14,color: Colors.black),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: null,
                    ),
                     Text("HQ"),
                    SizedBox(width: 10),
                    Checkbox(
                      value: false,
                      onChanged: null,
                    ),
                    Text("EHQ"),
                    SizedBox(width: 10),
                    Checkbox(
                      value: false,
                      onChanged: null,
                    ),
                    Text("OS"),
                    SizedBox(width: 10),
                    Checkbox(
                      value: false,
                      onChanged: null,
                    ),
                    Text("Other"),
                    ],
                    ),
                  ],
                ),
                SizedBox(height: 8),
                 TextFormField(
                  maxLines: 2,
                 decoration: InputDecoration(
                   filled: true,
                   fillColor: Colors.white,
                   border: InputBorder.none, // Removes the border
                   labelText: "Write a comment here....",
                 ),

                 ),
                SizedBox(height: 12),
                SizedBox(
                  width: double.infinity, // Full width
                  child: ElevatedButton(

                    onPressed: () {  },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8), // Decrease the radius here
                      ),
                      backgroundColor: Colors.redAccent, // Red background
                      foregroundColor: Colors.white, // White text color
                      padding: EdgeInsets.symmetric(vertical: 12), // Vertical padding
                    ),
                    child: Text("Cheak In"),
                  ),
                ),

              ],

        ),
      ),
    );
  }
}


