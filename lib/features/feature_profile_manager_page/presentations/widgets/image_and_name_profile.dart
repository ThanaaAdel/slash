import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/image_manager.dart';
import '../../../../core/theming/spacing.dart';
import '../../../../core/theming/styles.dart';
import '../../../../generated/l10n.dart';

class ImageAndNameProfile extends StatefulWidget {
  const ImageAndNameProfile({super.key, required this.imageLink, required this.firstName, required this.lastName, required this.email, required this.phoneNumber, required this.onImageChanged});
  final String imageLink;
  final String firstName;
  final String lastName;
  final String email;
  final String phoneNumber;
  final Function(String newImageLink) onImageChanged; // Callback function type
  @override
  State<ImageAndNameProfile> createState() => _ImageAndNameProfileState();
}
File? _imageFile;
class _ImageAndNameProfileState extends State<ImageAndNameProfile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        verticalSpacing(10),
        imageProfile(),
        verticalSpacing(10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.firstName,
              style: TextStyles.font24White600,
            ),
            horizontalSpacing(5),
            Text(
              widget.lastName,
              style: TextStyles.font24White600,
            ),
          ],
        ),
        verticalSpacing(5),
        Text(
          widget.email,
          style: TextStyles.font14White400.copyWith(
            decoration: TextDecoration.underline,
          ),
        ),
        verticalSpacing(5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
             widget.phoneNumber,
              style: TextStyles.font14White400,
            ),
            horizontalSpacing(5),
            Image.asset(ImageManager.phoneVerifiedAccount),
          ],
        ),
      ],
    );
  }

  Widget imageProfile() {
    return GestureDetector(
      onTap: _chooseImage,
      child: SizedBox(
        height: 80.h,
        width: 100.w,
        child: Stack(
          children: [
            CircleAvatar(
              radius: 38.sp,
              backgroundImage: _imageFile != null
                  ? FileImage(_imageFile!)
                  :   NetworkImage(widget.imageLink) as ImageProvider<Object>,
            ),
            Positioned(
              bottom: 0.h,
              right: 18.w,
              height: 35.h,
              width: 35.w,
              child: CircleAvatar(
                backgroundColor: ColorsManager.mainColor,
                child: Center(
                  child: IconButton(
                    icon: const Icon(Icons.edit),
                    color: ColorsManager.mainWhite,
                    iconSize: 20.sp,
                    onPressed: _chooseImage,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _chooseImage() async {
    return showModalBottomSheet(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      showDragHandle: true,
      enableDrag: true,
      backgroundColor: ColorsManager.mainBlack,
      context: context,
      builder: (context) => Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: Container(
                    height: 30.r,
                      width: 30.r,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,color: ColorsManager.mainBlack.withOpacity(0.9)),child: const Icon(Icons.camera,color: ColorsManager.mainWhite)),
                  title: Text(S.of(context).gallery,style: TextStyles.font16White600),
                  onTap: () async {
                    Navigator.of(context).pop();
                    final pickedImage = await ImagePicker().pickImage(
                      source: ImageSource.gallery,
                    );
                    _setImageFile(pickedImage == null ? null : File(pickedImage.path));
                  },
                ),
                ListTile(
                  leading:Container(
                      height: 30.r,
                      width: 30.r,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,color: ColorsManager.mainBlack.withOpacity(0.5)),child: const Icon(Icons.camera_alt,color: ColorsManager.mainWhite)),
                  title: Text(S.of(context).camera,style: TextStyles.font16White600),
                  onTap: () async {
                    Navigator.of(context).pop();
                    final pickedImage = await ImagePicker().pickImage(
                      source: ImageSource.camera,
                    );
                    _setImageFile(pickedImage == null ? null : File(pickedImage.path));
                  },
                ),
              ],
            ),

    );
  }

  void _setImageFile(File? pickedImage) {
    if (pickedImage != null) {
      setState(() {
        _imageFile = pickedImage;
        print("the image link : ${pickedImage.path}");
        widget.onImageChanged(pickedImage.path); // Call the callback function with the new image link
      });
    }
  }
}
