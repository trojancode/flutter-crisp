import 'package:crisp/crisp.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  CrispMain crispMain;

  @override
  void initState() {
    super.initState();

    crispMain = CrispMain(
      websiteId: '5cb32754-d32f-407a-ac56-5e9d81f7477b',
      locale: 'en',
    );

    crispMain.register(
      user: CrispUser(
        email: "leo1@provider.com",
        // avatar: 'https://avatars2.githubusercontent.com/u/16270189?s=200&v=4',
        nickname: "João Cardoso1",
        phone: "5511987654311",
      ),
    );
    // crispMain.sendMessage("Are you stuck at home page?");
    // crispMain.sendMessage(
    //     "See how to pair a childs device \\n\\ https://superr.crisp.help/en/article/how-to-pair-a-childs-device-1n8b1s9");

    // crispMain.setMessage("Hello world");
    // crispMain.showArticle("how-to-pair-a-childs-device-1n8b1s9");
    crispMain.setTrigger("new-trigger");
    // crispMain.setSessionData({
    //   "order_id": "111",
    //   "app_version": "0.1.1",
    // });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Your brand'),
          // actions: [
          //   IconButton(
          //       onPressed: () {
          //         crispMain.sendMessage("appp bar button detected");
          //       },
          //       icon: Icon(Icons.send))
          // ],
        ),
        body: CrispView(
          crispMain: crispMain,
          clearCache: true,
        ),
      ),
    );
  }
}
