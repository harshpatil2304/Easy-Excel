// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:new_harsh_project/new_user.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyScreen(),
//       theme: ThemeData(
//         textTheme: GoogleFonts.poppinsTextTheme(),
//       ),
//     );
//   }
// }

// class MyScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             SizedBox(width: 10),
//             ClipRRect(
//               borderRadius: BorderRadius.circular(60),
//               child: Image.asset(
//                 'images/logo.png',
//                 width: 120,
//                 height: 120,
//                 fit: BoxFit.cover,
//               ),
//             ),
//             SizedBox(height: 40),
//             Container(
//               width: 365,
//               height: 600,
//               decoration: BoxDecoration(
//                 color: Color.fromARGB(255, 8, 103, 1),
//                 borderRadius: BorderRadius.circular(20),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black.withOpacity(0.3),
//                     spreadRadius: 5,
//                     blurRadius: 7,
//                     offset: Offset(0, 3),
//                   ),
//                 ],
//               ),
//               child: Stack(
//                 children: [
//                   Positioned(
//                     top: 40,
//                     left: 88,
//                     child: Text(
//                       'Welcome Back',
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 25,
//                           fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                   Positioned(
//                     top: 85,
//                     left: 105,
//                     child: Text(
//                       'Login to your account',
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 14,
//                           fontWeight: FontWeight.w400),
//                     ),
//                   ),
//                   Positioned(
//                     top: 195,
//                     left: 25,
//                     child: Text(
//                       'Enter your username',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 12,
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     top: 300,
//                     left: 25,
//                     child: Text(
//                       'Enter your password',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 12,
//                       ),
//                     ),
//                   ),
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(20.0),
//                         child: TextField(
//                           decoration: InputDecoration(
//                             filled: true,
//                             fillColor: Colors.white,
//                             border: OutlineInputBorder(
//                               borderSide: BorderSide(color: Colors.white),
//                               borderRadius: BorderRadius.circular(15),
//                             ),
//                           ),
//                           style: TextStyle(color: Colors.black),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(20.0),
//                         child: TextField(
//                           decoration: InputDecoration(
//                             filled: true,
//                             fillColor: Colors.white,
//                             border: OutlineInputBorder(
//                               borderSide: BorderSide(color: Colors.white),
//                               borderRadius: BorderRadius.circular(15),
//                             ),
//                           ),
//                           obscureText: true,
//                           style: TextStyle(color: Colors.black),
//                         ),
//                       ),
//                     ],
//                   ),
//                   Positioned(
//                     bottom: 90,
//                     left: 100,
//                     child: SizedBox(
//                       width: 180,
//                       height: 60,
//                       child: ElevatedButton(
//                         onPressed: () {},
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: Color.fromARGB(255, 255, 154, 72),
//                         ),
//                         child: Text(
//                           'LOG IN',
//                           style: TextStyle(
//                             fontWeight: FontWeight.w700,
//                             fontSize: 17,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     bottom: 180,
//                     left: 180,
//                     child: SizedBox(
//                       width: 185,
//                       height: 40,
//                       child: TextButton(
//                         onPressed: () {},
//                         style: TextButton.styleFrom(),
//                         child: Text(
//                           'Forgot Password?',
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 12,
//                             color: Color.fromARGB(255, 255, 154, 72),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     top: 540,
//                     left: 80,
//                     child: Text(
//                       "Don't have an account ?",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 12,
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     bottom: 32,
//                     left: 165,
//                     child: SizedBox(
//                       width: 185,
//                       height: 40,
//                       child: TextButton(
//                         onPressed: () {
//                           // Navigate to new_user.dart
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) =>
//                                     NewScreen()), // Use NewUser widget
//                           );
//                         },
//                         style: TextButton.styleFrom(),
//                         child: Text(
//                           'Sign Up',
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 12,
//                             color: Color.fromARGB(255, 255, 154, 72),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_harsh_project/new_user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyScreen(),
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
    );
  }
}

class MyScreen extends StatelessWidget {
  // Define variables for text properties
  final String text = '      EASY EXCEL   ';
  final Color textColor = Color.fromARGB(255, 8, 103, 1);
  final FontWeight fontWeight = FontWeight.w900;
  final double fontSize = 35.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(width: 10),
            Container(
              width: 300, // Adjust width as needed
              height: 40, // Adjust height as needed
              child: Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontWeight: fontWeight,
                  fontSize: fontSize,
                ),
              ),
            ),
            SizedBox(height: 40),
            Container(
              width: 365,
              height: 600,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 8, 103, 1),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 40,
                    left: 88,
                    child: Text(
                      'Welcome Back',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Positioned(
                    top: 85,
                    left: 105,
                    child: Text(
                      'Login to your account',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Positioned(
                    top: 195,
                    left: 25,
                    child: Text(
                      'Enter your username',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 300,
                    left: 25,
                    child: Text(
                      'Enter your password',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          obscureText: true,
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 90,
                    left: 100,
                    child: SizedBox(
                      width: 180,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 255, 154, 72),
                        ),
                        child: Text(
                          'LOG IN',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 17,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 180,
                    left: 180,
                    child: SizedBox(
                      width: 185,
                      height: 40,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(),
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Color.fromARGB(255, 255, 154, 72),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 540,
                    left: 80,
                    child: Text(
                      "Don't have an account ?",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 32,
                    left: 165,
                    child: SizedBox(
                      width: 185,
                      height: 40,
                      child: TextButton(
                        onPressed: () {
                          // Navigate to new_user.dart
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    NewScreen()), // Use NewUser widget
                          );
                        },
                        style: TextButton.styleFrom(),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Color.fromARGB(255, 255, 154, 72),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
