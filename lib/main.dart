import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(spotify());
}

class spotify extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NamanPage(),
      theme: ThemeData(
          brightness: Brightness.light,
          textTheme: TextTheme(
              headlineLarge: TextStyle(
                  fontSize: 30, fontFamily: 'Spotify', color: Colors.white),
              headlineMedium: TextStyle(
                  fontSize: 21, fontFamily: 'Spotify', color: Colors.white),
              headlineSmall: TextStyle(
                  fontSize: 15, fontFamily: 'Spotify', color: Colors.white)),
          scaffoldBackgroundColor: Color.fromARGB(208, 69, 77, 79),
          shadowColor: Color.fromARGB(255, 119, 174, 198)),
    );
  }
}

var search = TextEditingController();
var arrimage = [
  "assets/images/01.png",
  "assets/images/02.png",
  "assets/images/03.png",
  "assets/images/04.png",
  "assets/images/05.png",
  "assets/images/06.png"
];
var arrtext = [
  "  Daily \n\t\t\tHits",
  "Arjit \n\t\t\tSingh",
  "  Sanam \n\t\t\tPuri",
  "Kishor\n \t\t\tKumar",
  "  Kelash\n \t\t\tkher",
  "Saved \n\t\t\tSongs"
];
var arrData = [
  {
    "Image0": "assets/images/001.png",
    "singer": "  Sonu\n Nigam",
  },
  {
    "Image0": "assets/images/002.png",
    "singer": "   KK",
  },
  {
    "Image0": "assets/images/003.png",
    "singer": "    AR \nRahman",
  },
  {
    "Image0": "assets/images/004.png",
    "singer": "Sankar\n   Md",
  },
  {
    "Image0": "assets/images/005.png",
    "singer": "Kumar \n Sanu",
  },
  {
    "Image0": "assets/images/006.png",
    "singer": "  Jubin \nNautiyal",
  },
  {
    "Image0": "assets/images/007.png",
    "singer": " Arjit \nSingh",
  },
  {
    "Image0": "assets/images/008.png",
    "singer": "Ariana \nGrande",
  },
  {
    "Image0": "assets/images/009.png",
    "singer": "Justin \nBieber",
  },
  {"Image0": "assets/images/0010.png", "singer": "Taylor \n Swift"}
];
var arrData2 = [
  "assets/images/A.png",
  "assets/images/B.png",
  "assets/images/C.png",
  "assets/images/D.png",
  "assets/images/E.png",
  "assets/images/F.png",
  "assets/images/G.png",
  "assets/images/H.png",
  "assets/images/I.png",
  "assets/images/J.png",
];
var arrData3 = [
  {
    'image00': "assets/images/i0.png",
    'types': "Music",
  },
  {
    'image00': "assets/images/i1.png",
    'types': "Podcast",
  },
  {
    'image00': "assets/images/i2.png",
    'types': "Live Events",
  },
  {
    'image00': "assets/images/i3.png",
    'types': "For You",
  },
  {
    'image00': "assets/images/i4.png",
    'types': "New Releases",
  },
  {
    'image00': "assets/images/i5.png",
    'types': "Hindi",
  },
  {
    'image00': "assets/images/i6.png",
    'types': "Punjabi",
  },
  {
    'image00': "assets/images/i7.png",
    'types': "Tamil",
  },
  {
    'image00': "assets/images/i8.png",
    'types': "Charts",
  },
  {
    'image00': "assets/images/i9.png",
    'types': "Podcasts",
  },
  {
    'image00': "assets/images/i10.png",
    'types': "Radio",
  },
  {'image00': "assets/images/i11.png", 'types': "Pop"}
];

class NamanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: navigationBar(),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment(1.0, 1.0),
                  colors: [Color(0xffa7a6cb), Color(0xff8989ba)])),
          child: ListView(
            children: [
              child01(),
              child02(),
              child03(),
              child04(),
              child05(),
              child06(),
              child07(),
              child08(),
              child09(),
            ],
          ),
        ));
  }
}

class navigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
        tileColor: Color.fromARGB(255, 39, 34, 48),
        leading: Container(
          height: 50,
          child: Image.asset("assets/images/i5.png"),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            boxShadow: [BoxShadow(spreadRadius: 5, blurRadius: 5)],
            /*image:
                  DecorationImage(image: AssetImage("assets/images/i5.png"))*/
          ),
        ),
        title: Text(
          "Yeh Sham Mastani",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        subtitle: Text(
          "Kishore Kumar",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        trailing: Icon(
          Icons.play_arrow_rounded,
          size: 40,
          color: Colors.white,
        ));
  }
}

class child01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 20),
        height: 50,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 6,
                child: Text("Good Morning",
                    style: Theme.of(context).textTheme.headlineLarge),
              ),
              Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  )),
              Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.recommend_rounded,
                    color: Colors.white,
                  )),
              Expanded(
                  flex: 1,
                  child: IconButton(
                    color: Colors.white,
                    icon: Icon(Icons.settings),
                    onPressed: () {
                      print(
                          "The following click will affect the setting of the app");
                    },
                  ))
            ],
          ),
        ));
  }
}

class child02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextField(
        controller: search,
        decoration: InputDecoration(
            filled: true,
            fillColor: Color.fromARGB(255, 88, 94, 97),
            hintText: "Search Song...",
            hintStyle: (Theme.of(context).textTheme.headlineMedium),
            prefixIcon: InkWell(
              onTap: () {
                String nksearch = search.text;
                print("Search song :$nksearch");
              },
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            suffixIcon: IconButton(
              icon: Icon(Icons.audiotrack_outlined),
              onPressed: () =>
                  print("Upload your Audio in Order to search for the song "),
              color: Colors.white,
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(
                    width: 3, color: Color.fromARGB(255, 20, 20, 20))),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    width: 3, color: Color.fromARGB(255, 120, 153, 170)),
                borderRadius: BorderRadius.circular(30))),
      ),
    );
  }
}

class child03 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            mainAxisExtent: 70), //very very important elemnt
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 73, 102, 115),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(blurRadius: 5, spreadRadius: 5)
                ] //check blurstyle.inner also
                ),
            child: Row(
              children: [
                Container(
                    width: 80, height: 65, child: Image.asset(arrimage[index])),
                Text(
                  arrtext[index],
                  style: Theme.of(context).textTheme.headlineMedium,
                )
              ],
            ),
          );
        },
        itemCount: arrimage.length,
      ),
    );
  }
}

class child04 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: Align(
        alignment: Alignment(-1, 0),
        child: Text(
          "Jump back in",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
    );
  }
}

class child05 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: arrData
            .map(
              (value) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 55,
                      backgroundImage: AssetImage(value['Image0'].toString()),
                    ),
                    Text(
                      value['singer'].toString(),
                      style: Theme.of(context).textTheme.headlineMedium,
                    )
                  ],
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

class child06 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: Align(
        alignment: Alignment(-1, 0),
        child: Text(
          "Episodes for you",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
    );
  }
}

class child07 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(arrData2[index]), fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      spreadRadius: 5,
                      // color: Color.fromARGB(255, 141, 181, 200)
                    )
                  ]),
            ),
          );
        },
        itemCount: arrData2.length,
        itemExtent: 120,
      ),
    );
  }
}

class child08 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: Align(
        alignment: Alignment(-1, 0),
        child: Text(
          "Browse all",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
    );
  }
}

class child09 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 650,
      child: GridView(
          padding: EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 20, crossAxisSpacing: 20),
          children: arrData3
              .map((value3) => Column(
                    children: [
                      Container(
                        height: 150,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 5,
                                spreadRadius: 5,
                                color: Colors.black)
                          ],
                          image: DecorationImage(
                              filterQuality: FilterQuality.high,
                              fit: BoxFit.cover,
                              image: AssetImage(value3['image00'].toString())),
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        value3['types'].toString(), //text
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ],
                  ))
              .toList()),
    );
  }
}
