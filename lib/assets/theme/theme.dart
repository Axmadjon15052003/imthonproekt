import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child:  Scaffold(
          appBar: AppBar(
            title: const Text("Daryo"),
            bottom: const TabBar(
              isScrollable: true,
              tabs: [
                Tab(child: Text("So'ngi yangiliklar"),),
                Tab(child: Text("ASOSIY YANGILIKLAR"),),
                Tab(child: Text("ENG KO'P"),
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                color: Colors.red.shade300,
              ),
             Container(
               color: Colors.green,
             ),
              Container(
                color: Colors.white,
              )
            ],
          )

    )
    );
  }
}
