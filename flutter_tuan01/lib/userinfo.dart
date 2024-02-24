import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/icon.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Information',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('User Info'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Center(
                    child: Text(
                      'User Information',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: "First Name",
                      icon: Icon(Icons.account_circle),
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Middle Name",
                      icon: Icon(Icons.account_circle),
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        labelText: 'Last Name',
                        icon: Icon(Icons.account_circle)),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        labelText: "Phone 1", icon: Icon(Icons.phone)),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        labelText: "Phone 2", icon: Icon(Icons.phone)),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        labelText: "Email", icon: Icon(Icons.email)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'What is your Gender?',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: ListTile(
                          title: const Text('Male'),
                          leading: Radio(
                            value: 'male',
                            groupValue: '_gen',
                            onChanged: (value) {},
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          title: const Text('Female'),
                          leading: Radio(
                            value: 'female',
                            groupValue: '_gen',
                            onChanged: (value) {},
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          title: const Text('Other'),
                          leading: Radio(
                            value: 'Other',
                            groupValue: '_gen',
                            onChanged: (value) {},
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'What is your Favorite',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: CheckboxListTile(
                          title: const Text('Read book'),
                          value: false,
                          onChanged: (value) {},
                        ),
                      ),
                      Expanded(
                        child: CheckboxListTile(
                          title: const Text('Listen music'),
                          value: false,
                          onChanged: (value) {},
                        ),
                      ),
                      Expanded(
                        child: CheckboxListTile(
                          title: const Text('Watch Movie'),
                          value: false,
                          onChanged: (value) {},
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
