import 'package:flutter/material.dart';

class PageSearch extends StatefulWidget {
  const PageSearch({super.key});

  @override
  State<PageSearch> createState() => _PageSearchState();
}

class _PageSearchState extends State<PageSearch> with AutomaticKeepAliveClientMixin {
  int counter = 0;

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);  // CRITICAL: Must call super.build()!
    
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.orange[50],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Search Page - Counter: $counter"),
          ElevatedButton(
            onPressed: () {
              setState(() {
                counter++;
              });
            },
            child: Text("Increment"),
          ),
        ],
      ),
    );
  }
}
