import 'package:flutter/material.dart';
import 'package:meta_tube/utils/app_styles.dart';
import 'package:meta_tube/widgets/custom_textfield.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController titleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.dark ,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _mainButton(() => null, 'New File'),
                Row(
                  children: [
                    _actionButton(() => null, Icons.add),
                    SizedBox(width: 10),
                    _actionButton(() => null, Icons.search),
                  ],
                )
              ],
            ),
            const SizedBox(height: 20),
            CustomTextfield(maxLength: 100, maxLines: 3, hintText: 'Add Product Name', controller: titleController)
          ],
        ),
      )
    );
  }

  ElevatedButton _mainButton(Function()? onPressed, String text) {
    return ElevatedButton(
      onPressed: onPressed,
      style: _buttonStyle(),
      child: Text(text),
    );
  }

  IconButton _actionButton(Function()? onPressed, IconData icon) {
    return IconButton(
      onPressed: onPressed,
      splashRadius: 20,

style: ButtonStyle(
      // Change splash color ONLY when clicked (not hover)
      overlayColor: WidgetStateProperty.resolveWith<Color?>((states) {
        if (states.contains(WidgetState.pressed)) {
          return AppTheme.accent;  // your splash color here
        }
        return null; // default for hover/normal
      }),
    ),
      icon: Icon(
        icon,
        color: AppTheme.medium,
      ),
    );
  }

  ButtonStyle _buttonStyle() {
    return ElevatedButton.styleFrom(
      backgroundColor: AppTheme.accent,
      foregroundColor: AppTheme.dark,
    );
  } 
}