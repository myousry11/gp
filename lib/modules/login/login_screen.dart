import 'package:flutter/material.dart';
import 'package:untitled6/shared/components/components.dart';
import 'package:untitled6/modules/signup/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formkey = GlobalKey<FormState>();
  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
            image: AssetImage('assets/images/loginback.jpg'),
            height: 350,
            width: double.infinity,
            fit: BoxFit.cover,
          ),

          Padding(
            padding: const EdgeInsets.only(
              top: kToolbarHeight + 20.0, 
              bottom: 20.0,
              left: 20.0,
              right: 20.0,
            ),
            child: Center(
              child: SingleChildScrollView(
                child: Form(
                  key: formkey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 200.0,
                      ),
                      defaultFormField(
                        controller: emailController,
                        type: TextInputType.emailAddress,
                        validate: (value) {
                          if (value.isEmpty) {
                            return 'email must not be empty';
                          }
                          return null;
                        },
                        label: 'Email Address',
                        prefix: Icons.email,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      defaultFormField(
                        controller: passwordController,
                        label: 'Password',
                        prefix: Icons.lock,
                        suffix: isPassword ? Icons.visibility : Icons.visibility_off,
                        isPassword: isPassword,
                        suffixPressed: () {
                          setState(() {
                            isPassword = !isPassword;
                          });
                        },
                        type: TextInputType.visiblePassword,
                        validate: (value) {
                          if (value.isEmpty) {
                            return 'password must not be empty';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      defaultButton(
                        function: () {
                          if (formkey.currentState!.validate()) {
                            print(emailController.text);
                            print(passwordController.text);
                          }
                        },
                        background: Colors.white,
                        width: 200,
                        text: 'Log in',
                        color: Colors.black,
                        radius: 10.0,
                        colors: Color(0xFF248176),
                        borderWidth: 3.0,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      defaultButton(
                        function: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpScreen(),
                            ),
                          );
                        },
                        background: Colors.greenAccent,
                        width: 200,
                        text: 'Sign UP',
                        color: Colors.black,
                        radius: 10.0,
                        colors: Color(0xFF248176),
                        borderWidth: 3.0,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
