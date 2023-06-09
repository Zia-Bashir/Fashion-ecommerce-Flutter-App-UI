import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonExpansionTile extends StatelessWidget {
  const CommonExpansionTile({
    Key? key,
    this.text,
    this.iconColor,
    this.desc,
    this.leading,
  }) : super(key: key);

  final String? text;
  final String? desc;
  final Color? iconColor;
  final IconData? leading;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      leading: Icon(leading, size: 24.sp),
      iconColor: iconColor,
      title: Text(text!,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontFamily: 'Tenor Sans',
          )),
      children: [
        SizedBox(
          width: 210,
          child: Text(desc!,
              style: const TextStyle(
                color: Colors.grey,
                fontFamily: 'Tenor Sans',
              )),
        ),
        const SizedBox(height: 5),
      ],
    );
  }
}
