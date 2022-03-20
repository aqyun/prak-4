import 'package:flutter/material.dart';
import 'package:prak4/model/tourism_place.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.place}) : super(key: key);

  final TourismPlace place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [
            Image.asset(place.imageAsset),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: Text(
                place.name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Lobster',
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget> [
                      Icon(Icons.calendar_today),
                      Text(place.open),
                    ],
                  ),
                  Column(
                    children: <Widget> [
                      Icon(Icons.access_time),
                      Text(place.time),
                    ],
                  ),
                  Column(
                    children: <Widget> [
                      Icon(Icons.attach_money),
                      Text(place.ticket),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                place.desc,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.network(
                        'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.asset(place.photo1),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.asset(place.photo2),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.asset(place.photo3),
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