import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xff21254A),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: height * .25,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/topImage.png"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Merhaba,\nHoşgeldin!',
                      style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                    customSizedBox(),
                    TextField(
                      decoration: customInputDecoration("Kullanıcı Adı"),
                    ),
                    customSizedBox(),
                    TextField(
                      decoration: customInputDecoration(
                        "Şifre",
                      ),
                    ),
                    customSizedBox(),
                    Center(
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Şifremi Unuttum!!',
                          style: TextStyle(color: Colors.pink[300]),
                        ),
                      ),
                    ),
                    customSizedBox(),
                    Center(
                      child: TextButton(
                        onPressed: () {},
                        child: Container(
                          height: 50,
                          width: 150,
                          margin: const EdgeInsets.symmetric(horizontal: 60),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: const Color(0xFFF48FB1),
                          ),
                          child: const Center(
                            child: Text(
                              'GİRİŞ YAP',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    customSizedBox(),
                    Center(
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Yeni hesap Oluştur',
                          style: TextStyle(color: Colors.pink[300]),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget customSizedBox() => const SizedBox(
        height: 20,
      );
  InputDecoration customInputDecoration(String hintText) {
    return InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.purple)));
  }
}
