import 'package:econnect/ui/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ConfigurationDialog extends StatelessWidget {
  const ConfigurationDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Dialog(
      backgroundColor: context.watch<AppTheme>().colors.inputBackground,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
      child: SizedBox(
        height: screenHeight * 0.6,
        width: screenWidth * 0.5,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Configuration Dialog'),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Close'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

showConfigurationDialog(BuildContext context) {
  return showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) => ConfigurationDialog(),
  );
}
