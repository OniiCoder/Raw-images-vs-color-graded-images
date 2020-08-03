import 'package:film_luts/models/FilmGrade.dart';
import 'package:flutter/material.dart';
import 'package:juxtapose/juxtapose.dart';


import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<FilmGrade> _listOfFilmGrades = [
    FilmGrade(
      before: 'images/1a.jpg',
      after: 'images/1b.jpg',
      title: 'A Cure of Wellness (2016)',
      caption: 'Graded with LUT H-9120 80%'
    ),
    FilmGrade(
        before: 'images/2a.jpg',
        after: 'images/2b.jpg',
        title: 'J SPRUILL (Sony a6000)',
        caption: 'Graded with LUT W-9270'
    ),
    FilmGrade(
        before: 'images/3a.jpg',
        after: 'images/3b.jpg',
        title: 'Aerial Film Australia',
        caption: 'Graded with LUT F-9650'
    ),
    FilmGrade(
        before: 'images/4a.jpg',
        after: 'images/4b.jpg',
        title: 'Spectre (2015)',
        caption: 'Graded with LUT C-9750'
    ),
    FilmGrade(
        before: 'images/5a.jpg',
        after: 'images/5b.jpg',
        title: 'Afcinema',
        caption: 'Graded with LUT W-8700-V2'
    ),
    FilmGrade(
        before: 'images/6a.jpg',
        after: 'images/6b.jpg',
        title: 'The Bling Ring (2013)',
        caption: 'Graded with LUT X-9400'
    ),
    FilmGrade(
        before: 'images/7a.jpg',
        after: 'images/7b.jpg',
        title: 'Derek Mindler (RED Epic)',
        caption: 'Graded with LUT F-8680'
    ),
    FilmGrade(
        before: 'images/8a.jpg',
        after: 'images/8b.jpg',
        title: 'A Photo Editor (RED Dragon)',
        caption: 'Graded with LUT C-9760'
    ),
    FilmGrade(
        before: 'images/9a.jpg',
        after: 'images/9b.jpg',
        title: 'Annie (2014)',
        caption: 'Graded with LUT C-9020'
    ),
    FilmGrade(
        before: 'images/10a.jpg',
        after: 'images/10b.jpg',
        title: 'The Walking Dead (2016)',
        caption: 'Graded with LUT W-9570'
    ),
    FilmGrade(
        before: 'images/11a.jpg',
        after: 'images/11b.jpg',
        title: 'Terminator Genisys (2015)',
        caption: 'Graded with LUT W-9660 + skin tones adjustments'
    ),
    FilmGrade(
        before: 'images/12a.jpg',
        after: 'images/12b.jpg',
        title: 'Shadowhunters (2016)',
        caption: 'Graded with LUT F-8700-V2'
    ),
    FilmGrade(
        before: 'images/13a.jpg',
        after: 'images/13b.jpg',
        title: 'Captain America: First Avenger (2011)',
        caption: 'Graded with LUT W-9710 + skin tones adjustments'
    ),
    FilmGrade(
        before: 'images/14a.jpg',
        after: 'images/14b.jpg',
        title: 'Olan Collardy (Blackmagic URSA Mini 4.6K)',
        caption: 'Graded with LUT C-9750'
    ),
  ];

  int selection = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff181B20),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 400,
              child: Juxtapose(
                backgroundColor: Colors.black,
                foregroundWidget: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(_listOfFilmGrades[selection].before),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                backgroundWidget: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(_listOfFilmGrades[selection].after),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 22),
                        child: Column(
                          children: [
                            SizedBox(height: 20,),
                            Text(
                              'Move mouse over images for before-after.',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 40,),
                            Text(
                              (selection + 1).toString(),
                              style: TextStyle(
                                fontSize: 34,
                                color: Colors.grey[400],
                              ),
                            ),
                            SizedBox(height: 40,),
                            Text(
                              _listOfFilmGrades[selection].title,
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 10,),
                            Text(
                              _listOfFilmGrades[selection].caption,
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Color(0xff00274A),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              flex: 1,
                              child: FlatButton(
                                onPressed: () {
                                    setState(() {
                                      if(selection <= 0) {
                                        selection = _listOfFilmGrades.length - 1;
                                      } else {
                                        selection = selection - 1;
                                      }
                                    });
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.arrow_back,
                                      color: Colors.white,
                                    ),
                                    SizedBox(width: 10,),
                                    Text(
                                      'PREVIOUS',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                )
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: FlatButton(
                                onPressed: () {
                                  setState(() {
                                    if(selection == (_listOfFilmGrades.length -1)) {
                                      selection = 0;
                                    } else {
                                      selection = selection + 1;
                                    }
                                  });
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'NEXT',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(width: 10,),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
