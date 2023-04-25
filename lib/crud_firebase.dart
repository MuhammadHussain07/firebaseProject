import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Crud_functions extends StatefulWidget {
  const Crud_functions({super.key});

  @override
  State<Crud_functions> createState() => _Crud_functionsState();
}

class _Crud_functionsState extends State<Crud_functions> {
  String uid = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                FirebaseFirestore.instance.collection('students').doc(uid).set({
                  'name': 'Huzaifa',
                  'Age': 18,
                  'Ph# no': 03056844240,
                  'Email': 'aansoo@gmail.com'
                });
              },
              child: Text('Create')),
          ElevatedButton(onPressed: () {}, child: Text('Retrieve')),
          ElevatedButton(onPressed: () {}, child: Text('Update')),
          ElevatedButton(onPressed: () {}, child: Text('Delete'))
        ],
      ),
    ));
  }
}
