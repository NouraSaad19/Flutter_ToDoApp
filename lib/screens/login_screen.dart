// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.menu,
          ),
          title: Text("TODO APP"),
        ),
        body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
                child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // ignore: prefer_const_constructors
                    SizedBox(
                      height: 30,
                    ),
                    Image(
                        image: NetworkImage(
                            'https://www.sbicard.com/creditcards/resources/img/digi-col-login.png')),
                    // const Text(
                    //   "Login",
                    //   style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    // ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      // ignore: prefer_const_constructors
                      controller: emailController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          //hintText: 'Email Address', // يختفي لما اجي اكتب
                          labelText:
                              'Email Address', //مايختفي لما اجي اكتب يرقى فوق
                          prefixIcon: Icon(Icons.email)),
                      keyboardType: TextInputType
                          .emailAddress, // تفيد بالفالديشن بعد ضروري
                      onFieldSubmitted: (value) =>
                          print(value), // يمسك القيمه الي راح يدخلها اليوزر
                      //onChanged: (value) => print(value),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      // ignore: prefer_const_constructors
                      controller:
                          passwordController, //تاخذ القيمه عشان ترسلها للبوتوم
                      // ignore: prefer_const_constructors
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        //hintText: 'Password', // يختفي لما اجي اكتب
                        labelText: 'Password', //مايختفي لما اجي اكتب يرقى فوق
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: const Icon(
                          Icons.remove_red_eye,
                        ),
                      ),
                      keyboardType: TextInputType
                          .visiblePassword, // تفيد بالفالديشن بعد ضروري
                      obscureText: true, // عشان تخفي الباسورد
                      onFieldSubmitted: (value) =>
                          print(value), // يمسك القيمه الي راح يدخلها اليوزر
                      //onChanged: (value) => print(value),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      color: Colors.blue,
                      child: MaterialButton(
                        onPressed: () {
                          print(emailController.text);
                          print(passwordController.text);
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    // ignore: prefer_const_constructors
                    SizedBox(
                      height: 10,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't ave an account?"),
                        TextButton(
                            onPressed: () {}, child: Text("Register Now"))
                      ],
                    )
                  ]),
            ))));
  }
}
