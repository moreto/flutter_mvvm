import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController _email = TextEditingController(text: 'email@example.com');
  final TextEditingController _password = TextEditingController(text: 'password');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false, elevation: 0, centerTitle: true, backgroundColor: Theme.of(context).scaffoldBackgroundColor),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 32),
                Text('login', style: Theme.of(context).textTheme.headlineLarge),
                Text('efetueLogin', style: Theme.of(context).textTheme.bodyLarge),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _email,
                  maxLength: 90,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(8),
                    counterText: '',
                    label: Text('email', style: Theme.of(context).textTheme.bodyLarge),
                    hintText: 'informeEmail',
                    prefixIcon: Icon(MdiIcons.emailOutline, color: Theme.of(context).primaryColor),
                  ),
                  style: Theme.of(context).textTheme.labelMedium,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Informe o email!';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  obscureText: true,
                  controller: _password,
                  maxLength: 12,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    counterText: '',
                    label: Text('senha', style: Theme.of(context).textTheme.bodyLarge),
                    hintText: 'informeSenha',
                    prefixIcon: Icon(MdiIcons.formTextboxPassword, color: Theme.of(context).primaryColor),
                    suffixIcon: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: GestureDetector(
                            child: Icon(MdiIcons.eye, color: Theme.of(context).primaryColor),
                            onTap: () {
                              // Get.toNamed(Routes.esqueceu);
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: GestureDetector(
                            child: Text('esqueceu', style: Theme.of(context).textTheme.displayMedium),
                            onTap: () {
                              // Get.toNamed(Routes.esqueceu);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  style: Theme.of(context).textTheme.labelMedium,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Informe a senha!';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width / 2 - 24,
                      child: ElevatedButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            // controller.login();
                          }
                        },
                        child: Text('login'.toUpperCase()),
                      ),
                    ),
                  ],
                ),
                // const Spacer(),
              ],
            ),
          ),
        ),
      ),
      // persistentFooterButtons: [
      //   Column(
      //     children: [
      //       Padding(
      //         padding: const EdgeInsets.all(8),
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: [
      //             Text('naoTemConta'),
      //             SizedBox(width: MediaQuery.sizeOf(context).width / 100),
      //             GestureDetector(onTap: () {}, child: Text('registro', style: Theme.of(context).textTheme.displayMedium)),
      //           ],
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8),
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: [GestureDetector(onTap: () => {}, child: Text('informarCodigoAcesso', style: Theme.of(context).textTheme.displayMedium))],
      //         ),
      //       ),
      //     ],
      //   ),
      // ],
    );
  }
}
