import 'package:flutter/material.dart';

class ECommerceScreen extends StatelessWidget {
  const ECommerceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.purple,  //the color now displayed is the default in main.
      appBar: _buildAppBar(),
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                _buildToggleBar(context),     //build method passing down context so we can use theme
                Image.asset('assets/woman_shopping.jpg'),
                DealButtons(),
                _buildProductTile(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container _buildProductTile(BuildContext context) {
    return Container(
            height: 200,
           // color: Colors.white,
            color: Theme.of(context).cardColor, //retrieve the cardcolor property defined in the nearest themedata object. cardcolor property is part of themedata and used to define the background color of cards in the app.
            child: Row(
              children: <Widget>[
                Image.asset(
                  'assets/textiles.jpg',
                  fit: BoxFit.fitHeight,
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Lorem Ipsum',
                          //style: Theme.of(context).textTheme.title,
                        ),
                        Text(
                            'Dolor sit amet, consectetur adipiscing elit. Quisque faucibus.')
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
  }

  Column DealButtons() {
    return Column(
            children: [
              const SizedBox(height: 15),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
                          child: Text(
                        'Best Sellers',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                          color: Colors.indigoAccent,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
                          child: Text(
                        'Daily Deals',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 15),
              Row(
                children: <Widget>[
                  const DealButton(),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
                          child: Text(
                        'Last Chance',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 15),
            ],
          );
  }

  Widget _buildToggleBar(BuildContext context) {    //accepting context
    return Row(
            children: <Widget>[
              _buildToggleItem(),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Formal Wear',
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Casual Wear',
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          );
  }

  Padding _buildToggleItem() {
    return const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Recommended',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
  }

  AppBar _buildAppBar() {
    return AppBar(
      //backgroundColor: Colors.purpleAccent,   //here the appbar color has been removed so the default green color from main is displayed.
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
      leading: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Icon(Icons.home),
      ),
      title: const Text('Let\'s go shopping!'),
     elevation: 0,
      actions: const <Widget>[
        Padding(
          padding: EdgeInsets.all(20.0),
          child: Icon(Icons.shopping_cart),
        )
      ],
    );
  }
}

class DealButton extends StatelessWidget {
  const DealButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 80,
        decoration: BoxDecoration(
            color: Colors.lightGreen,
            borderRadius: BorderRadius.circular(20)),
        child: const Padding(
          padding: EdgeInsets.all(10.0),
          child: Center(
            child: Text(
              'Must buy in summer',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}