import 'package:flutter/material.dart';
import 'immutable_widget.dart';
class BasicScreen extends StatelessWidget{
  const BasicScreen({super.key});
  @override
  Widget build(BuildContext context) {
  return Scaffold(  
     appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 175, 63, 181),
        title: const Text('ゴゴゴCrazy Diamondゴゴゴ'), 
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(Icons.edit),
          ),
        ], ),
    body: const Center(
      child: AspectRatio(
        aspectRatio: 1.0,
        child:ImmutableWidget(),
      ),
    ),
    drawer: Drawer(
      child: Container(
        color: Colors.lightBlue,
          child: const Center(
          child: Text("I'm a Drawer!"),
          ),
        ),
      ),

  ); }
}
