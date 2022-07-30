import 'package:flutter/material.dart';
import 'package:flutter_twitter_clone_app/constant.dart';
import 'package:flutter_twitter_clone_app/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Twitter clon',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        primaryColor: TwConstant.kPrimaryColor,
        scaffoldBackgroundColor: TwConstant.kDarkBgColor,
        cardColor: TwConstant.kDarkCardColor,
        canvasColor: TwConstant.kDarkBgColor,
        appBarTheme: AppBarTheme(
          backgroundColor: TwConstant.kDarkBgColor,
          foregroundColor: Colors.red[200],
          elevation: 1.0,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: TwConstant.kDarkBgColor,
          selectedItemColor: Colors.white
        ),
        tabBarTheme: TabBarTheme(
          labelColor: Colors.white
        ),
        iconTheme: IconThemeData(
          color: Colors.white
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Image.asset(
          "assets/images/twitter.png",
          width: 25.0,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Icon(Icons.whatshot),
          )
        ],
        leading: Builder(
          builder: (context) => GestureDetector(
            onTap: () => Scaffold.of(context).openDrawer(), 
            child: Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Image.asset("assets/images/profilePhoto.png"),
            ),
          ),
        ),
        leadingWidth: 45.0,
      ),
      drawer: Drawer(
        child: Padding(
          padding: EdgeInsets.only(top: 80.0, left: 20.0, right: 20.0),
          child: ListView(
              children: [
                Row(
                    children: [
                      Container(
                        width: 45.0,
                        height: 45.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30.0)),
                            color: Colors.white,
                            image: DecorationImage(image: AssetImage("assets/images/me.png"))
                        ),
                      ),
                      const SizedBox(width: 15.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Utku_mese', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.white)),
                          const SizedBox(height: 5.0),
                          Text('@Utku_mese', style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w400, color: Colors.grey[400])),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 50.0),
                  Row(
                    children: [
                      Icon(Icons.search, color: Colors.white),
                      const SizedBox(width: 15.0),
                      Text('Search', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.white))
                    ],
                  ),
                  const SizedBox(height: 30.0),
                  Row(
                    children: [
                      Icon(Icons.notifications_none, color: Colors.white),
                      const SizedBox(width: 15.0),
                      Text('Notification', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.white))
                    ],
                  ),
                  const SizedBox(height: 30.0),
                  Row(
                    children: [
                      Icon(Icons.mail_outline, color: Colors.white),
                      const SizedBox(width: 15.0),
                      Text('Message', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.white))
                    ],
                  ),
                  const SizedBox(height: 30.0),
                  Row(
                    children: [
                      Icon(Icons.bookmark_border, color: Colors.white),
                      const SizedBox(width: 15.0),
                      Text('Bookmark', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.white))
                    ],
                  ),
                  const SizedBox(height: 30.0),
                  Row(
                    children: [
                      Icon(Icons.person_outline, color: Colors.white),
                      const SizedBox(width: 15.0),
                      Text('Profile', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.white))
                    ],
                  ),
              ]
          ),
        ),
      ),
      body: HomeScreen(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        elevation: 0,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes s-formatting nicer for build methods.
    );
  }
}
