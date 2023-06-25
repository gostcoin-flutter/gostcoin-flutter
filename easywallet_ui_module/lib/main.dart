import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_bootstrap5/flutter_bootstrap5.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FlutterBootstrap5 (builder: (ctx) => MaterialApp(
      title: 'Easy Wallet',
      theme: _buildTheme(Brightness.light),
      home: const MyHomePage(title: 'Easy Wallet'),
    ));
  }

  ThemeData _buildTheme(brightness) {
    var baseTheme = ThemeData(brightness: brightness);

    return baseTheme.copyWith(
        textTheme: GoogleFonts.latoTextTheme(baseTheme.textTheme),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple, background: Colors.white),
        useMaterial3: true,
      ).copyWith(
        appBarTheme: AppBarTheme(
          titleTextStyle: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic
          )
        ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;
  //
  // void _incrementCounter() {
  //   setState(() {
  //     // This call to setState tells the Flutter framework that something has
  //     // changed in this State, which causes it to rerun the build method below
  //     // so that the display can reflect the updated values. If we changed
  //     // _counter without calling setState(), then the build method would not be
  //     // called again, and so nothing would appear to happen.
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final int appWidth = min(MediaQuery.of(context).size.width, 800).toInt();
    const double pngHeight = 450;
    final appBarHeight = min(MediaQuery.of(context).size.height * 0.3,  pngHeight);

    const int alphaButtons = 255;
    const buttonsMultiplier = 0.8;
    final colorButtons = Color.fromARGB(alphaButtons, (0x6a*buttonsMultiplier).toInt(), (0xda*buttonsMultiplier).toInt(), (0xfe*buttonsMultiplier).toInt());

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.background,
        toolbarHeight: appBarHeight,
        title:
          SizedBox(
            height: appBarHeight,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: Image.asset(
                        "nature-4k-photo-generated-2048x450.png",
                        height: appBarHeight,
                        fit: BoxFit.cover,
                      ).image,
                      alignment: Alignment.topCenter,
                      //opacity: 0.3,
                      filterQuality: FilterQuality.high,
                      isAntiAlias: true,
                      fit: BoxFit.cover
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                  SizedBox(width:appWidth as double,height:70,child:SizedBox(
                        height: 70,
                        width: MediaQuery.of(context).size.width,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(89,0x6A,0XDA,0XFE),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(16.0),
                                child:
                                  Row(
                                    children: [
                                      Center(
                                        child:Padding(
                                          padding: const EdgeInsets.only(top: 2, left: 0, right: 16, bottom: 0),
                                          child:SvgPicture.asset(
                                        'icons/hamburger_icon.svg',
                                        colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                                        //color: Colors.white,
                                        width: 33,
                                        height: 33,
                                      ),),),
                                      Expanded(
                                        child: Text("Easy Wallet", style: Theme.of(context).appBarTheme.titleTextStyle),
                                      ),
                                      Center(
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 0, left: 16, right: 0, bottom: 0),
                                          child: SvgPicture.asset(
                                            'icons/gear_icon.svg',
                                            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                                            //color: Colors.white,
                                            width: 33,
                                            height: 33,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                              )
                            ]
                          ),
                        )
                    ))
                  ],
                ),
              )
            )
          )
        ),
      body:

      SizedBox(
          height: MediaQuery.of(context).size.height-appBarHeight,
          width: MediaQuery.of(context).size.width,
          child: Container(decoration: const BoxDecoration(color: Colors.white),
            child:Center(
              child:SizedBox(
                  width: appWidth as double,
                  height: MediaQuery.of(context).size.height-appBarHeight,
                  child:Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                      // Column is also a layout widget. It takes a list of children and
                      // arranges them vertically. By default, it sizes itself to fit its
                      // children horizontally, and tries to be as tall as its parent.
                      //
                      // Column has various properties to control how it sizes itself and
                      // how it positions its children. Here we use mainAxisAlignment to
                      // center the children vertically; the main axis here is the vertical
                      // axis because Columns are vertical (the cross axis would be
                      // horizontal).
                      //
                      // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
                      // action in the IDE, or press "p" in the console), to see the
                      // wireframe for each widget.
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            SizedBox(
                              width: appWidth as double,
                              height: MediaQuery.of(context).size.height-appBarHeight-(93+16*4),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(children: [
                                    Text(
                                      'Accounts',
                                      style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                                        color: colorButtons,
                                      ),
                                    ),
                                    Expanded(child: Container()),
                                    Container(
                                      decoration: BoxDecoration(color: colorButtons),
                                      child: SizedBox(
                                        width: 45,
                                        height: 45,
                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(top: 0, left: 0, right: 0, bottom: 0),
                                            child: TextButton(
                                              onPressed: ()=>{},
                                              child: SvgPicture.asset(
                                                'icons/plus_icon.svg',
                                                colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                                                //color: Colors.white,
                                                width: 33,
                                                height: 33,
                                              )
                                            ),
                                          ),
                                        ),))
                                  ],),
                                  Expanded(child: Scrollable(viewportBuilder: (context, position) {
                                    return SizedBox(
                                        width: appWidth-16*2,
                                        child:Column(
                                        children: [
                                          Row(children: [
                                            Padding(
                                              padding: const EdgeInsets.only(right: 16),
                                              child: Image.asset(
                                                'icons/cryptocurrencies/xmr_256x256.png',
                                                width: 33,
                                                height: 33,
                                              ),
                                            ),
                                            Expanded(child: Container(child:Column(children:
                                              [
                                                SizedBox(width: appWidth-33-16,child:
                                                //Expanded(child:
                                                Container(child:
                                                Expanded(child:Text(
                                                  "Monero Account 1",
                                                  textAlign: TextAlign.start,
                                                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                                    color: colorButtons,
                                                    fontStyle: FontStyle.italic,
                                                  ),),),
                                                ),
                                                ),
                                                SizedBox(width: appWidth-33-16,child:
                                                //Expanded(child:
                                                Container(child:
                                                Expanded(
                                                    child:Text(
                                                      "0.001 XMR",
                                                      textAlign: TextAlign.start,
                                                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                                        color: colorButtons,
                                                        fontStyle: FontStyle.italic,
                                                      ),),),
                                                ),
                                                ),
                                                //),
                                              ],
                                              )
                                            ))
                                        ],
                                      )
                                    ],));
                                  },)
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                                width: appWidth as double,
                                height:93+16*2,
                                child:Padding(
                                    padding: const EdgeInsets.only(top: 16),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(0, 0, 16, 0),
                                          child: Container(
                                            decoration: BoxDecoration(color:
                                            colorButtons
                                            ),
                                            child: SizedBox(
                                              width: (appWidth-16)/3-16,
                                              height: 93,
                                              child: TextButton(
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Padding(
                                                          padding: EdgeInsets.only(
                                                            top: 12,
                                                            left: (((appWidth-16)/3-16-(26*3))/2).toDouble(),
                                                            right: 0, bottom: 0),
                                                          child: SvgPicture.asset(
                                                            'icons/right_arrow_icon.svg',
                                                            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                                                            //color: Colors.white,
                                                            width: 26,
                                                            height: 26,
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: const EdgeInsets.only(
                                                              top: 12, left: 0, right: 0, bottom: 0),
                                                          child: SvgPicture.asset(
                                                            'icons/wallet_icon.svg',
                                                            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                                                            //color: Colors.white,
                                                            width: 26,
                                                            height: 26,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Center(child:Text('Deposit', style:
                                                      Theme.of(context).textTheme.headlineMedium!.copyWith(
                                                        color: Colors.white,
                                                      ),
                                                    )),
                                                ]),
                                                onPressed: ()=>{},
                                              ),
                                            ),
                                          ),),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(0, 0, 16, 0),
                                          child: Container(
                                            decoration: BoxDecoration(color:
                                            colorButtons
                                            ),
                                            child:SizedBox(
                                              width: (appWidth-16)/3-16,
                                              height: 93,
                                              child: TextButton(
                                                child: Column(
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Padding(
                                                            padding: EdgeInsets.only(
                                                                top: 12,
                                                                left: (((appWidth-16)/3-16-26*2)/2).toDouble(),
                                                                right: 0, bottom: 0),
                                                            child: SvgPicture.asset(
                                                              'icons/swap_icon.svg',
                                                              colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                                                              //color: Colors.white,
                                                              width: 26,
                                                              height: 26,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Center(child:Text('Swap', style:
                                                      Theme.of(context).textTheme.headlineMedium!.copyWith(
                                                        color: Colors.white,
                                                      ),
                                                      )),
                                                    ]),
                                                onPressed: ()=>{},
                                              ),
                                            ),),
                                        ),
                                        Padding(
                                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                            child: Container(
                                              decoration: BoxDecoration(color:
                                              colorButtons
                                              ),
                                              child:SizedBox(
                                                width: (appWidth-16)/3-16,
                                                height: 93,
                                                child: TextButton(child:Column(
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Padding(
                                                            padding: EdgeInsets.only(
                                                                top: 12,
                                                                left: (((appWidth-16)/3-16-(26*3))/2).toDouble(),
                                                                right: 0, bottom: 0),
                                                            child: SvgPicture.asset(
                                                              'icons/wallet_icon.svg',
                                                              colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                                                              //color: Colors.white,
                                                              width: 26,
                                                              height: 26,
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(
                                                                top: 12, left: 0, right: 0, bottom: 0),
                                                            child: SvgPicture.asset(
                                                              'icons/right_arrow_icon.svg',
                                                              colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                                                              //color: Colors.white,
                                                              width: 26,
                                                              height: 26,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Center(child:Text('Withdraw', style:
                                                      Theme.of(context).textTheme.headlineMedium!.copyWith(
                                                        color: Colors.white,
                                                      ),
                                                      )),
                                                    ]),
                                                  onPressed: ()=>{},
                                                ),
                                              ),)
                                        ),
                                      ],
                                    )
                                ))
                          ],
                        ),
                      ],
                    )
                  )
              )
          )
        )
      )
    );
  }
}
