import 'package:flutter/material.dart';
import 'package:swift/homePage.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            'assets/background.jpeg',
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
          Container(
            color: Colors.black.withOpacity(0.1), // Translucent black overlay
            child: Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                padding: const EdgeInsets.all(60),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5), // Translucent black box
                  borderRadius: BorderRadius.circular(20),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset(
                        'assets/logo.png',
                        height: 70,
                        width: 89,
                        alignment: Alignment.center,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Swift',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 64,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          height: 75.14 / 64,
                        ),
                      ),
                      const Text('Café',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Raleway',
                            fontSize: 40,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                            height: 46.96 / 40,
                          )),
                      const SizedBox(height: 10),
                      const Text(
                        '"Latte but never late"',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors
                              .white, // You can change the color if needed
                          height: 21 / 14,
                        ),
                      ),

                      //for glow effect
                      // Container(
                      //   width: 50,
                      //   height: 100,
                      //   margin: EdgeInsets.only(top: 2, left: 400),
                      //   decoration: BoxDecoration(
                      //     boxShadow: [
                      //       BoxShadow(
                      //         color: Color(0xFFABABAB).withOpacity(
                      //             0.4), // Use a color similar to the background color
                      //         blurRadius: 20,
                      //         spreadRadius: 0,
                      //       ),
                      //     ],
                      //   ),
                      //   child: Center(
                      //     child: Container(
                      //       width: 50,
                      //       height: 100,
                      //       decoration: BoxDecoration(
                      //         color: Color(0xFFABABAB),
                      //         boxShadow: [
                      //           BoxShadow(
                      //             color: Color(0xFFFFFFFF).withOpacity(0.87),
                      //             blurRadius: 20,
                      //             spreadRadius: 0,
                      //             offset: Offset(0, 0),
                      //           ),
                      //         ],
                      //       ),
                      //       child: Center(
                      //         child: Text(
                      //           '"Latte but never late"',
                      //           textAlign: TextAlign.center,
                      //           style: TextStyle(
                      //             fontFamily: 'Poppins',
                      //             fontSize: 14,
                      //             fontWeight: FontWeight.w400,
                      //             color: Colors
                      //                 .white, // You can change the color if needed
                      //             height: 21 / 14,
                      //           ),
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      // ),

                      const SizedBox(height: 30),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Username',
                          hintStyle: const TextStyle(color: Colors.white),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.3),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          ),
                          prefixIcon: const Icon(Icons.person, color: Colors.white),
                        ),
                        style: const TextStyle(color: Colors.white),
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: const TextStyle(color: Colors.white),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.3),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          ),
                          prefixIcon: const Icon(Icons.lock, color: Colors.white),
                        ),
                        style: const TextStyle(color: Colors.white),
                      ),
                      const SizedBox(height: 30),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.brown, // Gradient brown color
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 15),
                          ),
                          child: const Text('Login', style: TextStyle(fontSize: 18)),
                        ),
                      ),
                      const SizedBox(height: 15),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent, // Transparent color
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                              side: const BorderSide(color: Colors.white),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 15),
                          ),
                          child: const Text('Sign Up',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Privacy Policy',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
