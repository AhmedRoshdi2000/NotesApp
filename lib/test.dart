import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyApps extends StatelessWidget {
  MyApps({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Model(),
        // model can go to any place in child
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
                appBar: AppBar(
                  title: const Text("Providers"),
                ),
                body: const widgetTest()
                // Selector<Model, int>(
                //   selector: ((context, ps1) => ps1.showone),
                //   builder: (context, Model, child) {
                //     log("$Model");

                //   },
                // ),
                // Selector<Model, String>(
                //     selector: (context, ps2) => ps2.name2,
                //     //<> which inside <> that the consumer listen to it
                //     // consumer is widget that provider rebuilt it
                //     builder: (context, Model, child) {
                //       log("selector 2 ");

                //       return Text(
                //         Model,
                //       );
                //     }),
                // Consumer<Model>(
                //   //<> which inside <> that the consumer listen to it
                //   // consumer is widget that provider rebuilt it
                //   builder: (context, Model, child) {
                //     return ElevatedButton(
                //       onPressed: () {
                //         Model.changeName1();
                //       },
                //       child: const Text("Tab to change1"),
                //     );
                //   },
                // ),
                // Consumer<Model>(
                //   //<> which inside <> that the consumer listen to it
                //   // consumer is widget that provider rebuilt it
                //   builder: (context, Model, child) {
                //     return ElevatedButton(
                //       onPressed: () {
                //         Model.changeName2();
                //       },
                //       child: const Text("Tab to change2"),
                //     );
                //   },
                // ),

                )) //child which I can edit on it
        );
  }
}

class widgetTest extends StatelessWidget {
  const widgetTest({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      Center(child: Text(context.watch<Model>().name2)),
      ElevatedButton(
        onPressed: () {
          context.read<Model>().changeName2();
        },
        child: const Text("Tab to change2"),
      )
    ]);
  }
}

class Model extends ChangeNotifier {
  var name1 = 2;
  var name2 = "Mohamed";
  // var name3;
  var name4 = "change it now ";

  get showone => name1;
  get showtwo => name2;

  changeName1() {
    if (name1 < 8) {
      name1++;
    } else {
      name1 = 0;
    }

    notifyListeners();
  }

  changeName2() {
    if (name2 == "Mohamed") {
      name2 = "Roshdi";
    } else {
      name2 = "Mohamed";
    }

    notifyListeners();
  }
}
