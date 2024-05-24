// lib/authentication/signupscreen.dart
import 'package:flutter/material.dart';
import 'package:hunter/methods/common_methods.dart';

import 'loginscreen.dart';



class SignupScreen extends StatefulWidget {
  // ignore: use_super_parameters
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController usernameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController userphoneTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  CommonMethods cMethods = CommonMethods();





  checkIfNetworkIsAvailable() async {
    await cMethods.checkConnectivity(context);

  }


  signUpFormValidation(){
    if(usernameTextEditingController.text.trim().length <2)
    {
      cMethods.displaySnackBar("your name must be at least 3 or more characters", context);
    }
    else if(userphoneTextEditingController.text.trim().length <9)
    {
      cMethods.displaySnackBar("your number must be at least 10 characters", context);

    }
    else if(!emailTextEditingController.text.contains("@"))
    {
      cMethods.displaySnackBar("invalid email", context);

    }
    else if(passwordTextEditingController.text.trim().length < 5)
    {
      cMethods.displaySnackBar("your password should be at least 6 characters", context);
    }
    else{
      //register
    }
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image.asset(
                'assets/images/avatarman.png',
              ),
              const Text(
                'Create your account',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,

                ),
              ),
              Padding(
                padding:const EdgeInsets.all(20),
                child: Column(
                    children: [
                      TextField(
                        controller: usernameTextEditingController,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'User Name',
                            labelStyle: TextStyle(
                              fontSize: 15,
                            )
                        ),
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),

                      ),
                      const SizedBox(height: 10),
                      TextField(
                        controller: emailTextEditingController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'User Email',
                            labelStyle: TextStyle(
                              fontSize: 15,
                            )
                        ),
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),

                      ),
                      const SizedBox(height: 10),
                      TextField(
                        controller: userphoneTextEditingController,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'User Phone',
                            labelStyle: TextStyle(
                              fontSize: 15,
                            )
                        ),
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),

                      ),
                      const SizedBox(height: 10),
                      TextField(
                        controller: passwordTextEditingController,
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'User Password',
                            labelStyle: TextStyle(
                              fontSize: 15,
                            )
                        ),
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),

                      ),
                      const SizedBox(height: 30),
                      ElevatedButton(
                        onPressed: (){
                          checkIfNetworkIsAvailable();
                          signUpFormValidation();

                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          // ignore: prefer_const_constructors
                          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10), // Adjust the padding values as needed()
                        ),
                        child: const Text('Sign Up'),)
                    ]
                ),
              ),

              //text button
              TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
                  },
                  child: Text('Already have an account? Sign In here',
                      style: TextStyle(
                        color: Colors.grey[700],
                      )
                  )
              ),

            ],
          ),
        ),
      ),
    );
  }
}