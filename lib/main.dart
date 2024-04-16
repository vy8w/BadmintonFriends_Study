// ignore: file_names
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFCFDAE5),
        appBar: AppBar(
          backgroundColor: const Color(0xFFCFDAE5),
          title: const Text(
            'Account Profile',
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InfoRow(label: 'First name', value: 'Judy'),
              InfoRow(label: 'Last name', value: 'Smith'),
              InfoRow(label: 'Email', value: 'judy.mobbin@gmail.com'),
              SizedBox(height: 10.0),
              Text(
                'Account',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20.0),
              ActionRow(label: 'Change password', icon: Icons.arrow_forward),
              ActionRow(label: 'Sign out', icon: Icons.power_off_outlined),
              SizedBox(height: 30.0),
              ActionRow(label: 'Delete my account', icon: Icons.arrow_forward),
            ],
          ),
        ),
      ),
    );
  }
}

// InfoRow : 정보를 표시하는 역할
// 이 위젯은 라벨과 해당 정보를 표시하는 두 개의 텍스트를 가로로 배열해서 보여줌
// 이 정보는 사용자의 계정에 관련된 정보임
class InfoRow extends StatelessWidget {
  final String label;
  final String value;

  const InfoRow({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromRGBO(229, 236, 243, 1),
        border: Border.all(color: const Color.fromRGBO(229, 236, 243, 1)),
        borderRadius: BorderRadius.circular(5.0),
      ),
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(fontSize: 20.0),
          ),
          const SizedBox(width: 10.0),
          Text(
            value,
            style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

// ActionRow : 동작을 수행하는 역할을 함
// 이 위젯은 라벨과 해당 동작을 나타내는 아이콘을 가로로 배열하여 보여줌
// 이 동작은 사용자가 프로필 관리를 위해 수행하는 작업임
class ActionRow extends StatelessWidget {
  final String label;
  final IconData icon;

  const ActionRow({
    super.key,
    required this.label,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromRGBO(229, 236, 243, 1),
        borderRadius: BorderRadius.circular(5.0),
      ),
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(fontSize: 20.0),
          ),
          const SizedBox(width: 5.0),
          Icon(icon),
        ],
      ),
    );
  }
}
