import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final String photo = "assets/image.jpg";
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          elevation: 23,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(photo,height: 50,width: 50,),
              Text("Amadou TOuré".toUpperCase(),style: const TextStyle(color: Colors.white)),
              const SizedBox(width: 10,)
            ],
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: const Center(
          child: Column(
            children: [
              Text("Amadou Touré")
            ],
          ),
        ),
        drawer: Drawer(
          elevation: 23,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: Container(
                    width: 250,
                    height: 250,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(125),
                      child: Image.asset(
                        photo,
                        fit: BoxFit.cover,
                        width: 250,
                        height: 250,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                    child: Text("Amadou Touré".toUpperCase(),style: const TextStyle(color: Colors.brown,fontSize: 25,fontWeight: FontWeight.w800))
                ),
              ),
              const Divider(
                height: 2,
                color: Colors.lightBlue,
                thickness: 4,
              ),
              const ListTile(
                
              )
            ],
          ),
        ),
      ),
    );
  }
}
