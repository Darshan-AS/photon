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
              child: Text('B', style: Theme.of(context).textTheme.headline4),
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
                  style: Theme.of(context).textTheme.headline4,
                ),
                SizedBox(height: 2),
                Row(
                  children: <Widget>[
                    Icon(Icons.date_range),
                    SizedBox(width: 10),
                    Text(
                      '12/02/1973',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2
                          .copyWith(fontSize: 16.0),
                    ),
                  ],
                ),
                SizedBox(height: 2),
                Row(
                  children: <Widget>[
                    Icon(Icons.email),
                    SizedBox(width: 10),
                    Text(
                      'bruce.wayne@gmail.com',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2
                          .copyWith(fontSize: 16.0),
                    ),
                  ],
                ),
                SizedBox(height: 2),
                Row(
                  children: <Widget>[
                    Icon(Icons.phone),
                    SizedBox(width: 10),
                    Text(
                      '9383256859',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2
                          .copyWith(fontSize: 16.0),
                    ),
                  ],
                ),
                SizedBox(height: 2),
                Row(
                  children: <Widget>[
                    Icon(Icons.location_on),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        '#12/A Wayne Mansion, Central road, Gotham - 172689',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            .copyWith(fontSize: 16.0),
                      ),
                    ),
                  ],
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
