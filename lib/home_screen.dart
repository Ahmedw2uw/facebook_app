import 'package:facebook_app/facebook_styles.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "Home";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FacebookColors.wghit,
      appBar: AppBar(
        backgroundColor: FacebookColors.wghit,
        title: Text("Facebook", style: FacebookTextStyle.blue30extraBbold),
        actions: [
          IconButton(
            icon: Icon(Icons.add_circle, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset(FacebookAssets.messenger, width: 20),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.home),
                iconSize: 30,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.ondemand_video),
                iconSize: 30,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.store),
                iconSize: 30,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.person_pin),
                iconSize: 30,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications),
                iconSize: 30,
              ),
              CircleAvatar(
                radius: 16,
                backgroundImage: AssetImage(FacebookAssets.profileIcon),
              ),
            ],
          ),
          Divider(color: FacebookColors.gray, thickness: 1, height: 20),
          SizedBox(
            height: 60,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(FacebookAssets.profileIcon),
                  ),
                ),
                Expanded(
                  child: Text(
                    "What's in Your Mind?",
                    style: FacebookTextStyle.gray16normal,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.photo_library),
                  color: Colors.green,
                  iconSize: 28,
                ),
              ],
            ),
          ),
          Divider(color: FacebookColors.gray, thickness: 1, height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                createStoryCard(FacebookAssets.profileImage),
                normalStoryCard(
                  backgroundImage: FacebookAssets.story1Photo,
                  profileImage: FacebookAssets.story1Icon,
                ),
                normalStoryCard(
                  backgroundImage: FacebookAssets.story2Photo,
                  profileImage: FacebookAssets.story2Icon,
                ),
                normalStoryCard(
                  backgroundImage: FacebookAssets.story3Photo,
                  profileImage: FacebookAssets.story3Icon,
                ),
              ],
            ),
          ),
          Divider(color: FacebookColors.gray, thickness: 1, height: 20),
          Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(FacebookAssets.routeIcon),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text("Route"), Text("8 hours .🌐")],
                  ),
                  Spacer(),
                  Icon(Icons.more_horiz),
                ],
              ),
              SizedBox(height: 8),
              Image.asset(FacebookAssets.routeImag),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12.0,
                  vertical: 8,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.favorite_border),
                        SizedBox(width: 8),
                        Icon(Icons.chat_bubble_outline),
                        SizedBox(width: 8),
                        Icon(Icons.send),
                      ],
                    ),
                    Icon(Icons.bookmark_border),
                  ],
                ),
              ),
            ],
          ),
          Divider(color: FacebookColors.gray, thickness: 1, height: 20),
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(FacebookAssets.routeIcon),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text("Route"), Text("8 hours .🌐")],
              ),
              Spacer(),
              Icon(Icons.more_horiz),
            ],
          ),
        ],
      ),
    );
  }
}

Widget normalStoryCard({
  required String backgroundImage,
  required String profileImage,
}) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 6),
    width: 110,
    height: 180,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      image: DecorationImage(
        image: AssetImage(backgroundImage),
        fit: BoxFit.cover,
      ),
    ),
    child: Stack(
      children: [
        Positioned(
          top: 8,
          left: 8,
          child: CircleAvatar(
            radius: 18,
            backgroundImage: AssetImage(profileImage),
          ),
        ),
      ],
    ),
  );
}

Widget createStoryCard(String backgroundImage) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 6),
    width: 110,
    height: 180,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
      border: Border.all(color: Colors.blue, width: 1),
    ),
    child: Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
          child: Image.asset(
            backgroundImage,
            height: 100,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 4),
        CircleAvatar(
          radius: 16,
          backgroundColor: Colors.blue,
          child: Icon(Icons.add, color: Colors.white, size: 20),
        ),
        SizedBox(height: 4),
        Text(
          "Create a\nStory",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}
