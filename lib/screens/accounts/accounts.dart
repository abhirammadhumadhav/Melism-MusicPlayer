import 'package:flutter/material.dart';

import 'package:my_project/screens/mostlyplayedscreen/mostlyplayedscreen.dart';
import 'package:my_project/screens/playlist/playlistscreen.dart';

import '../likedsongs/likedsongs.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 2, 31, 55),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    'Account',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.account_circle,
                        color: Colors.purple,
                      )),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'Abhiram',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const PlaylistScreen()));
              },
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const PlaylistScreen();
                      }));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      height: 100,
                      width: 150,
                      // color: Colors.yellow,

                      // child: IconButton(onPressed: (){}, icon: Icon(Icons.playlist_add_check,size: 30,),),
                      child: Image.asset(
                        'lib/assets/images/100-best-rock-bands-of-the-2010s.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  const Text(
                    'Playlist',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                // checkmostplayed( id);
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const MostlyPlayedScreen();
                }));
              },
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 150,
                    color: const Color.fromARGB(255, 45, 10, 242),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.download,
                          size: 30,
                          color: Colors.green,
                        )),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  const Text(
                    'Mostplayed',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const LikedScreen();
                }));
              },
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 150,
                    color: const Color.fromARGB(255, 13, 232, 49),
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LikedScreen()));
                        },
                        icon: const Icon(
                          Icons.favorite,
                          size: 30,
                          color: Colors.red,
                        )),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  const Text(
                    'Liked',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
      // floatingActionButton: MiniPlayer(),
    );
  }
}
