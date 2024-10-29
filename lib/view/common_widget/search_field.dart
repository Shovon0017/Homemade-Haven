import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homemade_haven/view/common_widget/common_button.dart';

class SearchField extends StatelessWidget {
   SearchField({super.key,
    required this.onChanged});
  final void Function(String) onChanged;
var value=-1;
  @override
  Widget build(BuildContext context) {
    return TextField(
      // controller: searchController,
      onChanged: onChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderSide:  const BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(8)),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color:CupertinoColors.systemGrey3),
            borderRadius: BorderRadius.circular(8)),
        focusedBorder: OutlineInputBorder(
            borderSide:  const BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(8)),
        labelText: "Search Recipe",
        suffixIcon: InkWell(
            onTap: (){
              Get.defaultDialog(
                  title: "Filter",
                  titleStyle: const TextStyle(
                      color:Color(0xffa1447d), fontWeight: FontWeight.bold),
                  content: Column(
                    children: [
                      DropdownButtonFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                                  borderSide:
                                  const BorderSide(color: Colors.black))),
                          value: value,
                          items: const [
                            DropdownMenuItem(
                              value: -1,
                              child: Text("Choose Country"),
                            ),
                            DropdownMenuItem(
                                value: 0,
                                child: Text("Bangladeshi")),
                            DropdownMenuItem(
                                value: 1,
                                child: Text("Indian")),
                            DropdownMenuItem(
                                value: 2,
                                child: Text("Chinese")),
                            DropdownMenuItem(
                                value: 3,
                                child: Text("Thai")),
                            DropdownMenuItem(
                                value: 4,
                                child: Text("Korean")),
                            DropdownMenuItem(
                                value: 5,
                                child: Text("Pakistani"))
                          ],
                          onChanged: (v) {}),
                      const SizedBox(height: 10),
                      CommonButton(
                          buttonName: "Search", onTap: () => Get.back())
                    ],
                  ));
            },
            child: const Card(color:Color(0xffa1447d),child: Icon(Icons.search,color: Colors.white,)))
      ),
    );
  }
}
