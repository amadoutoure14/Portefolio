import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class portefolio extends StatefulWidget {
  const portefolio({super.key});

  @override
  State<portefolio> createState() => _portefolioState();
}

class _portefolioState extends State<portefolio> {
  @override
  Widget build(BuildContext context) {
    const String logoEpoissonnerie = "assets/logoepoissonnerie.png";
    const String github = "assets/github-logo.png";
    const String portefolio = "assets/image.jpg";

    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF052B68),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Text(
                  textAlign: TextAlign.center,
                  "portefolio".toUpperCase(),
                  style: const TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 23,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Dialog(
                            backgroundColor: Colors.transparent,
                            child: Card(
                              color: Colors.lightBlue,
                              elevation: 23,
                              child: Stack(
                                children: [
                                  Positioned.fill(
                                    child: Center(
                                      child: Image.asset(
                                        logoEpoissonnerie,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Center(
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 34.0, bottom: 28,left: 30, right: 30),
                                          child: Text(
                                            "epoissonnerie est un projet de mis en relation de vendeur et client de poisson cross-plateform ! Epoissonnerie est une application qui vous met à disposition des produits de qualités, un marché vaste offrant plus de débouchés et une facilité d'écoulement de vos produits.".toUpperCase(),
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                              fontWeight: FontWeight.w900,
                                              fontSize: 23
                                            )
                                          ),
                                        ),
                                      ),
                                      const Center(
                                        child: SizedBox(
                                          height: 500,
                                        ),
                                      ),
                                      Center(
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            GestureDetector(
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Image.asset(github,height: 200,width: 200,),
                                                  Text("epoissonnerie spring Api rest ".toUpperCase(),
                                                    style: const TextStyle(
                                                        fontSize: 23,
                                                        fontWeight: FontWeight.w900
                                                  ),)
                                                ],
                                              ),
                                              onTap:() {
                                                _launchUrlApi();
                                              },
                                            ),
                                            const SizedBox(
                                              width: 20,
                                            ),
                                            GestureDetector(
                                              child: Column(
                                                children: [
                                                  Image.asset(github,height: 200,width: 200,),
                                                  Text("epoissonnerie front end Flutter mobile".toUpperCase(),
                                                    style: const TextStyle(
                                                        fontSize: 23,
                                                        fontWeight: FontWeight.w900
                                                  ),)
                                                ],
                                              ),
                                              onTap:() {
                                                _launchUrlFront();
                                              },
                                            ),
                                            GestureDetector(
                                              child: Column(
                                                children: [
                                                  Image.asset(github,height: 200,width: 200,),
                                                  Text("epoissonnerie site publicitaire wordpress".toUpperCase(),
                                                    style: const TextStyle(
                                                        fontSize: 23,
                                                        fontWeight: FontWeight.w900
                                                  ),)
                                                ],
                                              ),
                                              onTap:() {
                                                _launchUrlPub();
                                              },
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: Card(
                      child: Center(
                        child: Image.asset(
                          logoEpoissonnerie,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Dialog(
                            backgroundColor: Colors.transparent,
                            child: Card(
                              color: Colors.cyanAccent,
                              elevation: 23,
                              child: Stack(
                                children: [
                                  Positioned.fill(
                                    child: Center(
                                      child: Container(
                                        width: 400,
                                        height: 400,
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
                                          borderRadius: BorderRadius.circular(400),
                                          child: Image.asset(
                                            portefolio,
                                            fit: BoxFit.cover,
                                            width: 250,
                                            height: 250,
                                          ),
                                        ),
                                      )
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Center(
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 34.0, bottom: 28,left: 30, right: 30),
                                          child: Text(
                                            "Mon portefolio entièrement conçu avec flutter accessible à travers toutes les plateformes".toUpperCase(),
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                              fontWeight: FontWeight.w900,
                                              fontSize: 23
                                            )
                                          ),
                                        ),
                                      ),
                                      const Center(
                                        child: SizedBox(
                                          height: 580,
                                        ),
                                      ),
                                      GestureDetector(
                                        child: Center(
                                          child: Column(
                                            children: [
                                              Image.asset(github,height: 200,width: 200,),
                                              Text("Mon portefolio".toUpperCase(),
                                                style: const TextStyle(
                                                    fontSize: 23,
                                                    fontWeight: FontWeight.w900
                                              ),)
                                            ],
                                          ),
                                        ),
                                        onTap: () => _launchUrlPortefolio,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: Card(
                      child:  Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Center(
                              child: Container(
                                width: 400,
                                height: 400,
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
                                  borderRadius: BorderRadius.circular(400),
                                  child: Image.asset(
                                    portefolio,
                                    fit: BoxFit.cover,
                                    width: 250,
                                    height: 250,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Center(child: Text(
                              "mon portefolio".toUpperCase(),
                            style: const TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 23
                            ),
                          ))
                        ],
                      )
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  final Uri _githubUrlApi = Uri.parse('https://github.com/amadoutoure14/epoissonnerie.git');
  final Uri _githubUrlFront = Uri.parse('https://github.com/amadoutoure14/frontepoissonnerie.git');
  final Uri _githubUrlPub = Uri.parse('');
  final Uri _githubUrlPortefolio = Uri.parse('');

  Future<void> _launchUrlApi() async {
    if (!await launchUrl(_githubUrlApi)) {
      throw Exception('Could not launch $_githubUrlApi');
    }
  }
  Future<void> _launchUrlFront() async {
    if (!await launchUrl(_githubUrlFront)) {
      throw Exception('Could not launch $_githubUrlFront');
    }
  }
  Future<void> _launchUrlPub() async {
    if (!await launchUrl(_githubUrlPub)) {
      throw Exception('Could not launch $_githubUrlPub');
    }
  }
  Future<void> _launchUrlPortefolio() async {
    if (!await launchUrl(_githubUrlPortefolio)) {
      throw Exception('Could not launch $_githubUrlPortefolio');
    }
  }

}
// <   >