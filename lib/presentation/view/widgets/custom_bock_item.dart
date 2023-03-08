import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListViewItems extends StatelessWidget {
  const CustomListViewItems({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.r),
        child: FadeInImage(
          fit: BoxFit.cover,
          image: NetworkImage(imageUrl),
          placeholder: const AssetImage("assets/Logo.png"),
          imageErrorBuilder: (context, error, stackTrace) {
            return Center(
              child: Image.network(
                "https://cdn-icons-png.flaticon.com/512/190/190738.png?w=740&t=st=1678289581~exp=1678290181~hmac=3cc73a393bd84b0a522e4278b4328e149ca7acd01ccb3851a2d63a43d0c07f45",
              ),
            );
          },
        ),
      ),
    );
  }
}
