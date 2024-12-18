import 'package:flutter/material.dart';
import 'package:water_smart/services/auth/auth_service.dart';
import 'package:water_smart/shared/buttons/buttons.dart';

class LoginScreen extends StatefulWidget {
  final void Function()? onTap;
  const LoginScreen({super.key, required this.onTap});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool obscureText = true;

  void login() async {
    final authService = AuthService();

    try {
      await authService.signInWithEmailPassword(
          emailController.text, passwordController.text);
    } catch (e) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(
            e.toString(),
            style: const TextStyle(fontFamily: 'Poppins'),
          ),
        ),
      );
    }
  }

  void forgotPw() {
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        title: Text(
          'User tapped forgot password.',
          style: TextStyle(fontFamily: 'Poppins'),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE0E0E0),
      body: Center(
        child: Container(
          width: 400,
          height: 400,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Colors.white,
              border: const Border(
                  top: BorderSide(
                      color: Color.fromRGBO(39, 83, 71, 1), width: 5))),
          child: Column(
            children: [
              Container(
                width: 400,
                height: 70,
                child: const Center(
                  child: Text.rich(TextSpan(children: [
                    TextSpan(
                        text: 'WaterSmart Ghana',
                        style:
                            TextStyle(fontFamily: 'Montserrat', fontSize: 30)),
                  ])),
                ),
              ),
              const Divider(
                thickness: 1,
                color: Colors.black,
              ),
              const SizedBox(height: 20),
              const Text(
                'Please login',
                style: TextStyle(
                    color: Color(0xFF212121),
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
              const SizedBox(
                height: 20,
              ),
              // Email textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: TextField(
                        controller: emailController,
                        style: const TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Email',
                            hintStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            )),
                      ),
                    )),
              ),
              const SizedBox(height: 10),
              //Password Textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: TextField(
                        controller: passwordController,
                        style: const TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Password',
                            hintStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            )),
                      ),
                    )),
              ),
              const SizedBox(height: 10),
              PrimaryButton(
                onTap: login,
                text: 'Sign in',
              ),
              const SizedBox(height: 20),
              // Register
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Not a member?',
                    style: TextStyle(
                    fontFamily:  'Montserrat',
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    )
                  ),
                  const SizedBox(width: 10),
                GestureDetector(
                  onTap: widget.onTap,
                  child: const Text(
                    'Sign up',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
