import 'package:flutter/material.dart';
import 'package:focused_menu/modals.dart';
import 'package:project2/service.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:project2/pages/short.dart';
import 'package:project2/pages/long.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:focused_menu/focused_menu.dart';
import 'dart:js';
import 'dart:html' as html;

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: GlobalContextService.navigatorKey, // set property
      home: SliverAppBarExample(),
    );
  }
}

class SliverAppBarExample extends StatefulWidget {
  const SliverAppBarExample({super.key});

  @override
  State<SliverAppBarExample> createState() => _SliverAppBarExampleState();
}

class Section extends MultiSliver {
  Section({
    Key? key,
    required String title,
    Color headerColor = Colors.white,
    Color titleColor = Colors.white,
    required List name,
    required List image,
    required List pathWiki,
    required List pathIMDb,
    required List director,
    required List actors,
    required List duration,
    required List rating,
  }) : super(
          key: key,
          pushPinnedChildren:
              false, // change to true if you want headers to change instead of stack
          children: [
            SliverPinnedHeader(
              child: ColoredBox(
                color: headerColor,
                child: ListTile(
                  textColor: titleColor,
                  title: Text(title),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 200.0,
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  FocusedMenuHolder(
                    onPressed: () {
                      Navigator.push(
                          GlobalContextService.navigatorKey.currentContext!,
                          MaterialPageRoute(
                              builder: (context) => ShortClick(
                                  image: image[0], pathIMDb: pathIMDb[0])));
                    },
                    menuItems: <FocusedMenuItem>[
                      FocusedMenuItem(
                          title: Text("Movie Details"),
                          onPressed: () {
                            Navigator.push(
                                GlobalContextService
                                    .navigatorKey.currentContext!,
                                MaterialPageRoute(
                                    builder: (context) => LongClick(
                                        name: name[0],
                                        director: director[0],
                                        actors: actors[0],
                                        duration: duration[0],
                                        rating: rating[0])));
                          }),
                      FocusedMenuItem(
                          title: Text("Open Wiki"),
                          onPressed: () async {
                            html.window.open(pathWiki[0],
                                'Test'); // Comment out this line to launch IMDb in the emulator
                            if (await canLaunch(pathWiki[0])) {
                              await launch(pathWiki[0]); // forceWebView = true
                            } else {
                              throw 'Could not launch $pathIMDb';
                            }
                          }),
                      FocusedMenuItem(
                          title: Text("Open IMDb"),
                          onPressed: () async {
                            html.window.open(pathIMDb[0],
                                'Test'); // Comment out this line to launch IMDb in the emulator
                            if (await canLaunch(pathIMDb[0])) {
                              await launch(pathIMDb[0]); // forceWebView = true
                            } else {
                              throw 'Could not launch $pathIMDb';
                            }
                          }),
                    ],
                    child: Container(
                      height: 200,
                      width: 150,
                      margin:
                          EdgeInsets.only(bottom: 2, left: 2, right: 2, top: 2),
                      color: Color.fromARGB(255, 100, 106, 111),
                      child: Image.network(image[0]),
                    ),
                  ),
                  FocusedMenuHolder(
                    onPressed: () {
                      Navigator.push(
                          GlobalContextService.navigatorKey.currentContext!,
                          MaterialPageRoute(
                              builder: (context) => ShortClick(
                                  image: image[1], pathIMDb: pathIMDb[1])));
                    },
                    menuItems: <FocusedMenuItem>[
                      FocusedMenuItem(
                          title: Text("Movie Details"),
                          onPressed: () {
                            Navigator.push(
                                GlobalContextService
                                    .navigatorKey.currentContext!,
                                MaterialPageRoute(
                                    builder: (context) => LongClick(
                                        name: name[1],
                                        director: director[1],
                                        actors: actors[1],
                                        duration: duration[1],
                                        rating: rating[1])));
                          }),
                      FocusedMenuItem(
                          title: Text("Open Wiki"),
                          onPressed: () async {
                            html.window.open(pathWiki[1],
                                'Test'); // Comment out this line to launch IMDb in the emulator
                            if (await canLaunch(pathWiki[1])) {
                              await launch(pathWiki[1]); // forceWebView = true
                            } else {
                              throw 'Could not launch $pathIMDb';
                            }
                          }),
                      FocusedMenuItem(
                          title: Text("Open IMDb"),
                          onPressed: () async {
                            html.window.open(pathIMDb[1],
                                'Test'); // Comment out this line to launch IMDb in the emulator
                            if (await canLaunch(pathIMDb[1])) {
                              await launch(pathIMDb[1]); // forceWebView = true
                            } else {
                              throw 'Could not launch $pathIMDb';
                            }
                          }),
                    ],
                    child: Container(
                      height: 200,
                      width: 150,
                      margin:
                          EdgeInsets.only(bottom: 2, left: 2, right: 2, top: 2),
                      color: Color.fromARGB(255, 100, 106, 111),
                      child: Image.network(image[1]),
                    ),
                  ),
                  FocusedMenuHolder(
                    onPressed: () {
                      Navigator.push(
                          GlobalContextService.navigatorKey.currentContext!,
                          MaterialPageRoute(
                              builder: (context) => ShortClick(
                                  image: image[2], pathIMDb: pathIMDb[2])));
                    },
                    menuItems: <FocusedMenuItem>[
                      FocusedMenuItem(
                          title: Text("Movie Details"),
                          onPressed: () {
                            Navigator.push(
                                GlobalContextService
                                    .navigatorKey.currentContext!,
                                MaterialPageRoute(
                                    builder: (context) => LongClick(
                                        name: name[2],
                                        director: director[2],
                                        actors: actors[2],
                                        duration: duration[2],
                                        rating: rating[2])));
                          }),
                      FocusedMenuItem(
                          title: Text("Open Wiki"),
                          onPressed: () async {
                            html.window.open(pathWiki[2],
                                'Test'); // Comment out this line to launch IMDb in the emulator
                            if (await canLaunch(pathWiki[2])) {
                              await launch(pathWiki[2]); // forceWebView = true
                            } else {
                              throw 'Could not launch $pathIMDb';
                            }
                          }),
                      FocusedMenuItem(
                          title: Text("Open IMDb"),
                          onPressed: () async {
                            html.window.open(pathIMDb[2],
                                'Test'); // Comment out this line to launch IMDb in the emulator
                            if (await canLaunch(pathIMDb[2])) {
                              await launch(pathIMDb[2]); // forceWebView = true
                            } else {
                              throw 'Could not launch $pathIMDb';
                            }
                          }),
                    ],
                    child: Container(
                      height: 200,
                      width: 150,
                      margin:
                          EdgeInsets.only(bottom: 2, left: 2, right: 2, top: 2),
                      color: Color.fromARGB(255, 100, 106, 111),
                      child: Image.network(image[2]),
                    ),
                  ),
                  FocusedMenuHolder(
                    onPressed: () {
                      Navigator.push(
                          GlobalContextService.navigatorKey.currentContext!,
                          MaterialPageRoute(
                              builder: (context) => ShortClick(
                                  image: image[3], pathIMDb: pathIMDb[3])));
                    },
                    menuItems: <FocusedMenuItem>[
                      FocusedMenuItem(
                          title: Text("Movie Details"),
                          onPressed: () {
                            Navigator.push(
                                GlobalContextService
                                    .navigatorKey.currentContext!,
                                MaterialPageRoute(
                                    builder: (context) => LongClick(
                                        name: name[3],
                                        director: director[3],
                                        actors: actors[3],
                                        duration: duration[3],
                                        rating: rating[3])));
                          }),
                      FocusedMenuItem(
                          title: Text("Open Wiki"),
                          onPressed: () async {
                            html.window.open(pathWiki[3],
                                'Test'); // Comment out this line to launch IMDb in the emulator
                            if (await canLaunch(pathWiki[3])) {
                              await launch(pathWiki[3]); // forceWebView = true
                            } else {
                              throw 'Could not launch $pathIMDb';
                            }
                          }),
                      FocusedMenuItem(
                          title: Text("Open IMDb"),
                          onPressed: () async {
                            html.window.open(pathIMDb[3],
                                'Test'); // Comment out this line to launch IMDb in the emulator
                            if (await canLaunch(pathIMDb[3])) {
                              await launch(pathIMDb[3]); // forceWebView = true
                            } else {
                              throw 'Could not launch $pathIMDb';
                            }
                          }),
                    ],
                    child: Container(
                      height: 200,
                      width: 150,
                      margin:
                          EdgeInsets.only(bottom: 2, left: 2, right: 2, top: 2),
                      color: Color.fromARGB(255, 100, 106, 111),
                      child: Image.network(image[3]),
                    ),
                  ),
                  FocusedMenuHolder(
                    onPressed: () {
                      Navigator.push(
                          GlobalContextService.navigatorKey.currentContext!,
                          MaterialPageRoute(
                              builder: (context) => ShortClick(
                                  image: image[0], pathIMDb: pathIMDb[0])));
                    },
                    menuItems: <FocusedMenuItem>[
                      FocusedMenuItem(
                          title: Text("Movie Details"),
                          onPressed: () {
                            Navigator.push(
                                GlobalContextService
                                    .navigatorKey.currentContext!,
                                MaterialPageRoute(
                                    builder: (context) => LongClick(
                                        name: name[4],
                                        director: director[4],
                                        actors: actors[4],
                                        duration: duration[4],
                                        rating: rating[4])));
                          }),
                      FocusedMenuItem(
                          title: Text("Open Wiki"),
                          onPressed: () async {
                            html.window.open(pathWiki[4],
                                'Test'); // Comment out this line to launch IMDb in the emulator
                            if (await canLaunch(pathWiki[4])) {
                              await launch(pathWiki[4]); // forceWebView = true
                            } else {
                              throw 'Could not launch $pathIMDb';
                            }
                          }),
                      FocusedMenuItem(
                          title: Text("Open IMDb"),
                          onPressed: () async {
                            html.window.open(pathIMDb[4],
                                'Test'); // Comment out this line to launch IMDb in the emulator
                            if (await canLaunch(pathIMDb[4])) {
                              await launch(pathIMDb[4]); // forceWebView = true
                            } else {
                              throw 'Could not launch $pathIMDb';
                            }
                          }),
                    ],
                    child: Container(
                      height: 200,
                      width: 150,
                      margin:
                          EdgeInsets.only(bottom: 2, left: 2, right: 2, top: 2),
                      color: Color.fromARGB(255, 100, 106, 111),
                      child: Image.network(image[4]),
                    ),
                  ),
                ]),
              ),
            ),
          ],
        ) {
    // TODO: implement Section
  }
}

class _SliverAppBarExampleState extends State<SliverAppBarExample> {
  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;

// [SliverAppBar]s are typically used in [CustomScrollView.slivers], which in
// turn can be placed in a [Scaffold.body].
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Color.fromRGBO(0, 0, 0, 1.0),
            pinned: _pinned,
            snap: _snap,
            floating: _floating,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text('Movies App'),
              background: Image.network(
                "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Section(
            // Each section responsible for the movie genres
            title: 'Horror',
            headerColor: Color.fromARGB(255, 45, 56, 65),
            name: ['IT', 'Midsommar', 'Pearl', 'Cube', 'US'],
            image: [
              "https://upload.wikimedia.org/wikipedia/en/5/5a/It_%282017%29_poster.jpg",
              "https://upload.wikimedia.org/wikipedia/en/4/47/Midsommar_%282019_film_poster%29.png?20190508154616",
              "https://upload.wikimedia.org/wikipedia/en/5/5b/Pearl_theatricalposter.jpg",
              "https://upload.wikimedia.org/wikipedia/en/0/0c/Cube_The_Movie_Poster_Art.jpg",
              "https://upload.wikimedia.org/wikipedia/en/0/00/Us_%282019%29_theatrical_poster.png"
            ],
            pathWiki: [
              "https://en.wikipedia.org/wiki/It_(2017_film)",
              "https://en.wikipedia.org/wiki/Midsommar",
              "https://en.wikipedia.org/wiki/Pearl_(2022_film)",
              "https://en.wikipedia.org/wiki/Cube_(1997_film)",
              "https://en.wikipedia.org/wiki/Us_(2019_film)"
            ],
            pathIMDb: [
              "https://www.imdb.com/title/tt1396484/?ref_=nv_sr_srsg_0",
              "https://www.imdb.com/title/tt8772262/?ref_=nv_sr_srsg_0",
              "https://www.imdb.com/title/tt18925334/?ref_=nv_sr_srsg_0",
              "https://www.imdb.com/title/tt0123755/?ref_=fn_al_tt_1",
              "https://www.imdb.com/title/tt6857112/?ref_=nv_sr_srsg_0",
            ],
            director: [
              "Andy Muschietti",
              "Ari Aster",
              "Ti West",
              "Vincenzo Natali",
              "Jordan Peele"
            ],
            actors: [
              "Finn Wolfhard, Jaeden Martell",
              "Florence Pugh, Jack Reynor",
              "Mia Goth, David Corenswet",
              "Nicole de Boer, Maurice Dean Wint",
              "Winston Duke, Elisabeth Moss"
            ],
            duration: ["2h 15m", "2h 28m", "1h 43m", "1h 30m", "1h 56m"],
            rating: ["7.3/10", "7.1/10", "7.1/10", "7.2/10", "6.8/10"],
          ),
          Section(
            title: 'Drama',
            headerColor: Color.fromARGB(255, 78, 96, 111),
            name: [
              'Old',
              'Where the Crawdads sing',
              'The Good nurse',
              'My Policeman',
              'Amsterdam'
            ],
            image: [
              "https://upload.wikimedia.org/wikipedia/en/9/99/Old_%28film%29_poster.jpg",
              "https://upload.wikimedia.org/wikipedia/en/2/23/Where_the_Crawdads_Sing_%28film%29.jpg",
              "https://upload.wikimedia.org/wikipedia/en/0/03/Good_nurse.jpg",
              "https://upload.wikimedia.org/wikipedia/en/3/34/My_Policeman_%28film%29.jpg",
              "https://upload.wikimedia.org/wikipedia/en/3/3c/Amsterdam_%282022_film%29.jpg"
            ],
            pathWiki: [
              "https://en.wikipedia.org/wiki/Old_(film)",
              "https://en.wikipedia.org/wiki/Where_the_Crawdads_Sing_(film)",
              "https://en.wikipedia.org/wiki/The_Good_Nurse",
              "https://en.wikipedia.org/wiki/My_Policeman_(film)",
              "https://en.wikipedia.org/wiki/Amsterdam_(2022_film)"
            ],
            pathIMDb: [
              "https://www.imdb.com/title/tt10954652/?ref_=nv_sr_srsg_0",
              "https://www.imdb.com/title/tt9411972/?ref_=nv_sr_srsg_0",
              "https://www.imdb.com/title/tt4273800/?ref_=nv_sr_srsg_0",
              "https://www.imdb.com/title/tt13139228/?ref_=nv_sr_srsg_0",
              "https://www.imdb.com/title/tt10304142/?ref_=nv_sr_srsg_0",
            ],
            director: [
              "M. Night Shyamalan",
              "Lovia Newman",
              "Michael Grandage",
              "David O. Russell"
            ],
            actors: [
              "Vicky Krieps, Rufus Sewell",
              "Daisy Edgar-jones, Taylor John Smith",
              "Harry Styles, Emma Corrin",
              "Christian Bale, Margot Robbie"
            ],
            duration: ["1h 48m", "2h 5m", "1h 53m", "2h 14m"],
            rating: ["5.8/10", "7.1/10", "6.5/10", "6.1/10"],
          ),
          Section(
            title: 'Documentary',
            headerColor: Color.fromARGB(255, 45, 56, 65),
            name: [
              'March of the Penguins',
              'When We Were Kings',
              'Paris is Burning',
              'Amy',
              'The Act of Killing'
            ],
            image: [
              "https://upload.wikimedia.org/wikipedia/en/1/19/March_of_the_penguins_poster.jpg",
              "https://upload.wikimedia.org/wikipedia/en/0/0d/When_We_Were_Kings_DVD_Cover_art.jpg",
              "https://upload.wikimedia.org/wikipedia/en/0/0d/Paris-is-burning-movie-poster-md.jpg",
              "https://upload.wikimedia.org/wikipedia/en/9/98/Amy_%282015_film%29_poster.png",
              "https://upload.wikimedia.org/wikipedia/en/c/ca/The_Act_of_Killing_%282012_film%29.jpg"
            ],
            pathWiki: [
              "https://en.wikipedia.org/wiki/March_of_the_Penguins",
              "https://en.wikipedia.org/wiki/When_We_Were_Kings",
              "https://en.wikipedia.org/wiki/Paris_Is_Burning_(film)",
              "https://en.wikipedia.org/wiki/Amy_(2015_film)",
              "https://en.wikipedia.org/wiki/The_Act_of_Killing"
            ],
            pathIMDb: [
              "https://www.imdb.com/title/tt0428803/?ref_=nv_sr_srsg_0",
              "https://www.imdb.com/title/tt0118147/?ref_=nv_sr_srsg_4",
              "https://www.imdb.com/title/tt0100332/?ref_=nv_sr_srsg_0",
              "https://www.imdb.com/title/tt2870648/",
              "https://www.imdb.com/title/tt2375605/?ref_=nv_sr_srsg_0",
            ],
            director: [
              "Luc Jacquet",
              "Leon Gast",
              "Jennie Livingston",
              "Asif Kapadia",
              "Josua Oppenheimer"
            ],
            actors: [
              "Morgan Freeman, Romane Bohringer",
              "Muhammad Ali, George Foreman",
              "Brooke Xtravaganza, Andre Christian",
              "Amy Winehouse, Micth Winehouse",
              "Anwar Congo, Herman Koto"
            ],
            duration: ["1h 20m", "1h 28m", "1h 11m", "2h 8m", "1h 57m"],
            rating: ["7.5/10", "8.0/10", "8.1/10", "7.8/10", "8.2/10"],
          ),
          Section(
            title: 'Action',
            headerColor: Color.fromARGB(255, 78, 96, 111),
            name: [
              'All Quiet on the Western Front',
              'Avatar: The Way of Water',
              'Black Panther: Wakanda Forever',
              'Enola Holmes 2',
              'Bullet Train'
            ],
            image: [
              "https://upload.wikimedia.org/wikipedia/en/c/c3/All_quiet_on_the_western_front_%282022_film%29.jpg",
              "https://upload.wikimedia.org/wikipedia/en/5/54/Avatar_The_Way_of_Water_poster.jpg",
              "https://upload.wikimedia.org/wikipedia/en/3/3b/Black_Panther_Wakanda_Forever_poster.jpg",
              "https://upload.wikimedia.org/wikipedia/en/4/4b/Enola_Holmes_2_poster.png",
              "https://upload.wikimedia.org/wikipedia/en/1/13/Bullet_Train_%28poster%29.jpeg"
            ],
            pathWiki: [
              "https://en.wikipedia.org/wiki/All_Quiet_on_the_Western_Front_(2022_film)",
              "https://en.wikipedia.org/wiki/Avatar:_The_Way_of_Water",
              "https://en.wikipedia.org/wiki/Black_Panther:_Wakanda_Forever",
              "https://en.wikipedia.org/wiki/Enola_Holmes_2",
              "https://en.wikipedia.org/wiki/Bullet_Train_(film)"
            ],
            pathIMDb: [
              "https://www.imdb.com/title/tt1016150/?ref_=nv_sr_srsg_0",
              "https://www.imdb.com/title/tt1630029/?ref_=nv_sr_srsg_0",
              "https://www.imdb.com/title/tt9114286/?ref_=nv_sr_srsg_0",
              "https://www.imdb.com/title/tt14641788/?ref_=nv_sr_srsg_0",
              "https://www.imdb.com/title/tt12593682/?ref_=nv_sr_srsg_0",
            ],
            director: [
              "Luc Jacquet",
              "Leon Gast",
              "Jennie Livingston",
              "Asif Kapadia",
              "Josua Oppenheimer"
            ],
            actors: [
              "Morgan Freeman, Romane Bohringer",
              "Muhammad Ali, George Foreman",
              "Brooke Xtravaganza, Andre Christian",
              "Amy Winehouse, Micth Winehouse",
              "Anwar Congo, Herman Koto"
            ],
            duration: ["1h 20m", "1h 28m", "1h 11m", "2h 8m", "1h 57m"],
            rating: ["7.5/10", "8.0/10", "8.1/10", "7.8/10", "8.2/10"],
          ),
          Section(
            title: 'Commedy',
            headerColor: Color.fromARGB(255, 45, 56, 65),
            name: [
              'The Hot Chick ',
              'Step Brothers',
              'The Hangover',
              'Bad Teacher',
              'The Bounty Hunter'
            ],
            image: [
              "https://upload.wikimedia.org/wikipedia/en/8/83/The_Hot_Chick_poster.jpg",
              "https://upload.wikimedia.org/wikipedia/en/d/d9/StepbrothersMP08.jpg",
              "https://upload.wikimedia.org/wikipedia/en/b/b9/Hangoverposter09.jpg",
              "https://upload.wikimedia.org/wikipedia/en/b/b2/Bad_Teacher_Poster.jpg",
              "https://upload.wikimedia.org/wikipedia/en/8/88/Bounty_hunter_poster.jpg"
            ],
            pathWiki: [
              "https://en.wikipedia.org/wiki/The_Hot_Chick",
              "https://en.wikipedia.org/wiki/Step_Brothers_(film)",
              "https://en.wikipedia.org/wiki/The_Hangover",
              "https://en.wikipedia.org/wiki/Bad_Teacher",
              "https://en.wikipedia.org/wiki/The_Bounty_Hunter_(2010_film)"
            ],
            pathIMDb: [
              "https://www.imdb.com/title/tt0302640/?ref_=nv_sr_srsg_0",
              "https://www.imdb.com/title/tt0838283/?ref_=nv_sr_srsg_0",
              "https://www.imdb.com/title/tt1119646/?ref_=nv_sr_srsg_0",
              "https://www.imdb.com/title/tt1284575/?ref_=nv_sr_srsg_0",
              "https://www.imdb.com/title/tt1038919/?ref_=nv_sr_srsg_0",
            ],
            director: [
              "Luc Jacquet",
              "Leon Gast",
              "Jennie Livingston",
              "Asif Kapadia",
              "Josua Oppenheimer"
            ],
            actors: [
              "Morgan Freeman, Romane Bohringer",
              "Muhammad Ali, George Foreman",
              "Brooke Xtravaganza, Andre Christian",
              "Amy Winehouse, Micth Winehouse",
              "Anwar Congo, Herman Koto"
            ],
            duration: ["1h 20m", "1h 28m", "1h 11m", "2h 8m", "1h 57m"],
            rating: ["7.5/10", "8.0/10", "8.1/10", "7.8/10", "8.2/10"],
          ),
        ],
      ),
    );
  }
}
