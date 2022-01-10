import 'package:anti_harassment/emergency_contacts.dart';
import 'package:flutter/material.dart';

const activeCardColor = Color(0xFF1D1E33);

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      bottomNavigationBar: BottomAppBar(
          color: Color(0xFF4A0E21),
          notchMargin: 50.0,
          elevation: 5.0,
          child: Container(
            height: 50.0,
            child: Row(
              children: [],
            ),
          )),
      body: Column(children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  child: ReusableCard(
                      colour: activeCardColor,
                      cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Text("Rating & Reviews")])),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  child: ReusableCard(
                      colour: activeCardColor,
                      cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Text("Real Time Location")])),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  child: ReusableCard(
                      colour: activeCardColor,
                      cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Text("Self-defence Education")])),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  child: ReusableCard(
                      colour: activeCardColor,
                      cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Text("Awareness")])),
                ),
              ),
            ],
          ),
        ),
        Expanded(
            child: Row(children: [
          Expanded(
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EmergencyContacts()));
                  },
                  child: ReusableCard(
                      colour: activeCardColor,
                      cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Emergency",
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ]))))
        ]))
      ]),
      floatingActionButton: Theme(
        data: ThemeData(accentColor: Colors.red),
        child: FloatingActionButton(
          onPressed: () {},
          tooltip: 'Call',
          child: Icon(Icons.call),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild});
  final Color colour;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: colour, borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
