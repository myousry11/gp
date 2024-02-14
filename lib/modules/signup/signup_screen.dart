import 'package:flutter/material.dart';
import 'package:untitled6/modules/login/login_screen.dart';
import 'package:untitled6/shared/components/components.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class SignUpScreen extends StatefulWidget {

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}


class _SignUpScreenState extends State<SignUpScreen> {
  Future<void> _getImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        _image = File(image.path);
      });
    }
  }
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
  var phoneController = TextEditingController();
  var formkey = GlobalKey<FormState>();
  bool isPassword = true;
  File? _image;
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: ()
          {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Registration',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF248176),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                defaultFormField(
                    controller: firstNameController,
                    type: TextInputType.name,
                    validate: (value)
                    {
                    if (value.isEmpty)
                     {
                      return 'first name must not be empty';
                     }
                     return null;
                    },
                    label: 'First Name',
                    prefix: Icons.person_2_outlined,

                ),
                SizedBox(
                  height: 5.0,
                ),
                defaultFormField(
                  controller: lastNameController,
                  type: TextInputType.name,
                  validate: (value)
                  {
                    if (value.isEmpty)
                    {
                      return 'last name must not be empty';
                    }
                    return null;
                  },
                  label: 'Last Name',
                  prefix: Icons.person_2_outlined,
                ),
                SizedBox(
                  height: 5.0,
                ),
                defaultFormField(
                  controller: emailController,
                  type: TextInputType.emailAddress,
                  validate: (value)
                  {
                    if (value.isEmpty)
                    {
                      return 'email must not be empty';
                    }
                    return null;
                  },
                  label: 'Email Address',
                  prefix: Icons.email,

                ),
                SizedBox(
                  height: 5.0,
                ),
                defaultFormField(
                  controller: phoneController,
                  type: TextInputType.phone,
                  validate: (value)
                  {
                    if (value.isEmpty)
                    {
                      return 'phone must not be empty';
                    }
                    return null;
                  },
                  label: 'Phone',
                  prefix: Icons.phone_android_outlined,

                ),
                SizedBox(
                  height: 5.0,
                ),
                defaultFormField(
                  controller: passwordController,
                  label: 'Password',
                  prefix: Icons.lock,
                  suffix: isPassword ? Icons.visibility : Icons.visibility_off,
                  isPassword: isPassword,
                  suffixPressed: ()
                  {
                    setState(()
                    {
                      isPassword = !isPassword;
                    });
                  },
                  type: TextInputType.visiblePassword,
                  validate:(value)
                  {
                    if (value.isEmpty)
                    {
                      return 'password must not be empty';
                    }
                    return null;
                  },

                ),
                SizedBox(
                  height: 5.0,
                ),
                ElevatedButton(
                  onPressed: _getImage,
                  child: Text('Choose Photo'),
                ),

                // Display the selected image
                SizedBox(height: 5.0),
                Container(
                  width: 200,
                  height: 20,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: _image != null
                        ? DecorationImage(
                      image: FileImage(_image!),
                      fit: BoxFit.cover,
                    )
                        : null,
                  ),
                ),
                defaultButton(
                  function: () {
                    if (formkey.currentState!.validate()) {
                      print(firstNameController.text);
                      print(lastNameController.text);
                      print(emailController.text);
                      print(phoneController.text);
                      print(passwordController.text);

                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Account created successfully'),
                            backgroundColor: Color(0xFF248176),
                          )
                      );
                      Future.delayed(Duration(seconds: 20));
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    }

                  },
                  background: Colors.white,

                  text: 'Create Account',
                  color: Colors.black,
                  radius: 10.0,
                  colors: Color(0xFF248176),
                  borderWidth: 3.0,

                ),
                SizedBox(
                  height: 10.0,
                ),

              ],
            ),
          ),
        ),
      ),

    );
  }
}
