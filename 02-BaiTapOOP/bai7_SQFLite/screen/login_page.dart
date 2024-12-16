import 'package:bai6/model/database_helper.dart';
import 'package:bai6/screen/note_list_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'register_page.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final DatabaseHelper _dbHelper = DatabaseHelper.instance;

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void submit() async {
    try {
      // Wait for the login result
      var user = await _dbHelper.login(_usernameController.text, _passwordController.text);

      if (user != null) {
        // Nếu đăng nhập thành công
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Login Successful')));

        // Navigate to the NoteListScreen and pass the user object
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NoteListScreen(user: user)),
        );
      } else {
        // Nếu tài khoản hoặc mật khẩu sai
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Login Failed')));
      }
    } catch (error) {
      // Handle error
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Login Failed')));
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Đăng nhập')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 8),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: submit,
              child: Text('Đăng nhập'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Register()),
              ),
              child: Text('Đăng ký'),
            ),
          ],
        ),
      ),
    );
  }
}
