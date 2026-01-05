import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:widgets/chips/controllers/choice_chip_controller.dart';

class ChoiceChipWidget extends StatelessWidget {
  const ChoiceChipWidget({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("Build function called");
    final provider = Provider.of<ChoiceChipController>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Choice Chip',
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
        ),
        shadowColor: Colors.grey,
        elevation: 1,
        backgroundColor: Colors.blue.shade500,
      ),
      body: Selector<ChoiceChipController, bool>(
        selector: (_, __) => provider.isSelected,
        builder: (context, value, child) {
          debugPrint("selector widget called");
          debugPrint(value.toString());
          return Center(
            // it has many options you can check it later
            child: ChoiceChip(
              // avatarBorder: CircleBorder(),
              // padding: EdgeInsets.all(10),
              // labelPadding: EdgeInsets.all(0),
              label: Text("Flutter"),
              selected: value,
              onSelected: (value) => provider.selection(value),
              avatar: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              checkmarkColor: Colors.white,
              // backgroundColor: Colors.blueGrey.shade50,
              // selectedColor: Colors.green.shade100,
              // labelStyle: TextStyle(color: Colors.green),
              // disabledColor: Colors.brown,
            ),
          );
        },
      ),
    );
  }
}
