import 'package:flutter/material.dart';

class HomeScreenFooter extends StatelessWidget {
  const HomeScreenFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          spacing: 8,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              ),
              onPressed: () {},
              child: Text('Update status'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              ),
              onPressed: () {},
              child: Text('Reset'),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: 30, child: VerticalDivider(color: Colors.black45)),
            IconButton(
              onPressed: () {},
              iconSize: 28,
              icon: Icon(Icons.first_page),
            ),
            IconButton(
              onPressed: () {},
              iconSize: 18,
              icon: Icon(Icons.chevron_left),
            ),
            Container(height: 30, width: 40, color: Colors.lightBlueAccent),
            IconButton(
              onPressed: () {},
              iconSize: 18,
              icon: Icon(Icons.chevron_right),
            ),
            IconButton(
              onPressed: () {},
              iconSize: 28,
              icon: Icon(Icons.last_page),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  SizedBox(
                    height: 30,
                    child: VerticalDivider(color: Colors.black45),
                  ),
                  IconButton(
                    onPressed: () => () {},
                    iconSize: 28,
                    icon: Icon(Icons.construction),
                  ),
                  Text('Settings'),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
