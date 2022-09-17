import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatelessWidget {
  Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        height: 850,
        width: 800,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: Image.asset("assets/background.gif").image)),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Center(
                  child: Row(
                    children: [
                      const Spacer(
                        flex: 1,
                      ),
                      const Expanded(
                        flex: 2,
                        child: Center(
                          child: Icon(
                            Icons.chevron_left,
                            size: 40,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const Spacer(
                        flex: 2,
                      ),
                      Expanded(
                        flex: 2,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Image.asset("assets/search.png"),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 10,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text(
                            "Discover",
                            style: GoogleFonts.sniglet(
                                color: const Color.fromARGB(197, 24, 6, 6),
                                fontSize: 30),
                          ),
                        ),
                      ),
                      const Expanded(
                        flex: 2,
                        child: Center(
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Color(0xffead4dc),
                            child: Icon(
                              Icons.notifications,
                              color: Color.fromARGB(169, 44, 49, 49),
                              size: 25,
                            ),
                          ),
                        ),
                      ),
                      const Spacer(
                        flex: 1,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                width: 220,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 223, 137, 166),
                        width: 5),
                    borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.height),
                    image: DecorationImage(
                        image: Image.asset("assets/girl.jpg").image)),
              ),
            ),
            const Spacer(
              flex: 2,
            ),
            Expanded(
              flex: 1,
              child: Text(
                "Jasmine Jonas",
                style: GoogleFonts.sniglet(
                    color: const Color.fromARGB(197, 24, 6, 6), fontSize: 30),
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "About",
                    style: GoogleFonts.sniglet(
                        color: const Color.fromARGB(197, 24, 6, 6),
                        fontSize: 15),
                  ),
                  Text(
                    "See more",
                    style: GoogleFonts.sniglet(
                        color: const Color.fromARGB(197, 226, 105, 146),
                        fontSize: 15),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Text(
                "Aliquyam voluptua sadipscing et lorem eos dolor sit, eos sed stet clita elitr ipsum. Magna tempor ut et clita duo et magna ea. Ea accusam invidunt invidunt sanctus, magna eos.",
                style: GoogleFonts.sniglet(
                    color: const Color.fromARGB(197, 78, 51, 60), fontSize: 12),
              ),
            ),
            Expanded(
              flex: 2,
              child: Wrap(
                children: interests
                    .map((e) => Container(
                          margin: const EdgeInsets.only(left: 15, bottom: 10),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 5),
                          height: 35,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(197, 226, 105, 146),
                            borderRadius: BorderRadius.circular(35),
                          ),
                          child: Text(
                            e,
                            style: GoogleFonts.sniglet(
                                color: const Color.fromARGB(197, 78, 51, 60),
                                fontSize: 15),
                          ),
                        ))
                    .toList(),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Spacer(
                      flex: 1,
                    ),
                    Expanded(
                      flex: 2,
                      child: Material(
                          shape: CircleBorder(),
                          elevation: 5,
                          child: CircleAvatar(
                            radius: 28,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Entypo.cross,
                              size: 30,
                              color: Color.fromARGB(197, 78, 51, 60),
                            ),
                          )),
                    ),
                    Expanded(
                      flex: 2,
                      child: Material(
                          shape: CircleBorder(),
                          elevation: 5,
                          child: CircleAvatar(
                            radius: 40,
                            backgroundColor: Colors.pink,
                            child: Icon(
                              AntDesign.heart,
                              size: 30,
                              color: Colors.white,
                            ),
                          )),
                    ),
                    Expanded(
                      flex: 2,
                      child: Material(
                          shape: CircleBorder(),
                          elevation: 5,
                          child: CircleAvatar(
                            radius: 28,
                            backgroundColor: Colors.white,
                            child: Icon(
                              AntDesign.star,
                              size: 30,
                              color: Colors.amber,
                            ),
                          )),
                    ),
                    Spacer(
                      flex: 1,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<String> interests = [
    "Dancing",
    "Art",
    "Engineering",
    "Singing",
    "Swimming"
  ];
}
