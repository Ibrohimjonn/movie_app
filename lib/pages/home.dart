import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(7, 13, 45, 1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: RichText(
          text: TextSpan(
            text: 'Movie',
                style: TextStyle(color: Colors.red,fontSize: 22,fontWeight: FontWeight.bold),
            children: const [
              TextSpan(
                text: 'App',
                style: TextStyle(color: Colors.amber,fontSize: 22),
              ),
            ]
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 10,),

          Padding(
            padding: EdgeInsets.only(left: 10,right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Top Movies',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                Text('See All',style: TextStyle(color: Colors.white54,fontSize: 14,),),
              ],
            ),
          ),

          SizedBox(height: 20,),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            child: Row(
              children: [
                SizedBox(width: 6,),
                Container(
                  height: 160,
                  width: 120,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/photos/spider.jpg',),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: RichText(
                        text: TextSpan(
                          text: "O'rgamchak\n",
                          style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold),
                          children: const [
                            TextSpan(
                              text: 'Odam',
                              style: TextStyle(color: Colors.white,fontSize: 12),
                            ),
                          ]
                        )
                    ),
                  ),
                ),
                SizedBox(width: 6,),
                Container(
                  height: 160,
                  width: 120,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/photos/black_p.jpg',),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                SizedBox(width: 6,),
                Container(
                  height: 160,
                  width: 120,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/photos/loki.jpg',),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                SizedBox(width: 6,),
                Container(
                  height: 160,
                  width: 120,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/photos/thanos.jpg',),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                SizedBox(width: 6,),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(7, 13, 45, 1),
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.3),
            ),
          ]
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 8),
            child: GNav(
              gap: 8,
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 12),
              backgroundColor: Color.fromRGBO(7, 13, 45, 1),
              color: Colors.white54,
              tabBackgroundColor: Colors.blueAccent.withOpacity(0.1),
              activeColor: Colors.blueAccent,
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              tabs: const [
                GButton(
                    icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                    icon: Icons.category_outlined,
                  text: 'Category',
                ),
                GButton(
                    icon: Icons.favorite_border,
                  text: 'Favorite',
                ),
                GButton(
                    icon: Icons.person_outline,
                  text: 'Profile',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
