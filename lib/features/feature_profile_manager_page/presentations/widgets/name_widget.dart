import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/spacing.dart';
import '../../../../core/theming/styles.dart';
import '../../../../generated/l10n.dart';

class NameWidget extends StatefulWidget {
  const NameWidget({
    Key? key,
    required this.firstName,
    required this.lastName,
    required this.onSaveChanges, // Callback for saving changes
  }) : super(key: key);

  final String firstName;
  final String lastName;
  final Function(String, String) onSaveChanges; // Callback function

  @override
  State<NameWidget> createState() => _NameWidgetState();
}

class _NameWidgetState extends State<NameWidget> {
  late TextEditingController _firstNameController;
  late TextEditingController _lastNameController;
  bool _isEditing = false;

  @override
  void initState() {
    super.initState();

    _firstNameController = TextEditingController(text: widget.firstName);
    _lastNameController = TextEditingController(text: widget.lastName);
  }

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    super.dispose();
  }

  void _toggleEdit() {
    setState(() {
      _isEditing = !_isEditing;
    });
  }

  void _saveChanges() {
    // Call the onSaveChanges callback with updated first name and last name
    widget.onSaveChanges(_firstNameController.text, _lastNameController.text);
    setState(() {
      _isEditing = false; // Exit edit mode
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.of(context).name,
            style: TextStyles.font20BoldWhite,
          ),
          verticalSpacing(10),
          Container(
            width: double.infinity,
            height: 120.r, // Adjusted height
            decoration: BoxDecoration(
              color: ColorsManager.lightBlack,
              borderRadius: BorderRadius.circular(6.sp),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(

                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: _isEditing
                              ? null
                              : _toggleEdit, // Disable tapping when in edit mode
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(S.of(context).first,style: TextStyles.font14MediumWhite),
                              horizontalSpacing(10),
                              Expanded(
                                child: SizedBox(
                                  height: 30.sp,
                                  child: TextFormField(
                                    controller: _firstNameController,
                                    style: TextStyles.font14MediumWhite,
                                    onChanged: (value) {
                                      // Handle changes to the field
                                    },
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintStyle: TextStyles.font16White600
                                          .copyWith(fontSize: 14.sp),
                                    ),
                                    enabled:
                                        _isEditing, // Enable text field only in edit mode
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: _isEditing
                                    ? _saveChanges
                                    : null, // Save changes when in edit mode
                                child: const Icon(
                                  Icons.edit,
                                  color: ColorsManager.mainWhite,
                                ), // Edit icon
                              ),
                            ],
                          ),
                        ),
                      ),
                      // horizontalSpacing(10),
                      // ElevatedButton(
                      //   onPressed: _toggleEdit,
                      //   child: Text(_isEditing ? "cancel" : S.of(context).edit),
                      // ),
                      // SizedBox(width: 10.w),
                      // ElevatedButton(
                      //   onPressed: _isEditing ? _saveChanges : null,
                      //   child: Text(S.of(context).save),
                      // ),
                    ],
                  ),
                  verticalSpacing(10),
                  Divider(color: ColorsManager.grey, thickness: 1.sp),
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: _isEditing
                              ? null
                              : _toggleEdit, // Disable tapping when in edit mode
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(S.of(context).last,style: TextStyles.font14MediumWhite),
                              horizontalSpacing(10),
                              Expanded(
                                child: SizedBox(
                                  height: 30.sp,
                                  child: TextFormField(
                                    controller: _lastNameController,
                                    style: TextStyles.font14MediumWhite,
                                    onChanged: (value) {
                                      // Handle changes to the field
                                    },
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintStyle: TextStyles.font16White600
                                          .copyWith(fontSize: 14.sp),
                                    ),
                                    enabled:
                                    _isEditing, // Enable text field only in edit mode
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: _isEditing
                                    ? _saveChanges
                                    : null, // Save changes when in edit mode
                                child: const Icon(
                                  Icons.edit,
                                  color: ColorsManager.mainWhite,
                                ), // Edit icon
                              ),
                            ],
                          ),
                        ),
                      ),
                      // horizontalSpacing(10),
                      // ElevatedButton(
                      //   onPressed: _toggleEdit,
                      //   child: Text(_isEditing ? "cancel" : S.of(context).edit),
                      // ),
                      // SizedBox(width: 10.w),
                      // ElevatedButton(
                      //   onPressed: _isEditing ? _saveChanges : null,
                      //   child: Text(S.of(context).save),
                      // ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
