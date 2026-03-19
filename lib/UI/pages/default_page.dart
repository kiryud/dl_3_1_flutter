import 'package:flutter/material.dart';

class DefaultPage extends StatelessWidget {
  const DefaultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello World'),
      ),
      body: Row(
        children: [
          Expanded(child:Container(color: Colors.yellow,)),
          Expanded(child:Container(color: Colors.blue,)),
          Expanded(child:Container(color: Colors.black,)),
        ],
      ),
      bottomNavigationBar: BottomAppBar(

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
