import 'package:flutter/material.dart';
import 'package:flutter_youtube_ui/data.dart';
import 'package:flutter_youtube_ui/widgets/video_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
          slivers: [

            SliverAppBar(
              floating: true,
              leadingWidth: 100.0,
              leading: Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Image.asset('assets/yt_logo_dark.png'),
              ),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.cast)),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notifications_outlined)),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search)),
                IconButton(
                  onPressed: () {},
                  iconSize: 40.0,
                  icon: CircleAvatar(
                    foregroundImage: NetworkImage(currentUser.profileImageUrl),
                  ),
                ),
              ],
            ),
            SliverPadding(
              padding:const EdgeInsets.only(bottom: 60.0),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index){
              final video= videos[index];
              return VideoCard(video:video, hasPadding: true,);
              },
                childCount: videos.length,
              ),

              ),
            ),
          ]
      ),
    );
  }
}
