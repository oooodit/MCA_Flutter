import 'package:flutter/material.dart';
import 'dashboard_screen.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var userNameController = TextEditingController();
  var userAddressContoller = TextEditingController();
  var emailController = TextEditingController();
  var mobileContoller = TextEditingController();
  var dobController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration",
          style: TextStyle(
              color: Colors.white,
              fontSize: 25
          ),),
        backgroundColor: Colors.lightBlue,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                controller: userNameController,
                decoration: InputDecoration(
                  labelText: "Enter Your Name",
                  prefixIcon: Icon(Icons.person),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please Enter Name";
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: userAddressContoller,
                decoration: InputDecoration(
                  labelText: "Enter Address",
                  prefixIcon: Icon(Icons.home),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please Enter Address";
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: "Enter Email",
                  prefixIcon: Icon(Icons.email),
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if(value == null || value.isEmpty)
                  {
                    return "Please Enter Email";
                  }
                  else if(!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value))
                  {
                    return "Please Enter valid Email";
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: mobileContoller,
                decoration: InputDecoration(
                  labelText: "Enter Mobile",
                  prefixIcon: Icon(Icons.phone),
                ),
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if(value == null || value.isEmpty)
                  {
                    return "Please Enter Mobile";
                  }
                  else if(!RegExp(r'^\d{10}$').hasMatch(value))
                  {
                    return "Enter valid 10-digit mobile number";
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: dobController,
                decoration: InputDecoration(
                  labelText: "Enter DOB",
                  prefixIcon: Icon(Icons.calendar_today),
                ),
                keyboardType: TextInputType.datetime,
                validator: (value)
                {
                  if (value == null || value.isEmpty)
                  {
                    return "Please Enter DOB";
                  }
                  return null;
                },
              ),

              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if(formKey.currentState!.validate()){

                      }
                    },
                    child: Text("Save"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
