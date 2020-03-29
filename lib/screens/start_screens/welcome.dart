import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/custom_button.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
//    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
//      systemNavigationBarColor: Colors.blue, // navigation bar color
//      statusBarColor: Colors.transparent, // status bar color
//    ));
    return Scaffold(
      body: SafeArea(
        child: OrientationBuilder(
          builder: (context, orientation) => orientation == Orientation.portrait
                  ? _fullScreen()
                  : SingleChildScrollView(
                      child: _fullScreen(),
                    ),
        ),
      ),
    );
  }

  Widget _fullScreen() {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 35),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _header(),
          _image(),
          _footer(),
        ],
      ),
    );
  }

  // Screen Widgets (3) header image footer ...
  Container _header() {
    return Container(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: GoogleFonts.lato(fontSize: 20, color: Color(0xFF707070)),
            children: <TextSpan>[
              TextSpan(text: 'Welcome to '),
              TextSpan(
                  text: 'Beno \n',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'Explore Us'),
            ],
          ),
        ),
      ),
    );
  }

  Container _image() {
    return Container(
      alignment: Alignment.center,
      width: 300,
      child: Image.asset('assets/images/welcome.png', fit: BoxFit.cover),
    );
  }

  Container _footer() {
    return Container(
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          CustomButton(text: 'Log in'),
          FlatButton(
            onPressed: () {},
            child: Text('Signup', style: GoogleFonts.ubuntu(fontSize: 16)),
            textColor: Color(0xFF454242),
            padding: EdgeInsets.all(0),
          )
        ],
      ),
    );
  }
}
