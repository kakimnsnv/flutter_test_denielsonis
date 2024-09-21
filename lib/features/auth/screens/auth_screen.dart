import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test_denielsonis/core/styles/colors.dart';
import 'package:flutter_test_denielsonis/features/auth/controllers/auth_screen_controller.dart';
import 'package:flutter_test_denielsonis/generated/l10n.dart';
import 'package:get/get.dart';

class AuthScreen extends StatelessWidget {
  AuthScreen({super.key});

  final AuthScreenController controller = Get.put(AuthScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16).r,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    S.of(context).login,
                    style: Get.textTheme.titleLarge,
                  ),
                ),
                SizedBox(height: 6.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    S.of(context).loginGreetingText,
                    style: Get.textTheme.labelMedium?.copyWith(color: secondaryTextColor),
                  ),
                ),
                SizedBox(height: 31.h),
                Form(
                  autovalidateMode: AutovalidateMode.onUnfocus,
                  key: controller.formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.alternate_email_rounded),
                        ),
                        controller: controller.emailController,
                        validator: controller.emailValidator,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: GestureDetector(
                          onTap: () {},
                          child: Text(
                            S.of(context).signInWithPhone,
                            style: Get.textTheme.labelMedium?.copyWith(color: textButtonColor),
                          ),
                        ),
                      ),
                      SizedBox(height: 16.h),
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.lock_rounded),
                        ),
                        controller: controller.passwordController,
                        validator: controller.passwordValidator,
                        obscureText: true,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30.h),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: controller.login,
                        child: Text(S.of(context).login),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40.h),
                Row(
                  children: [
                    Expanded(child: Divider()),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8).r,
                      child: Text(S.of(context).or),
                    ),
                    Expanded(child: Divider()),
                  ],
                ),
                SizedBox(height: 40.h),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(S.of(context).signInWithFacebook),
                        style: Get.theme.elevatedButtonTheme.style?.copyWith(
                          backgroundColor: WidgetStatePropertyAll(Colors.blue),
                          foregroundColor: WidgetStatePropertyAll(Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 14.h),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(S.of(context).signInWithGoogle),
                        style: Get.theme.elevatedButtonTheme.style?.copyWith(
                          backgroundColor: WidgetStatePropertyAll(Colors.white),
                          foregroundColor: WidgetStatePropertyAll(Colors.grey[700]),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 14.h),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    S.of(context).forgotPassword,
                    style: Get.textTheme.labelSmall?.copyWith(color: textButtonColor),
                  ),
                ),
                SizedBox(height: 16.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(S.of(context).dontHaveAccount + " "),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        S.of(context).dontHaveAccountCreate,
                        style: Get.textTheme.labelSmall?.copyWith(color: textButtonColor),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
