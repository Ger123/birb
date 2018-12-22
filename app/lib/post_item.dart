import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'models/post.dart';

class PostItem extends StatelessWidget {
  const PostItem(this.post);

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: CachedNetworkImage(
              imageUrl: post.imageUrl,
              placeholder: const Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                ),
              ),
              errorWidget: const Center(child: Icon(Icons.error)),
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            post.username,
            style: Theme.of(context).textTheme.headline,
          ),
          const SizedBox(height: 8.0),
          Text(
            post.text,
            style: Theme.of(context).textTheme.body1,
          ),
        ]);
  }
}
