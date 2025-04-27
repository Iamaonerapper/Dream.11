import 'package:flutter/material.dart';
import '../widgets/match_card.dart';
import '../services/api_service.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('Upcoming Matches')),
      body: FutureBuilder(
        future: ApiService.getMatches(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return Center(child:CircularProgressIndicator());
          final matches = snapshot.data;
          return ListView.builder(
            itemCount: matches.length,
            itemBuilder: (ctx, i) => MatchCard(match: matches[i]),
          );
        },
      ),
    );
  }
}