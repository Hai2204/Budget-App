import 'package:appbudget/data/data.dart';
import 'package:flutter/material.dart';
import 'package:appbudget/widgets/bar_chart.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            forceElevated: true,
            floating: true,
            pinned: true,
            expandedHeight: 100.0, // height app bar
            leading: IconButton(
                icon: Icon(
                  Icons.settings,
                  color: Colors.white,
                  size: 30.0,
                ),
                onPressed: () {}),
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Simple Budget'),
            ),
            actions: <Widget>[
              IconButton(
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  onPressed: () {}),
            ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.all(10.0),
                  // height: 100.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, 2),
                            blurRadius: 6.0)
                      ],
                      borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: BarChart(weeklySpending),
                );
              },
              childCount: 1, // child node
            ),
          ),
        ],
      ),
    );
  }
}
