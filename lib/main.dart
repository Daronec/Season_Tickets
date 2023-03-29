import 'package:flutter/material.dart';
import 'package:season_ticket/pages/season_ticket/season_tickets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Season Tickets',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SeasonTicket(),
    );
  }
}
