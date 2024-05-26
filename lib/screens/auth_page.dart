import 'package:flutter/material.dart';
import 'package:flutter_doctor_appointmen_tapp/components/login_form.dart';
import 'package:flutter_doctor_appointmen_tapp/components/social_button.dart';
import 'package:flutter_doctor_appointmen_tapp/utils/config.dart';
import 'package:flutter_doctor_appointmen_tapp/utils/text.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            AppText.enText['welcome_text']!,
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          Config.spaceSmall,
          Text(
            AppText.enText['signIn_text']!,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Config.spaceSmall,
          //Login component
          const LoginForm(),
          Config.spaceSmall,
          Center(
            child: TextButton(
              onPressed: () {},
              child: Text(
                AppText.enText['forgot-password']!,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ),
          const Spacer(),
          Row(
            children: <Widget>[
              Expanded(
                child: Divider(
                  color: Colors.grey.shade400,
                  thickness: 1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'or',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: Divider(
                  color: Colors.grey.shade400,
                  thickness: 1,
                ),
              ),
            ],
          ),
          Config.spaceSmall,
          // Center(
          //   child: Text(
          //     AppText.enText['social-login']!,
          //     style: TextStyle(
          //       fontSize: 16,
          //       fontWeight: FontWeight.normal,
          //       color: Colors.grey.shade500,
          //     ),
          //   ),
          // ),
          Config.spaceSmall,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const <Widget>[
              const SocialButton(social: 'google'),
              const SocialButton(social: 'facebook'),
            ],
          ),
          Config.spaceSmall,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                AppText.enText['signUp_text']!,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey.shade500,
                ),
              ),
              const Text(
                'Inscription',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ],
          )
        ],
      )),
    ));
  }
}
