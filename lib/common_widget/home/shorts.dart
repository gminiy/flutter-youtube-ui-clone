import 'package:flutter/material.dart';

class Shorts extends StatelessWidget {
  const Shorts({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Stack(children: [
                Image.network(
                  'https://i.ytimg.com/vi/22hmsj93Ids/oar2.jpg?sqp=-oaymwEdCJUDENAFSEaQAgHyq4qpAwwIARUAAIhCcAHAAQY=&rs=AOn4CLCkazsbXfD4Ui1EKYjBqeIzEAj4jg',
                  fit: BoxFit.cover,
                  width: 180,
                  height: 320,
                ),
                Container(
                  width: 180,
                  height: 320,
                  color: Colors.black.withOpacity(0.3),
                ),
              ]),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 240.0, left: 10, right: 10),
              child: SizedBox(
                width: 160,
                height: 320,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('[자막ver] 한남동 커피? 김곤대 훈장님의 소신발언 ㄷㄷㄷ',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        )),
                    Text('조회수 123만회',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 12
                        )),
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

class ShortsList extends StatelessWidget {
  const ShortsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(20, (index) {
          return const Shorts();
        }),
      ),
    );
  }
}

class ShortsContainer extends StatelessWidget {
  const ShortsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset('asset/shorts_logo.png'),
        const ShortsList(),
      ],
    );
  }
}
