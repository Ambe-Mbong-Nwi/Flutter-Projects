//search class that takes care of all searches

import 'package:flutter/material.dart';

class MySearch extends StatelessWidget {
  const MySearch({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
class MySearchDelegate extends SearchDelegate { 

  //search terms
  List<String> searchTerms = [
    'Tap',
    'Sink',
    'Toilet Pot',
    'Soap',
    'Tiles',
    'Bedsheet'
  ];

//our search actions. Here we put the clear button which when clicked clears what has been entered in the search box.
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';                         //clear search bar
        }, 
        icon: const Icon(Icons.clear))
    ];
  }

//our search leading. This is the back icon which takes us back to the homepage.
   @override
  Widget buildLeading(BuildContext context) {
    return 
      IconButton(
        onPressed: () {
          close(context, null);               //close and leave the search bar
        }, 
      icon: const Icon(Icons.arrow_back),
      );
  }

//our search actions
   @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

//our search actions
   @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }

}