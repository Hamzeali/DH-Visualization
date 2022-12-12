import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../Main/global.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => AboutState();
}

class AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Diffie-Hellman'),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            // size: MediaQuery.of(context).size.height * 0.0456,
          ),
          onPressed: () {
            Navigator.pop(context);
            // SystemChrome.setPreferredOrientations([
            //   DeviceOrientation.portraitUp,
            //   DeviceOrientation.portraitDown,
            // ]);
          },
        ),
      ),
      body: InteractiveViewer(
        panEnabled: true,
        scaleEnabled: Global.scaleEnabled,
        maxScale: 4,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.8,
          margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
          decoration: BoxDecoration(
            // color: Colors.blueGrey.shade900,
            // border: Border.all(color: Colors.blueAccent),
            borderRadius: BorderRadius.circular(10),
            // gradient: const LinearGradient(
            //   begin: Alignment.topCenter,
            //   end: Alignment.bottomCenter,
            //   colors: [
            //     Colors.indigo,
            //     Colors.blue,
            //   ],
            // ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(20),
                  child: Text(
                    AppLocalizations.of(context)!.about0,
                    // 'What is DHKE?',
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: Text(
                        AppLocalizations.of(context)!.about1,
                        // '- The idea of Diffie-Hellman',
                        style: const TextStyle(
                          fontSize: 25,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Container(
                      margin: const EdgeInsets.all(20),
                      child: RichText(
                        text: TextSpan(
                          style: const TextStyle(
                            height: 1.8,
                            fontSize: 20,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text: AppLocalizations.of(context)!.about2,
                              // text: 'Diffie-Hellman (',
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            const TextSpan(
                              text: 'DH ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: AppLocalizations.of(context)!.about3,
                              // 'for short) is a protocol that allows two parties to communicate securely with each other over insecure channel (such as the internet). The main idea of (DH) is about generating and exchanging keys between two parties, and with a mathematical algorithm they can generate.a secret key that helps them to encrypt and decrypt the message.',
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            const TextSpan(
                              text: ' DH ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: AppLocalizations.of(context)!.about4,
                              // 'is not a new protocol where it was invented by ',
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            // TextSpan(
                            //   text: 'Whitfeld Diffie ',
                            //   style: TextStyle(
                            //     fontWeight: FontWeight.bold,
                            //     color: Colors.black,
                            //   ),
                            // ),
                            // TextSpan(
                            //   text: 'and ',
                            //   style: TextStyle(
                            //     color: Colors.black,
                            //   ),
                            // ),
                            // TextSpan(
                            //   text: 'Martin Hellman ',
                            //   style: TextStyle(
                            //     fontWeight: FontWeight.bold,
                            //     color: Colors.black,
                            //   ),
                            // ),
                            TextSpan(
                              text: AppLocalizations.of(context)!.about5,
                              // 'in 1976. DH can generate the secret key but can not encrypt or decrypt data.',
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: Text(
                        AppLocalizations.of(context)!.about6,
                        // '- Diffie-Hellman Protocol',
                        style: const TextStyle(
                          fontSize: 25,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Container(
                      margin: const EdgeInsets.all(20),
                      child: RichText(
                        text: TextSpan(
                          style: const TextStyle(
                            height: 1.8,
                            fontSize: 20,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text: AppLocalizations.of(context)!.about7,
                              // text: 'Let\'s consider the scenario. ',
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            // TextSpan(
                            //   text: 'Alice ',
                            //   style: TextStyle(
                            //     fontWeight: FontWeight.bold,
                            //     color: Colors.black,
                            //   ),
                            // ),
                            // TextSpan(
                            //   text: AppLocalizations.of(context)!.about8,
                            //   // text: 'and ',
                            //   style: TextStyle(
                            //     color: Colors.black,
                            //   ),
                            // ),
                            // TextSpan(
                            //   text: 'Bob ',
                            //   style: TextStyle(
                            //     fontWeight: FontWeight.bold,
                            //     color: Colors.black,
                            //   ),
                            // ),
                            TextSpan(
                              text: AppLocalizations.of(context)!.about8,
                              // 'Alcie and Bob want to send secure messages to each other over the internet, and in the middle there is Eve, who will try to read the messages:',
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            // TextSpan(
                            //   text: 'Eve',
                            //   style: TextStyle(
                            //     fontWeight: FontWeight.bold,
                            //     color: Colors.black,
                            //   ),
                            // ),
                            // TextSpan(
                            //   text: ', who will try to read the messages:',
                            //   style: TextStyle(
                            //     color: Colors.black,
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 30),
                      child: RichText(
                        text: TextSpan(
                          style: const TextStyle(
                            height: 1.8,
                            fontSize: 20,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text: AppLocalizations.of(context)!.about9,
                              // text: '- Alice selects a multiplicative group ',
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            const TextSpan(
                              text: '(n) ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: AppLocalizations.of(context)!.about10,
                              // text: 'and a primitive root ',
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            const TextSpan(
                              text: '(r) ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: AppLocalizations.of(context)!.about11,
                              // text: ', ',
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            const TextSpan(
                              text: 'n ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            // TextSpan(
                            //   text: AppLocalizations.of(context)!.about12,
                            //   // text: 'and ',
                            //   style: TextStyle(
                            //     color: Colors.black,
                            //   ),
                            // ),
                            // TextSpan(
                            //   text: 'r ',
                            //   style: TextStyle(
                            //     fontWeight: FontWeight.bold,
                            //     color: Colors.black,
                            //   ),
                            // ),
                            TextSpan(
                              text: AppLocalizations.of(context)!.about12,
                              // text: 'must be ',
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: AppLocalizations.of(context)!.about13,
                              // text: 'prime ',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: AppLocalizations.of(context)!.about14,
                              // text: 'numbers.',
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 30),
                      child: RichText(
                        text: TextSpan(
                          style: const TextStyle(
                            height: 1.8,
                            fontSize: 20,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text: AppLocalizations.of(context)!.about15,
                              // '- Alice shares these two numbers over the internet with Bob. Sharing of (',
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            const TextSpan(
                              text: 'n ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: AppLocalizations.of(context)!.about16,
                              // text: 'and ',
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            const TextSpan(
                              text: 'r ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: AppLocalizations.of(context)!.about17,
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 30),
                      child: RichText(
                        text: TextSpan(
                          style: const TextStyle(
                            height: 1.8,
                            fontSize: 20,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text: AppLocalizations.of(context)!.about18,
                              // text: '- Alice will choose her secret number ',
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            const TextSpan(
                              text: 's_A',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: AppLocalizations.of(context)!.about19,
                              // ' and keep it for herself. Then Alice will calculate a new number ',
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            const TextSpan(
                              text: '\'a\' ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: AppLocalizations.of(context)!.about20,
                              // '(Alice\'s public number) through the following fomula and share it with Bob:',
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            const TextSpan(
                              text: '\na = r',
                              style: TextStyle(
                                color: Colors.blue,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            WidgetSpan(
                              child: Transform.translate(
                                offset: const Offset(2, -10),
                                child: const Text(
                                  's_A',
                                  //superscript is usually smaller in size
                                  textScaleFactor: 1,
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ),
                            ),
                            const TextSpan(
                              text: ' mod n\n',
                              style: TextStyle(
                                color: Colors.blue,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //----
                    Container(
                      margin: const EdgeInsets.only(left: 30),
                      child: RichText(
                        text: TextSpan(
                          style: const TextStyle(
                            height: 1.8,
                            fontSize: 20,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text: AppLocalizations.of(context)!.about21,
                              // '- Bob will do same process. He will choose his secret number ',
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            const TextSpan(
                              text: 's_B',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: AppLocalizations.of(context)!.about22,
                              // ' and keep it for himself. Bob will calcualte a new number ',
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            const TextSpan(
                              text: '\'b\' ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: AppLocalizations.of(context)!.about23,
                              // '(Bob\'s public number) through the a similar fomula and share it with Alice:',
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            const TextSpan(
                              text: '\nb = r',
                              style: TextStyle(
                                color: Colors.blue,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            WidgetSpan(
                              child: Transform.translate(
                                offset: const Offset(2, -10),
                                child: const Text(
                                  's_B',
                                  //superscript is usually smaller in size
                                  textScaleFactor: 1,
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ),
                            ),
                            const TextSpan(
                              text: ' mod n\n',
                              style: TextStyle(
                                color: Colors.blue,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //---
                    Container(
                      margin: const EdgeInsets.only(left: 30),
                      child: RichText(
                        text: TextSpan(
                          style: const TextStyle(
                            height: 1.8,
                            fontSize: 20,
                            color: Colors.black,
                          ),
                          children: [
                            const TextSpan(
                              text: '\'a\' ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: AppLocalizations.of(context)!.about16,
                              // text: 'and ',
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            const TextSpan(
                              text: '\'b\' ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: AppLocalizations.of(context)!.about24,
                              // 'will be public and Eve can get the calue of each.',
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 30),
                      child: RichText(
                        text: TextSpan(
                          style: const TextStyle(
                            height: 1.8,
                            fontSize: 20,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text: AppLocalizations.of(context)!.about25,
                              // '- Now Alice and Bob will generate the shared secret number ',
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            const TextSpan(
                              text: '(S) ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: AppLocalizations.of(context)!.about26,
                              // 'which will be used in the encryption and decryption process. The formula for generating the key is as follows ',
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 30),
                      child: RichText(
                        text: TextSpan(
                          style: const TextStyle(
                            height: 1.8,
                            fontSize: 20,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text: AppLocalizations.of(context)!.about27,
                              // text: 'For Alice: ',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            const TextSpan(
                              text: 'S = b',
                              style: TextStyle(
                                color: Colors.blue,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            WidgetSpan(
                              child: Transform.translate(
                                offset: const Offset(2, -10),
                                child: const Text(
                                  's_A',
                                  //superscript is usually smaller in size
                                  textScaleFactor: 1,
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ),
                            ),
                            const TextSpan(
                              text: ' mod n',
                              style: TextStyle(
                                color: Colors.blue,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 30),
                      child: RichText(
                        text: TextSpan(
                          style: const TextStyle(
                            height: 1.8,
                            fontSize: 20,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text: AppLocalizations.of(context)!.about28,
                              // text: 'For Bob: ',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            const TextSpan(
                              text: 'S = a',
                              style: TextStyle(
                                color: Colors.blue,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            WidgetSpan(
                              child: Transform.translate(
                                offset: const Offset(2, -10),
                                child: const Text(
                                  's_B',
                                  //superscript is usually smaller in size
                                  textScaleFactor: 1,
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ),
                            ),
                            const TextSpan(
                              text: ' mod n',
                              style: TextStyle(
                                color: Colors.blue,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 30),
                      child: RichText(
                        text: TextSpan(
                          style: const TextStyle(
                            height: 1.8,
                            fontSize: 20,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text: AppLocalizations.of(context)!.about29,
                              // text: 'The secret number ',
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            const TextSpan(
                              text: '(S) ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: AppLocalizations.of(context)!.about30,
                              // 'will bot be shared, so only Alice and Bob will have it, Eve will not.',
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
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
