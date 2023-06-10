// import 'dart:html';

import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color.fromARGB(255, 2, 31, 55),
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.arrow_back_ios_new,color: Colors.white,)),
                SizedBox(
                  width: 50,
                ),

                Text(
                  'Your Library',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white),
                )
              ],
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                Container(
                  width: 80,
                  height: 80,
                  color: Color.fromARGB(255, 226, 119, 245),
                  child: IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: Colors.white,size: 30,))),
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text('Liked Songs',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),),
                    Row(
                      children: [
                        Icon(Icons.push_pin,color: Colors.green,),
                        Text('songs',style: TextStyle(color: Colors.grey),)
                      ],
                    )
                  ],)
              ],),
            ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Row(children: [
          //     Container(
          //       width: 80,
          //       height: 80,
          //       color: Colors.grey,
          //       child: IconButton(onPressed: (){}, icon:Icon(Icons.star,color: Colors.red,)),
                
          //     ),
          //        SizedBox(width: 20,),
          //        Text('Favorite',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)
          //   ],),
          // ),
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              Container(
                width: 80,
                height: 80,
                color: Color.fromARGB(255, 74, 91, 91),
                child: IconButton(onPressed: (){}, icon:Icon(Icons.file_download,color: Color.fromARGB(255, 11, 230, 14),)),
                
              ),
                 SizedBox(width: 20,),
                 Text('Downloads',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
            ],),
          ),
            Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              Container(
                width: 80,
                height: 80,
                color: Color.fromARGB(255, 237, 140, 4),
                child: IconButton(onPressed: (){}, icon:Icon(Icons.playlist_play,color: Color.fromARGB(255, 95, 11, 230),)),
                
              ),
                 SizedBox(width: 20,),
                 Text('Playlist',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
            ],),
          ),
        ],),
      )),
    );
  }
}