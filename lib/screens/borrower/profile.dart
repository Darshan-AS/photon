import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
            child: CircleAvatar(
              child: Text('B', style: Theme.of(context).textTheme.display1),
              radius: 44.0,
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Bruce Wayne',
                  style: Theme.of(context).textTheme.display1,
                ),
                SizedBox(height: 2),
                Row(
                  children: <Widget>[
                    Text(
                      '12/02/1973',
                      style: Theme.of(context)
                          .textTheme
                          .body1
                          .copyWith(fontSize: 16.0),
                    ),
                    SizedBox(width: 30),
                    Text(
                      'Male',
                      style: Theme.of(context)
                          .textTheme
                          .body1
                          .copyWith(fontSize: 16.0),
                    ),
                  ],
                ),
                SizedBox(height: 2),
                Text(
                  'bruce.wayne@gmail.com',
                  style: Theme.of(context)
                      .textTheme
                      .body1
                      .copyWith(fontSize: 16.0),
                ),
                SizedBox(height: 2),
                Text(
                  '9383256859',
                  style: Theme.of(context)
                      .textTheme
                      .body1
                      .copyWith(fontSize: 16.0),
                ),
                SizedBox(height: 10),
                Text(
                  '#12/A Wayne Mansion, Central road, Gotham - 172689',
                  style: Theme.of(context)
                      .textTheme
                      .body1
                      .copyWith(fontSize: 16.0),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
