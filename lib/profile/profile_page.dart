// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);
  // final LoginManager loginManager = LoginManager();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0XFF333742),

        appBar: AppBar(
          title: const Text('Profile',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          backgroundColor: const Color(0XFF333742),
          elevation: 0,
        ),
        body: Container());
  }
}
/*
Container(
          // color: mainColor,
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(height: 100),
                  const CustomTextField(
                    keyboardType: TextInputType.name,
                    text: "Username",
                    icon: Icons.person_outlined,
                    isPasswordType: false,
                    // controller: controller.usernameController,
                    textInputAction: TextInputAction.none,
                    enable: false,
                  ),
                  const SizedBox(height: 20),
                  const CustomTextField(
                    keyboardType: TextInputType.emailAddress,
                    text: "Email",
                    icon: Icons.email_outlined,
                    isPasswordType: false,
                    // controller: controller.emailController,
                    textInputAction: TextInputAction.none,
                    enable: false,
                  ),
                  const SizedBox(height: 20),
                  const CustomTextField(
                    keyboardType: TextInputType.number,
                    text: "Phone Number",
                    icon: Icons.phone_outlined,
                    isPasswordType: false,
                    // controller: controller.phoneNumberController,
                    textInputAction: TextInputAction.none,
                    enable: false,
                  ),
                  const SizedBox(height: 20),
                  const CustomTextField(
                    text: "Company Name",
                    icon: Icons.group_work_outlined,
                    isPasswordType: false,
                    // controller: controller.companyNameController,
                    textInputAction: TextInputAction.none,
                    enable: false,
                    keyboardType: TextInputType.name,
                  ),
                  const SizedBox(height: 20),
                  CustomGeneralButton(
                    onTap: () =>{} ,
                        // Get.toNamed(Routes.editProfile),
                    text: 'Edit',
                  )
                ],
              ),
            ),
          ),
        ))
*/
