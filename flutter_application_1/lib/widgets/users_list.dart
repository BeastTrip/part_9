import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/models/User.dart';

import '../screens/UserDetailScreen.dart';

class UserList extends StatefulWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  State<UserList> createState() => _UserListState();
}

List<User> userlist = [
  User(
      age: 16,
      firstname: 'Иван',
      lastname: 'Иванов',
      phone: '2345435345',
      email: 'example@mail.ru',
      avatar:
          'https://sun9-9.userapi.com/impg/htJW7MkNK7SDMv14aDtuBw2Scq43AtvBIFKrDw/XxRbHKJJ5fo.jpg?size=1000x1000&quality=95&sign=4c59864de874a84f6559623504da1aa5&type=album'),
  User(
      age: 16,
      firstname: 'Иван',
      lastname: 'Иванов',
      phone: '2345435345',
      email: 'example@mail.ru',
      avatar:
          'https://sun9-85.userapi.com/impg/pYuxa-o3WRak2plgJNSAjLprYoGWZNvsij4FuQ/fwsJ7SeNeYg.jpg?size=1500x1500&quality=96&sign=f1e99788fbc6f740819a3480ac3c6f42&type=album'),
  User(
      age: 16,
      firstname: 'Иван',
      lastname: 'Иванов',
      phone: '2345435345',
      email: 'example@mail.ru',
      avatar:
          'https://sun9-21.userapi.com/impg/GZzTkwyrLyXHPI-3csmrX63s3a_mualdwIK9GA/nrmw9xlfqjY.jpg?size=1000x1000&quality=96&sign=5d2d9fc6136a6b88879fba5c11264248&type=album'),
];

class _UserListState extends State<UserList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: userlist.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => UserDetailScreen(
                    user: userlist[index],
                  ),
                ),
              );
            },
            child: Card(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 100.0,
                        width: 100.0,
                        child: userlist[index].avatar == ''
                            ? Image.network(
                                'http://cdn.onlinewebfonts.com/svg/img_207975.png')
                            : Image.network(userlist[index].avatar,
                                fit: BoxFit.cover),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Имя:' + userlist[index].firstname,
                              textAlign: TextAlign.left,
                            ),
                            Text('Фамилия:' + userlist[index].lastname),
                            Text('Возраст: ' + userlist[index].age.toString()),
                            Text('Телефон: ' + userlist[index].phone),
                            Text('Телефон: ' + userlist[index].email),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
