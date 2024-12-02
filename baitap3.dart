import 'package:flutter/material.dart';
import 'baitap2.dart';

class FormLogin extends StatelessWidget {
  const FormLogin({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _username = TextEditingController();
    TextEditingController _password = TextEditingController();
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      body: Column(
        children: [
          Text('Đăng nhập'),
          SizedBox(
            height: 20,
          ),
          Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _username,
                    decoration: const InputDecoration(
                      labelText: 'username',
                      hintText: 'input your username',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'username not null';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _password,
                    decoration: const InputDecoration(
                      labelText: 'password',
                      hintText: 'input your password',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'password not null';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {

                      }
                      if (_username.text.isNotEmpty &&
                          _password.text.isNotEmpty) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseList()));
                      }
                    },
                    child: const Text('Đăng nhập'),
                  )
                ],
              )
          )
        ],
      ),
    );
  }
}
