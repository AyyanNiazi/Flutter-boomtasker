// import 'package:flutter/material.dart';
// import 'package:real_time_app/services/auth.dart';

// class SetNewPassword extends StatefulWidget {
//   @override
//   _SetNewPasswordState createState() => _SetNewPasswordState();
// }

// class _SetNewPasswordState extends State<SetNewPassword> {
//   Map num;
//   TextEditingController _password = TextEditingController();
//   TextEditingController _confirmPassword = TextEditingController();

//   // void setPass(email) async {
//   //   if (_password.text.length < 6) {
//   //     print("password must be 6 digit");
//   //   } else {
//   //     Auth instance = Auth(
//   //       password: _password.text,
//   //     );
//   //     await instance.setNewPassword(
//   //       context,
//   //       email,
//   //     );
//   //   }
//   // }

//   @override
//   void initState() {
//     super.initState();

//     // Start listening to changes.
//     _password.addListener(_passwordControllerVal);
//     _confirmPassword.addListener(_confirmPasswordrVal);
//   }

//   @override
//   void dispose() {
//     // Clean up the controller when the widget is removed from the widget tree.
//     // This also removes the _printLatestValue listener.
//     _password.dispose();
//     _confirmPassword.dispose();
//     super.dispose();
//   }

//   void _passwordControllerVal() {
//     print('Second text field: ${_password.text}');
//   }

//   void _confirmPasswordrVal() {
//     print('Second text field: ${_confirmPassword.text}');
//   }

//   @override
//   Widget build(BuildContext context) {
//     num = ModalRoute.of(context).settings.arguments;

//     return SafeArea(
//       child: Scaffold(
//         body: Padding(
//           padding: EdgeInsets.fromLTRB(20, 80, 10, 20),
//           child: Form(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text("Set Password"),
//                 SizedBox(height: 40),
//                 Text(
//                   "Password",
//                   style: TextStyle(
//                     color: Colors.grey[400],
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 TextFormField(
//                   decoration: InputDecoration(
//                       enabledBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.all(Radius.circular(8)),
//                           borderSide: BorderSide(color: Colors.grey[200])),
//                       focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.all(Radius.circular(8)),
//                           borderSide: BorderSide(color: Colors.grey[300])),
//                       filled: true,
//                       fillColor: Colors.grey[100],
//                       hintText: "Password"),
//                   controller: _password,
//                 ),
//                 SizedBox(height: 30),
//                 Text(
//                   "Confirm Password",
//                   style: TextStyle(
//                     color: Colors.grey[400],
//                   ),
//                 ),
//                 SizedBox(height: 10),
//                 TextField(
//                   decoration: InputDecoration(
//                       enabledBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.all(Radius.circular(8)),
//                           borderSide: BorderSide(color: Colors.grey[200])),
//                       focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.all(Radius.circular(8)),
//                           borderSide: BorderSide(color: Colors.grey[300])),
//                       filled: true,
//                       fillColor: Colors.grey[100],
//                       hintText: "Confirm Password"),
//                   controller: _confirmPassword,
//                 ),
//                 ElevatedButton(
//                     onPressed: () {
//                       setPass(num['number']);
//                     },
//                     child: Text("Set Password"))
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
