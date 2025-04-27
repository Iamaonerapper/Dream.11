import 'package:flutter/material.dart';
class MatchCard extends StatelessWidget {
  final dynamic match;
  MatchCard({required this.match});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(match['teamA'] + ' vs ' + match['teamB']),
        subtitle: Text(DateTime.parse(match['matchTime']).toLocal().toString()),
      ),
    );
  }
}