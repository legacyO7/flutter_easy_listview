![pub](https://img.shields.io/pub/v/easy_listview_l7.svg)


# intro 
This is a fork of the package [easy_listview](https://pub.dev/packages/easy_listview) with added null safety, dart 3 compatibility and other bugfixes

# easy_listview

A simple widget to help you to build ListView with header, footer, divider, and load more function.

## Usage

Simple constructor for the widget.

```dart
var listWidget = new EasyListView(
          headerSliverBuilder: headerSliverBuilder,   // SliverAppBar...etc.
          headerBuilder: headerBuilder,               // Header Widget Builder
          footerBuilder: footerBuilder,               // Footer Widget Builder 
          itemCount: itemCount,
          itemBuilder: itemBuilder,                   // ItemBuilder with data index
          dividerBuilder: dividerBuilder,             // Custom Divider Builder
          loadMore: hasNextPage,                      // Load more flag
          onLoadMore: onLoadMoreEvent,                // Load more callback
          foregroundWidget: foregroundWidget,         // Widget witch overlap on ListView
          
        );
```

## Example

There is an example in the repo.

<img src="https://user-images.githubusercontent.com/780712/46780315-970aa300-cd4e-11e8-8dcf-4921821ca454.gif" width="300" />

# Use this package as a library
## 1. Depend on it
Add this to your package's pubspec.yaml file:


```yaml
dependencies:
  easy_listview_l7: {last_version}
```

## 2. Install it
You can install packages from the command line:
with Flutter:

```shell
$ flutter packages get
```
Alternatively, your editor might support flutter packages get. Check the docs for your editor to learn more.

## 3. Import it
Now in your Dart code, you can use:

```dart
import 'package:easy_listview_l7/easy_listview_l7.dart';
```
