import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String uid = '';
  final GlobalKey _formkey = GlobalKey();
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Form(
              key: _formkey,
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: _emailcontroller,
                    decoration: const InputDecoration(
                        hintText: 'Email',
                        prefixIcon: Icon(Icons.email_outlined)),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter Email';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    controller: _emailcontroller,
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: 'Password',
                      prefixIcon: Icon(Icons.remove_red_eye_outlined),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter Password';
                      }
                      return null;
                    },
                  )
                ],
              )),
          ElevatedButton(
            onPressed: () async {
              await FirebaseFirestore.instance
                  .collection('students')
                  .doc(uid)
                  .set(
                {
                  'Name': "Hussain",
                  'Age': 23,
                  'Ph# no': 03028802544,
                  'Email': '07husain07@gmail.com'
                },
              );
              // StreamBuilder(
              //   stream: FirebaseFirestore.instance
              //       .collection('students')
              //       .snapshots(),
              //   builder: (context, snapshot) {
              //     if (snapshot.hasData) {
              //       var data = snapshot.data!.docs;
              //
              //     }
              //     return itemCount: data.length,
              // ListView.builder(itemBuilder: (context, index)=>
              //         data[Index].get('name');
              //     );
              //   },
              // );
              // var data = FirebaseAuth.instance.signInWithEmailAndPassword(
              //     email: '07husain07@gmail.com', password: '22446688');
              // uid = data.;
            },
            child: const Text('Login'),
          ),
        ],
      ),
    );
  }
}
