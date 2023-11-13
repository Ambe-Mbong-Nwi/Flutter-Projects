//expanded and flexible widgets are used so interface adapts to all screeen sizes
//diff is expanded widget is flexible widget with flex of 1.BUT EX WID TAKES UP ALL AVAILABLE SPACE
//DONT PLACE THE ABOVE AS DIRECT CHILDREN OF CONTAINER.they should be children of a flex subclass eg column or row widget.


import 'package:dogs/labeled_container.dart';
import 'package:flutter/material.dart';
import 'labeled_container.dart';

class FlexScreen extends StatelessWidget {
  const FlexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flexible and Expanded'),
      ),
      body: SafeArea(       //for devices where header or footer covers some features.
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ..._header(context, 'Expanded'),
            const DemoExpanded(),
            ..._header(context, 'Flexible'),
            const DemoFlexible(),
            const Expanded(             //consume all available space in row or column
              child: Spacer(),          //hence pushes footer to bottom of screen.
              ),
              const DemoFooter()
          ],
        ),
      ),
    );
  }

  Iterable<Widget> _header(BuildContext context, String text) {
    return [
      const SizedBox(height: 20),
      Text(
        text,
        style: Theme.of(context).textTheme.headlineSmall,
      ),
    ];
  }

}

class DemoExpanded extends StatelessWidget {
  const DemoExpanded({super.key});
  @override
  Widget build(BuildContext context) {
    return const SizedBox(      //recommended instead of container bcos its lighter
     height: 100,
      child: Row(       //place three containers in the first row
        children: [
          LabeledContainer(
            width: 100,       //device independent pixel.remains const on all screens
            color: Colors.green,
            text: '100',
          ),
          Expanded(           //has no width bcos the expanded widget occupies the remaining available space in the row.
            child: LabeledContainer(
              color: Colors.purple,
              text: 'The Remainder',
              textColor: Colors.white,
            ),
          ),
          LabeledContainer(
            width: 40,
            color: Colors.green,
            text: '40',
          )
        ],
      ),
    );
  }
}


class DemoFlexible extends StatelessWidget {
  const DemoFlexible({super.key});
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 100,
      child: Row(
        children: [
          Flexible(     //acts like expanded but does so according to the flex value given
            child: LabeledContainer(
              color: Colors.orange,
              text: '25%'
            ),
          ),
          Flexible(
            flex: 1,
            child: LabeledContainer(
              color: Colors.deepOrange,
              text: '25',
            ),
          ),
          Flexible(
            flex: 2,      //flex of 2 so takes 1/2 width and the two above share 1/2
            child: LabeledContainer(
              color: Colors.blue,
              text: '50%',
            ),
          )
        ],
      ),
    );
  }
}


class DemoFooter extends StatelessWidget {
  const DemoFooter({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(40),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 15.0
          ),
          child: Text(
            'Pinned to the Bottom',
            style: Theme.of(context).textTheme.titleSmall,
          ),
      ),
    );
  }
}