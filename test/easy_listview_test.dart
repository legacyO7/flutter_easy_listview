import 'package:easy_listview_l7/easy_listview_l7.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("test widget", () {
    var easyListView = EasyListView(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Text("Item $index");
      },
      headerBuilder: (context) {
        return const Text("Header widget");
      },
      footerBuilder: (context) {
        return const Text("Footer widget");
      },
      loadMore: true,
      onLoadMore: () {
        debugPrint("load more request.");
      },
    );
    easyListView.createState();
  });
}
