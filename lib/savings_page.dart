import 'package:flutter/material.dart';
import 'package:flutter_application_1/buttons.dart';

class SavingsPage extends StatefulWidget {
  const SavingsPage({super.key});

  @override
  State<SavingsPage> createState() => _SavingsPageState();
}

class _SavingsPageState extends State<SavingsPage> {
  var userQuestion = '';

  final List<String> buttons = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '*',
    '0',
    '<'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[700],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.purple[700],
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        title: const Text('Your Personal Pocket'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      userQuestion,
                      style: const TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.lightbulb,
                  color: Colors.white,
                ),
                Text(
                  'Enter amount with the Keypad',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            Expanded(
              flex: 2,
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (
                    BuildContext context,
                    int index,
                  ) {
                    // delete button
                    if (index == 11) {
                      return MyButton(
                        buttonTapped: () {
                          setState(() {
                            userQuestion = userQuestion.substring(
                                0, userQuestion.length - 1);
                          });
                        },
                        buttonText: buttons[index],
                        color: Colors.purple[700],
                        textColor: Colors.white,
                      );
                    } else {
                      return MyButton(
                        buttonTapped: () {
                          setState(() {
                            userQuestion += buttons[index];
                          });
                        },
                        buttonText: buttons[index],
                        color: Colors.purple[700],
                        textColor: Colors.white,
                      );
                    }
                  }),
            ),
            const SizedBox(height: 5),
            Column(
              children: [
                SizedBox(
                  width: 300,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                      backgroundColor:
                          const MaterialStatePropertyAll(Colors.purple),
                    ),
                    onPressed: () {},
                    child: const Text('What is it for?'),
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                        backgroundColor:
                            const MaterialStatePropertyAll(Colors.white)),
                    onPressed: () {},
                    child: Text(
                      'Next',
                      style: TextStyle(color: Colors.purple[700]),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
