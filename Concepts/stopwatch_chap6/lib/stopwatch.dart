import 'package:flutter/material.dart';
import 'package:stopwatch/platform_alert.dart';
import 'dart:async';
import 'login_screen.dart';

//all widgets, stateless or stateful are immutable. Only state can change so data that changes should be put in the state class.
class StopWatch extends StatefulWidget {
  final String name;
  final String email;
  const StopWatch({super.key, required this.name, required this.email});
  @override
  State<StopWatch> createState() =>   //put build method in state class not in the widget itself.
_StopWatchState();
}

bool isTicking = false;

final itemHeight = 60.0;              //for list to scroll to bottom every time lap button is tapped
final scrollController = ScrollController();      //object that allows interaction with listview from outside the build methods.

class _StopWatchState extends State<StopWatch> {
  int milliseconds = 0;      //place seconds property in state class
  late Timer timer;     //use timer to increment seconds property every second.
                        //ie each time timer ticks, we tell stopwatch to redraw by calling setState.
  final laps = <int>[];     //creating a laps list.
  @override

  // void initState() {
  //   super.initState();        //to initalise timer
  //   timer = Timer.periodic(Duration(seconds: 1), _onTick);
  // }
  void _onTick(Timer time) {
    if (mounted) {
      setState(() {       //tells flutter a widget needs to be repainted(dirty). it calls the build method everytime but call this instead of the build method directly
        ++milliseconds;        //setstate processs: widget calls it, widget marked as dirty, flutter rebuilds dirty widgets in tree, build method is called again.
      });                 //avoid performing complex operations in setstate closure can cause performance bottlenecks
    }
  }

//increments lap count and resets current millisecond value
  void _lap() {
    setState(() {
      laps.add(milliseconds);
      milliseconds = 0;
    });
    scrollController.animateTo(       //tell listview to scroll when a new lap is added using the scrollcontroller object which allows interactionview outside the build methods. with list
      itemHeight * laps.length,       //where in listview to scroll ie fixed height * the number of items.
      duration: const Duration(milliseconds: 500),        //lenght of the animation
      curve: Curves.easeIn,         //says animation should slow down as it reaches the end
    );
  }

  Widget build(BuildContext context) {
    String _secondsText([int? milliseconds]) => milliseconds == 1 ? 'millisecond' : 'milliseconds';  //func to make sure text is always gramatically correct
    @override

    Widget _buildLapDisplay() {
      return Scrollbar(
        child: ListView.builder(
          controller: scrollController,       //linking the values given above
          itemExtent: itemHeight,       //iextent gives fixed height to all items
          itemCount: laps.length,
          itemBuilder: (context, index) {
            final milliseconds = laps[index];
            return ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 50),
              title: Text('Lap ${index + 1}'),
              trailing: Text(_secondsText(milliseconds)),
            );
          },
        ),
      );
    }
    
    void dispose() {      //ensure timer stops ticking when we close the screen
      timer.cancel();
      scrollController.dispose();
      super.dispose();
    }
    return Scaffold(
      appBar: AppBar(
     //   title: const Text(widget.name),     //runners name.
      ),
      body: Column(
        children: [
          Expanded(child: _buildCounter(_secondsText, context)),  //so it shares remaining space with the one below
          Expanded(child: _buildLapDisplay()),    //wrap with expanded widget because listView cant work directly with column which depends on size of children and has no parent constraints.
        ],
      ),
    );
  }

  Widget _buildCounter(String _secondsText(), BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,      //giving column background color which is the apps primary color
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[         //explicitely defining a list of child widgets.
          Text(
            'Lap ${laps.length + 1}',
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(color: Colors.white),     //adjusting text color to white.
          ),
          Text(
            //'0 seconds',
            '$milliseconds ${_secondsText()}',       //now uses seconds property instead of raw text
             style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 20),
          _buildControls()
        ],
      ),
    );
  }

  Widget _buildControls() {
    return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: isTicking ? null : _startTimer,  //nb, _starttimer is passed as a parameter not called so no ()
              style: ButtonStyle(       //for styling button. alternative = ElevatedButton.styleFrom(...)
                backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
            //  onPressed: null,
              child: const Text('Start'),
            ),
            const SizedBox(width: 20),   //box widget that creates width 20 between this box and the next box

            //const SizedBox(width: 20),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.yellow),
              ),
              onPressed: isTicking ? _lap : null,
              child: const Text('Lap'),
            ),
            SizedBox(width: 20),

            // TextButton(
            //   onPressed: isTicking ? _stopTimer : null,     //_stopTimer here is thrown as a closure. better bcos code is easier to read.a closure is a func that has acces to variables defined outside itself.
            //   style: ButtonStyle(
            //     backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
            //     foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            //   ),
             // onPressed: null,
              Builder(
                builder: (context) => TextButton(
                  child: const Text('Stop'),
                  onPressed: isTicking ? () =>
                _stopTimer(context) : null,
                 style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
                  ),)
              
            
          ],
        );
  }


void _startTimer() {
  timer = Timer.periodic(const Duration(seconds:1), _onTick); 

  setState(() {
    milliseconds = 0;
    isTicking = true;
    laps.clear();         //to reset the lap list every time the user starts a new counter
  });
}

void _stopTimer(BuildContext context) {
  timer.cancel();
  setState(() {
    isTicking = false;
  });
  // final totalRuntime = laps.fold(milliseconds, (total, lap) => total + lap);
  //                                     //ALERT, ALERT, ALERT
  // final alert = PlatformAlert(        //when timer is stopped, alert pops up
  //   title: 'Run Completed!',
  //   message: 'Total Run Time is 9',

  //   //${_secondsText(totalRuntime)}.', messsage: 'k',
  // );
  // alert.show(context);

  final controller =
  showBottomSheet(context: context, builder: _buildRunCompleteSheet);
  Future.delayed(const Duration(seconds: 5)).then((_) {       //after 5s sheet automatically dissapears
    controller.close();
  });
}


//BOTTOM SHEET. expects a BuildContent and a WidgetBuilder
Widget _buildRunCompleteSheet(BuildContext context) {
  final totalRuntime = laps.fold(milliseconds, (total, lap) => total + lap);
  final textTheme = Theme.of(context).textTheme;
  return SafeArea(
    child: Container(
      color: Theme.of(context).cardColor,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30.0),
        child: Column(mainAxisSize: MainAxisSize.min, 
        children: [
          Text('Run finished!',
          style: textTheme.headlineSmall),
         // Text('Total run time is ${_secondsText(totalRuntime)}.')
        ])
      )
    )
  );

}


}