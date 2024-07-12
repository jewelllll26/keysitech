import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}


class _DashboardState extends State<Dashboard> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        foregroundColor: Colors.black,
        title: Center(
          child: Image.asset(
            'assets/HAHA.png',
            width: 150,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/AAA.png'),
              fit: BoxFit.cover
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlutterCarousel(
                options: CarouselOptions(
                  height: 400.0,
                  autoPlay: true,
                  showIndicator: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 700),
                  slideIndicator: CircularSlideIndicator(),
                ),
                items: [
                  'assets/JONAXX.jpg',
                  'assets/AOFTD.jpg',
                  'assets/CITW.jpg',
                  'assets/SSA.jpg',
                  'assets/TRIE.jpg',
                ].map((String imagePath) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          color: Colors.pink[100],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            imagePath,
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.orange,
        elevation: 3.0,
        onTap: (int val){
          switch(val){
            case 0:
              Navigator.pushNamed(context, '/profile');
              break;
            case 1:
              Navigator.pushNamed(context, '/menu');
              break;
            case 2:
              Navigator.pushNamed(context, '/login');
              break;
          }
        },
        currentIndex: 0,
        items: const[
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.black),
              label: 'Profile'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_sharp, color: Colors.black),
              label: 'Menu'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.logout, color: Colors.black),
              label: 'Logout'

          ),
        ],
      ),
    );
  }
}