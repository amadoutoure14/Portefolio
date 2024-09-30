import 'package:flutter/material.dart';
import 'package:portefolio/pages/about.dart';
import 'package:portefolio/pages/contact.dart';
import 'package:portefolio/pages/portefolio.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentPage = 0;
  final String photo = "assets/image.jpg";
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    double currentWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          elevation: 23,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 50,
                height: 50,
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
                  child: Image.asset(photo, fit: BoxFit.cover, height: 50, width: 50),
                ),
              ),
              Text("Amadou TOuré".toUpperCase(), style: const TextStyle(color: Colors.white)),
              const SizedBox(width: 100),
            ],
          ),
          centerTitle: true,
          backgroundColor: const Color(0xFF052B68),
        ),
        body: <Widget>[const about(), const portefolio(), const contact()][currentPage],
        drawer: Drawer(
          width: currentWidth > 1344 ? 400 : currentWidth * 0.5,
          backgroundColor: Colors.black54,
          elevation: 23,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: Container(
                    width: currentWidth > 1344 ? 250 : 150,
                    height: currentWidth > 1344 ? 250 : 150,
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
                  child: Text(
                    "Amadou Touré".toUpperCase(),
                    style: TextStyle(
                      color: Colors.brown,
                      fontSize: currentWidth > 1344 ? 25 : 15,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
              const Divider(
                height: 2,
                color: Colors.brown,
                thickness: 4,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 58.0,bottom: 58),
                child: _buildDrawerItem(
                  icon: Icons.description,
                  text: 'Profil',
                  onTap: () {
                    setState(() {
                      currentPage = 0;
                    });
                    _scaffoldKey.currentState?.closeDrawer();
                  },
                ),
              ),
              const Divider(
                height: 2,
                color: Colors.brown,
                thickness: 4,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 58.0,bottom: 58),
                child: _buildDrawerItem(
                  icon: Icons.work_history,
                  text: 'Portefolio',
                  onTap: () {
                    setState(() {
                      currentPage = 1;
                    });
                    _scaffoldKey.currentState?.closeDrawer(); // Close the drawer
                  },
                ),
              ),
              const Divider(
                height: 2,
                color: Colors.brown,
                thickness: 4,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 58.0,bottom: 58),
                child: _buildDrawerItem(
                  icon: Icons.contact_page,
                  text: 'Contact',
                  onTap: () {
                    setState(() {
                      currentPage = 2;
                    });
                    _scaffoldKey.currentState?.closeDrawer(); // Close the drawer
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to build Drawer items
  ListTile _buildDrawerItem({
    required IconData icon,
    required String text,
    required VoidCallback onTap,
  }) {
    return ListTile(
      onTap: onTap,
      hoverColor: Colors.black,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(icon),
          Text(
            text.toUpperCase(),
            style: const TextStyle(color: Colors.brown),
          ),
          const SizedBox(width: 10)
        ],
      ),
    );
  }
}
