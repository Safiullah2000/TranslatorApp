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
  var imageName = "BPMW.png";
  bool isVisible = false;
  List sindhi_urdu_Translation = [
    "توهان جا ڳالهايل لفظ ڏيکاريا ويندا هتي\nآپ کے بولے گئے الفاظ یہاں دکھائے جائیں گے۔"
  ];
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
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              margin: EdgeInsets.fromLTRB(20, 50, 20, 10),
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              width: double.infinity,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Sindhi"), Text("Translate to"), Text("Urdu")],
              ),
            ),
            Container(
              height: 250,
              width: double.infinity,
              child: ListView.builder(
                  itemCount: sindhi_urdu_Translation.length,
                  itemBuilder: (context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
                      width: double.infinity,
                      height: 80,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Align(
                              alignment: Alignment.topLeft,
                              child: Text("0/10")),
                          Text(sindhi_urdu_Translation[index]),
                        ],
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 80,
            ),
            GestureDetector(
              onLongPressStart: (detail) {
                setState(() {
                  imageName = "BWMP.png";
                });
              },
              onLongPressEnd: (details) {
                setState(() {
                  imageName = "BPMW.png";
                  isVisible = true;
                  sindhi_urdu_Translation.add("Input Sindhi Text");
                });
              },
              child: Image.asset(
                "images/$imageName",
                width: 80,
                height: 80,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("ڳالهائڻ لاءِ ٽيپ ڪريو ۽ رکو"),
            Text("تھپتھپائیں اور بولنے کے لیے دبائے رکھیں"),
            SizedBox(
              height: 10,
            ),
            Visibility(
                visible: isVisible,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xfff78671),
                      padding: EdgeInsets.fromLTRB(80, 20, 80, 20)),
                  onPressed: () {
                    setState(() {
                      sindhi_urdu_Translation.add("Converted Urdu Text");
                    });
                  },
                  child: Text("Click to Translate"),
                ))
          ],
        ),
      ),
    );
  }
}
