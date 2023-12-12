import 'dart:async';
import 'dart:developer';
import 'dart:math' as math;

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:i_beat/constants/ble_commands.dart';
import 'package:i_beat/fl_chart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

const Color sinColor = Colors.blue;
const Color cosColor = Colors.red;

class _MyHomePageState extends State<MyHomePage> {
  List<int> ecgData = [];
  BluetoothDevice? devices;
  List<BluetoothService> services = [];
  List<BluetoothCharacteristic> charecteristics1 = [];
  final limitCount = 100;
  List<int> everyFifthData = [];
  final sinPoints = <FlSpot>[];
  final cosPoints = <FlSpot>[];

  int x = 0;
  double step = 0.05;

  late Timer timer;

  // charecteristics[0] is write
  // charecteristics[1] is to notify

  @override
  void initState() {
    super.initState();
    FlutterBluePlus.setLogLevel(LogLevel.verbose, color: true);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            sinPoints.isNotEmpty
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 15),
                      Text("X:${x.toStringAsFixed(1)}"),
                      const SizedBox(height: 20),
                      AspectRatio(
                        aspectRatio: 1.5,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: LineChart(LineChartData(
                              minY: -500,
                              maxY: everyFifthData.reduce(math.max).toDouble(),
                              // minY: -500,
                              // maxY: 800,
                              clipData: FlClipData.all(),
                              gridData: FlGridData(show: true),
                              borderData: FlBorderData(show: false),
                              lineBarsData: [sinLine(sinPoints)],
                              titlesData: FlTitlesData(show: false))),
                        ),
                      )
                    ],
                  )
                : Container(),
            const Text(
              'You have pushed the button this many times:',
            ),
            ElevatedButton(
                onPressed: () {
                  devices!.connect();
                },
                child: const Text("Connect to device")),
            ElevatedButton(
                onPressed: () async {
                  services = await devices!.discoverServices();
                  services.forEach((service) async {
                    charecteristics1 = service.characteristics;
                  });
                  await charecteristics1[1].setNotifyValue(true);
                },
                child: const Text("Read charecteristics")),
            ElevatedButton(
                onPressed: () async {
                  print(charecteristics1[1].characteristicUuid.str);
                },
                child: const Text("print charecteristics")),
            ElevatedButton(
                onPressed: () async {
                  charecteristics1[0].write(BleCommands.setOptionCommand);
                  print(charecteristics1[1].lastValue);
                },
                child: const Text("Write set option")),
            ElevatedButton(
                // onPressed: () {
                //   charecteristics1[0]
                //       .write(BleCommands.measurementBeforeCommand);

                //   Timer.periodic(const Duration(milliseconds: 500), (timer) {
                //     charecteristics1[0]
                //         .write(BleCommands.startEcgMeasurementCommand);
                //     print(charecteristics1[1].lastValue);

                //     setState(() {
                //       ecgData.addAll(charecteristics1[1].lastValue);
                //       for (int i = 0; i < ecgData.length; i += 5) {
                //         everyFifthData.add(ecgData[i]);
                //       }
                //       ecgData.clear();
                //     });
                //   });
                //   timer = Timer.periodic(const Duration(milliseconds: 150),
                //       (timer) {
                //     setState(() {
                //       // Check if x is within the bounds of everyFifthData
                //       if (x < everyFifthData.length) {
                //         // Add the current everyFifthData point to sinPoints
                //         print("x value $x and ${everyFifthData.length}");
                //         while (sinPoints.length > limitCount) {
                //           sinPoints.removeAt(0);
                //           everyFifthData.remove(0);
                //         }
                //         sinPoints.add(FlSpot(
                //             x.toDouble(),
                //             everyFifthData.isNotEmpty
                //                 ? everyFifthData[x].toDouble()
                //                 : 0));

                //         // Print for debugging
                //         // print("$x index ${everyFifthData[x]}");

                //         // Increment x
                //         x += 1;
                //       }
                //     });
                //   });

                //   // value showing timer
                // },
                onPressed: () {
                  charecteristics1[0]
                      .write(BleCommands.measurementBeforeCommand);
                  print(charecteristics1[1].lastValue);
                  // Timer.periodic(const Duration(milliseconds: 500), (timer) {
                  //   charecteristics1[0]
                  //       .write(BleCommands.startEcgMeasurementCommand);
                  //   print(charecteristics1[1].lastValue);

                  //   setState(() {
                  //     ecgData.addAll(charecteristics1[1].lastValue);
                  //     for (int i = 0; i < ecgData.length; i += 5) {
                  //       everyFifthData.add(ecgData[i]);
                  //     }
                  //     ecgData.clear();
                  //   });
                  // });
                },
                child: const Text("Start command")),
            ElevatedButton(
                onPressed: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => EcgTesting(),
                  //     ));
                },
                child: const Text("Chart screen"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await FlutterBluePlus.startScan(
              timeout: const Duration(seconds: 4),
              oneByOne: true,
              androidUsesFineLocation: true);
          FlutterBluePlus.scanResults.listen((results) async {
            log(results.toString());
            for (ScanResult result in results) {
              if (result.device.remoteId.str == 'F2:D0:2F:C9:C3:A5') {
                devices = result.device;
              }
            }
          });
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

LineChartBarData sinLine(List<FlSpot> points) {
  return LineChartBarData(
    spots: points,
    dotData: FlDotData(show: false),
    barWidth: 2,
    colors: [Colors.blue],
    isCurved: false,
  );
}
