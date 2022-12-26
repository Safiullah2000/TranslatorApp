import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Color(0xffF7F7F7),
            body: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  margin: EdgeInsets.fromLTRB(20, 50, 20, 10),
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  width: double.infinity,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Sindhi"),
                      Text("Translate to"),
                      Text("Urdu")
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
                  width: double.infinity,
                  height: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(alignment: Alignment.topLeft, child: Text("0/10")),
                      Text("توهان جا ڳالهايل لفظ ڏيکاريا ويندا هتي"),
                      Text("آپ کے بولے گئے الفاظ یہاں دکھائے جائیں گے۔"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 150,
                ),
                Image.asset(
                  "images/BPMW.png",
                  width: 80,
                  height: 80,
                ),
                SizedBox(
                  height: 20,
                ),
                Text("ڳالهائڻ لاءِ ٽيپ ڪريو ۽ رکو"),
                Text("تھپتھپائیں اور بولنے کے لیے دبائے رکھیں")
              ],
            )));
  }
}
