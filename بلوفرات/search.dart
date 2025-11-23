import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}
class _SearchState extends State  {
  String _query = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(12),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'اكتب للبحث عن بلوفر...',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            ),
            onChanged: (v) => (() => _query = v),
          ),
        ),
        Expanded(
          child: Center(
            child: _query.isEmpty
                ? Text('لا توجد نتائج بعد\nاكتب شيئاً في مربع البحث', textAlign: TextAlign.center)
                : Text('نتائج البحث عن: "$_query"', style: TextStyle(fontSize: 18)),
          ),
        ),
      ],
    );
  }
}