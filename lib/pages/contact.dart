import 'package:flutter/material.dart';

class contact extends StatefulWidget {
  const contact({super.key});

  @override
  State<contact> createState() => _contactState();
}

class _contactState extends State<contact> {
  TextEditingController mailExpediteur = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF052B68),
        body: Center(
          child: SizedBox(
            width: 1800,
            height: 900,
            child: Card(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Text(
                        "contact".toUpperCase(),
                      style: const TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 23,
                      ),
                    ),
                  ),
                   SizedBox(
                     width: 600,
                     child: TextField(
                       textAlign: TextAlign.center,
                      keyboardType: TextInputType.emailAddress,
                      controller: mailExpediteur,
                      decoration:const InputDecoration(
                        labelText: "email",
                        labelStyle: TextStyle(
                          
                        )
                      ),
                      style: const TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFF052B68)
                      ),
                                     ),
                   )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
