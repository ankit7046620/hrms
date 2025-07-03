// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../../../../common/component/common_elevated_button.dart';
// import '../../../../common/component/custom_image_widget.dart';
// import '../../../../common/component/custom_text_field.dart';
// import '../../../../constant/assets_constant.dart';
// import '../controllers/login_controller.dart';
//
// class LoginView extends GetView<LoginController> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFF1f3d86),
//       body: SafeArea(
//         child: Center(
//           child: SingleChildScrollView(
//             padding: const EdgeInsets.all(24.0),
//             child: Card(
//               elevation: 8,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(16),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(24.0),
//                 child: Form(
//                   key: controller.formKey,
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       _buildHeader(),
//                       const SizedBox(height: 32),
//                       _buildEmailField(),
//                       const SizedBox(height: 16),
//                       _buildPasswordField(),
//                       const SizedBox(height: 24),
//                       _buildLoginButton(),
//                       const SizedBox(height: 16),
//                       _buildForgotPassword(),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildHeader() {
//     return Column(
//       children: [
//         CustomImageWidget(
//           fit: BoxFit.contain,
//           imagePath: AssetsConstant.logo,
//           height: 100,
//           width: double.infinity,
//           alignment: Alignment.center,
//         ),
//         const SizedBox(height: 16),
//         const Text(
//           'Welcome Back',
//           style: TextStyle(
//             fontSize: 28,
//             fontWeight: FontWeight.bold,
//             color: Color(0xFF0f2645),
//           ),
//         ),
//         const SizedBox(height: 8),
//         const Text(
//           'Sign in to your account',
//           style: TextStyle(
//             fontSize: 16,
//             color: Color(0xFF163049),
//           ),
//         ),
//       ],
//     );
//   }
//
//   Widget _buildEmailField() {
//     return CustomTextField(
//       controller: controller.emailController,
//       labelText: 'Email',
//       hintText: 'Enter your email',
//       prefixIcon: Icons.email_outlined,
//       keyboardType: TextInputType.emailAddress,
//       validator: controller.validateEmail,
//     );
//   }
//
//   Widget _buildPasswordField() {
//     return Obx(() => CustomTextField(
//       controller: controller.passwordController,
//       labelText: 'Password',
//       hintText: 'Enter your password',
//       prefixIcon: Icons.lock_outline,
//       obscureText: !controller.isPasswordVisible.value,
//       suffixIcon: IconButton(
//         icon: Icon(
//           controller.isPasswordVisible.value
//               ? Icons.visibility_off
//               : Icons.visibility,
//         ),
//         onPressed: controller.togglePasswordVisibility,
//       ),
//       validator: controller.validatePassword,
//     ));
//   }
//
//   Widget _buildLoginButton() {
//     return Obx(() => CommonElevatedButton(
//       text: 'Login',
//       width: double.infinity,
//       isLoading: controller.isLoading.value,
//       onPressed: controller.isLoading.value ? null : controller.login, child: SizedBox(),
//     ));
//   }
//
//   Widget _buildForgotPassword() {
//     return TextButton(
//       onPressed: controller.forgotPassword,
//       child: const Text(
//         'Forgot Password?',
//         style: TextStyle(color: Color(0xFF0f2645)),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/component/common_elevated_button.dart';
import '../../../../common/component/custom_image_widget.dart';
import '../../../../common/component/custom_text_field.dart';
import '../../../../constant/assets_constant.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height -
                  MediaQuery.of(context).padding.top -
                  MediaQuery.of(context).padding.bottom - 48, // Subtract padding
            ),
            child: IntrinsicHeight(
              child: Form(
                key: controller.formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Add some top spacing to center content vertically
                    const SizedBox(height: 40),

                    _buildHeader(),
                    const SizedBox(height: 40),
                    _buildEmailField(),
                    const SizedBox(height: 20),
                    _buildPasswordField(),
                    const SizedBox(height: 32),
                    _buildLoginButton(),
                    const SizedBox(height: 24),
                    _buildForgotPassword(),

                    // Add bottom spacing to push content up
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      children: [
        CustomImageWidget(
          fit: BoxFit.contain,
          imagePath: AssetsConstant.logo,
          height: 120, // Increased logo size for full screen
          width: double.infinity,
          alignment: Alignment.center,
        ),
        const SizedBox(height: 24),
        const Text(
          'Welcome Back',
          style: TextStyle(
            fontSize: 32, // Increased font size for full screen
            fontWeight: FontWeight.bold,
            color: Color(0xFF1f3d86), // Changed to white for better contrast
          ),
        ),
        const SizedBox(height: 12),
        const Text(
          'Sign in to your account',
          style: TextStyle(
            fontSize: 18, // Increased font size
            color:  Color(0xFF163049), // Changed to white70 for better contrast
          ),
        ),
      ],
    );
  }

  Widget _buildEmailField() {
    return CustomTextField(
      controller: controller.emailController,
      labelText: 'Email',
      hintText: 'Enter your email',
      prefixIcon: Icons.email_outlined,
      keyboardType: TextInputType.emailAddress,
      validator: controller.validateEmail,
    );
  }

  Widget _buildPasswordField() {
    return Obx(() => CustomTextField(
      controller: controller.passwordController,
      labelText: 'Password',
      hintText: 'Enter your password',
      prefixIcon: Icons.lock_outline,
      obscureText: !controller.isPasswordVisible.value,
      suffixIcon: IconButton(
        icon: Icon(
          controller.isPasswordVisible.value
              ? Icons.visibility_off
              : Icons.visibility,
        ),
        onPressed: controller.togglePasswordVisibility,
      ),
      validator: controller.validatePassword,
    ));
  }

  Widget _buildLoginButton() {
    return Obx(() => CommonElevatedButton(
      text: 'Login',
      width: double.infinity,
      isLoading: controller.isLoading.value,
      onPressed: controller.isLoading.value ? null : controller.login,
      child: SizedBox(),
    ));
  }

  Widget _buildForgotPassword() {
    return TextButton(
      onPressed: controller.forgotPassword,
      child: const Text(
        'Forgot Password?',
        style: TextStyle(
          color:  Color(0xFF163049), // Changed to white70 for better contrast
          fontSize: 16,
        ),
      ),
    );
  }
}