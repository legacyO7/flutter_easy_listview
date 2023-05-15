import 'package:flutter/material.dart';
import 'package:easy_listview_l7/easy_listview_l7.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Easy listview Example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}):super(key: key);


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<String> loadedList=[];
  int skipCount=0;
  int maxCount=5;

  @override
  void initState() {
    loadMore();
    super.initState();
  }

  void loadMore(){
      loadedList.addAll(dummyList.sublist(skipCount,skipCount+maxCount<dummyList.length? skipCount + maxCount:null));
      skipCount += 5;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Easy ListView Example"),
        ),
        body: EasyListView(
          itemCount: loadedList.length,
          itemBuilder: (BuildContext context, int index) {
            return Text(loadedList[index]);
          },
          dividerBuilder: (_,__)=>const Divider(),
          onLoadMore: (){
            loadMore();
            setState(() {});
          },
          loadMore: loadedList.length<dummyList.length,
        )
    );
  }

  List<String> dummyList=["Flutter", "Dart", "Widget", "Layout", "Animation", "Material", "Cupertino", "Gesture", "Stateless", "Stateful", "ListView", "GridView", "Card", "Button", "TextField", "Checkbox", "Radio", "Slider", "Switch", "ProgressIndicator", "Dialog", "SnackBar", "IconButton", "RaisedButton", "FlatButton", "TextFormField", "Scaffold", "AppBar", "BottomNavigationBar", "TabBar", "FadeTransition", "ScaleTransition", "RotationTransition", "Hero", "ClipRRect", "SafeArea", "Expanded", " SizedBox", "AspectRatio", "Flex", "Wrap", "Alignment", "Decaration", "CircularProgressIndicator", "LinearProgressIndicator", "AnimatedContainer", "Align", "Positioned", "Spacer", "Expanded", "SizeBox"];

}
