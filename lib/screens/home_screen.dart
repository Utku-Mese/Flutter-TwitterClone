import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: ListView(
        children: [
          _makeTweetEl("Ahmet_a", "assets/images/user1.png", "#tayyip aşşa\nsal bizi reis", 5),
          const SizedBox(height: 15.0),
          _makeDivider(),
          const SizedBox(height: 15.0),
          _makeTweetEl("crazy_20", "assets/images/man.png", " alma mazlumun ahını, çıkar aheste aheste", 24),
          const SizedBox(height: 15.0),
          _makeDivider(),
          const SizedBox(height: 15.0),
          _makeTweetEl("Utku_mese", "assets/images/me.png", "bir gün bu twiti tekrar okuduğumda güzel yerlerde olma dileğiyle", 1),
          const SizedBox(height: 15.0),
          _makeDivider(),
          const SizedBox(height: 15.0),
          _makeTweetEl("Mark Zukarberg", "assets/images/profilePhoto.png", "#tayyip aşşa\nBIHTIH ARTIK BIHTIHH!", 46),
          const SizedBox(height: 15.0),
          _makeDivider(), 
        ],
      ),
    );
  }




  Widget _makeTweetEl(String user, String icon, String text, int time) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage(icon),
            backgroundColor: Color(0xFF14171A),
          ),
          const SizedBox(width: 5.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    user,
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                  const SizedBox(width: 5.0),
                  Text(
                    "@$user・$time m",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5.0),
              Container(
                width: size.width-65.0,
                child: Text(
                  text,
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ),
              const SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Iconsax.message, color: Colors.grey, size: 14.0),
                  const SizedBox(width: 50.0),
                  Icon(Iconsax.programming_arrow, color: Colors.grey, size: 14.0),
                  const SizedBox(width: 50.0),
                  Icon(Iconsax.heart, color: Colors.grey, size: 14.0),
                  const SizedBox(width: 50.0),
                  Icon(Iconsax.arrow_square_up, color: Colors.grey, size: 14.0),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _makeDivider() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 0.1,
      color: Colors.grey,
    );
  }
}
