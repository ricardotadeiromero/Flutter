import 'package:flutter/material.dart';
import 'package:login/model/user.dart';
import 'package:login/repository/userRepository.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final key = GlobalKey<FormState>();
  final email = TextEditingController();
  final password = TextEditingController();
  final rep = UserRepository();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: SizedBox(
                  width: 240,
                  child: Image.network(
                      'https://cdn-icons-png.flaticon.com/512/181/181534.png'),
                ),
              ),
              const Text('Login',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 30)),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                    key: key,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: email,
                          decoration: const InputDecoration(
                            labelText: 'Email',
                            prefixIcon: Icon(Icons.email),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Por favor digite o email!';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          controller: password,
                          obscureText: true,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Por favor digite a senha!';
                            }
                            if (value.length < 3) {
                              return 'A senha tem que ter no mínimo que 3 caracteres';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            labelText: 'Password',
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            if (key.currentState!.validate()) {
                              final user = User(email.text, password.text);
                              if (rep.login(user)) {
                                setState(() {
                                  email.clear();
                                  password.clear();
                                });
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: const Text('Fala fio!'),
                                        content: Image.network(
                                            'https://em-content.zobj.net/thumbs/160/apple/114/thumbs-up-sign_1f44d.png'),
                                        actions: [
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: const Text('OK'),
                                          ),
                                        ],
                                      );
                                    });
                              } else {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title:
                                            const Text('Você não é bem vindo!'),
                                        content: Image.network(
                                            'https://images.emojiterra.com/google/android-10/512px/1f44e.png'),
                                        actions: [
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: const Text('OK'),
                                          ),
                                        ],
                                      );
                                    });
                              }
                            }
                          },
                          child: const Text('Login'),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text('Register'),
                        ),
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
