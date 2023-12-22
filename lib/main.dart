import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

/// Flutter code sample for [SliverAppBar].

void main() => runApp(const Youtube());

class Youtube extends StatelessWidget {
  const Youtube({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<String> _categories = [
    '전체',
    '음악',
    'Flutter',
    '생존코딩',
    '엔터테인먼트',
    '믹스',
    '실시간',
    '뉴스',
    '반려동물',
    '감상한 동영상',
    '새로운 맞춤 동영상'
  ];

  @override
  Widget build(BuildContext context) {
    Card _generateCard(String title) {
      return Card(
        color: Colors.white12,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 14),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            snap: true,
            floating: true,
            backgroundColor: Colors.black,
            centerTitle: false,
            expandedHeight: 44,
            title: Row(
              children: [
                Image.asset('asset/youtube_logo.jpeg', width: 110),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(30),
              child: SizedBox(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: _categories
                      .map((category) => _generateCard(category))
                      .toList(),
                ),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(left: 7, right: 7),
                child: Image.asset(
                  'asset/screen.png',
                  width: 25,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 7, right: 7),
                child: Icon(Icons.search),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 7, right: 7),
                child: Icon(CupertinoIcons.bell),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 7, right: 7),
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage('asset/profile_image.png'),
                ),
              )
            ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.lightBlue[100 * (index % 9)],
                  height: 100.0,
                  child: Text('list item $index'),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
