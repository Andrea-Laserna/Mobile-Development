import 'package:flutter/material.dart';
import 'lab1.dart';

class Lab1Screen extends StatelessWidget {
  const Lab1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    // Connects TabBar and TabBarView
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Lab 1'),
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'Spotify Card',
              ),
              Tab(
                text: 'About',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // First Tab Content
            MyHomePage(),
            // Second Tab Content
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'This layout uses a Column widget with centered alignment. '
                    'It includes a Container for the album art with rounded borders, '
                    'Text widgets for the song title and artist name, '
                    'a Slider widget for the progress bar, '
                    'and Row of Icon buttons for playback controls.',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
