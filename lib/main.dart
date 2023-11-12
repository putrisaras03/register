import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign Up KUPI',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: const RegisterPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // create the controllers
  TextEditingController namaController = TextEditingController();
  TextEditingController namaUsahaController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController konfirmasiPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 150, // Sesuaikan dengan tinggi gambar yang diinginkan
                child: Image.asset(
                  'assets/images/logokupi.png', // Ganti dengan path gambar yang sesuai
                  fit: BoxFit.contain,
                ),
              ),
              const Text('Nama'),
              const SizedBox(height: 5),
              TextField(
                controller: namaController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Nama',
                ),
              ),
              const SizedBox(height: 10),
              const Text('Nama Usaha'),
              const SizedBox(height: 5),
              TextField(
                controller: namaUsahaController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Nama Usaha',
                ),
              ),
              const SizedBox(height: 10),
              const Text('Email'),
              const SizedBox(height: 5),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Email',
                ),
              ),
              const SizedBox(height: 10),
              const Text('Password'),
              const SizedBox(height: 5),
              TextField(
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Password',
                ),
              ),
              const SizedBox(height: 10),
              const Text('Konfirm Password'),
              const SizedBox(height: 5),
              TextField(
                controller: konfirmasiPasswordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Password',
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  // print input values
                  print(namaController.text);
                  print(namaUsahaController.text);
                  print(emailController.text);
                  print(passwordController.text);
                  print(konfirmasiPasswordController.text);
                },
                child: Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
