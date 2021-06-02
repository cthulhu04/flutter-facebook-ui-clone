import 'package:flutter/material.dart';
import 'package:flutter_facebook_responsive_ui/models/models.dart';
import 'package:flutter_facebook_responsive_ui/widgets/profile_avatar.dart';
import 'package:flutter_facebook_responsive_ui/widgets/responsive.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;

  CreatePostContainer({@required this.currentUser});

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = Responsive.isDesktop(context);
    return Card(
      margin: EdgeInsets.symmetric(horizontal: isDesktop ? 5.0 : 0.0),
      elevation: isDesktop ? 1.0 : 0.0,
      shape: isDesktop
          ? RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))
          : null,
      child: Container(
        padding: EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
        child: Column(
          children: [
            Row(
              children: [
                ProfileAvatar(imageUrl: currentUser.imageUrl),
                SizedBox(width: 8.0),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration.collapsed(
                      hintText: 'What\'s on your mind?',
                    ),
                  ),
                ),
              ],
            ),
            Divider(height: 10.0, thickness: 0.5),
            Container(
              height: 40.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlatButton.icon(
                    onPressed: () => print('live'),
                    icon: Icon(
                      Icons.videocam,
                      color: Colors.red,
                    ),
                    label: Text('live'),
                  ),
                  VerticalDivider(width: 8.0),
                  FlatButton.icon(
                    onPressed: () => print('photo'),
                    icon: Icon(
                      Icons.photo_library,
                      color: Colors.green,
                    ),
                    label: Text('photo'),
                  ),
                  VerticalDivider(width: 8.0),
                  FlatButton.icon(
                    onPressed: () => print('room'),
                    icon: Icon(
                      Icons.video_call,
                      color: Colors.purple,
                    ),
                    label: Text('room'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
