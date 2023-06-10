import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_project/screens/aboutUs/aboutUs.dart';
import 'package:my_project/screens/accounts/accounts.dart';
import 'package:my_project/screens/privacyPolicy/privacyPolicy.dart';
import 'package:my_project/screens/termsandcondition/terms.dart';
import 'package:share_plus/share_plus.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 2, 31, 55),
      body: SafeArea(
          child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.grey,
                  )),
              const SizedBox(
                width: 20,
              ),
              const Text(
                'Settings',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(
                width: 150,
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.settings,
                    color: Colors.indigo,
                  ))
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          // InkWell(
          //   onTap: () {
          //     Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          //       return const AccountScreen();
          //     }));
          //   },
          //   child: Row(
          //     children: [
          //       IconButton(
          //           onPressed: () {},
          //           icon: const Icon(
          //             Icons.manage_accounts,
          //             size: 30,
          //             color: Colors.purple,
          //           )),
          //       const SizedBox(
          //         width: 20,
          //       ),
          //       const Text(
          //         'Account',
          //         style: TextStyle(
          //             fontWeight: FontWeight.bold,
          //             fontSize: 25,
          //             color: Colors.grey),
          //       )
          //     ],
          //   ),
          // ),
          InkWell(
            onTap: () {
              Share.share(
                  "https://github.com/abhirammadhumadhav/music-player-updated");
            },
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.share,
                      size: 30,
                      color: Colors.purple,
                    )),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  'Shareapp',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.grey),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const PrivacyPolicy();
              }));
            },
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.policy,
                      size: 30,
                      color: Colors.purple,
                    )),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  'Privacy policy',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.grey),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const TermsScreen();
              }));
            },
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.privacy_tip,
                      size: 30,
                      color: Colors.purple,
                    )),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  'Terms & conditions',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.grey),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const AboutUs();
              }));
            },
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.info,
                      size: 30,
                      color: Colors.purple,
                    )),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  'About us',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.grey),
                )
              ],
            ),
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    SystemNavigator.pop();
                  },
                  icon: const Icon(
                    Icons.exit_to_app,
                    size: 30,
                    color: Colors.purple,
                  )),
              const SizedBox(
                width: 20,
              ),
              const Text(
                'Exit',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.grey),
              )
            ],
          ),
        ],
      )),
    );
  }
}
