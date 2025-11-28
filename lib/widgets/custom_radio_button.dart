import 'package:flutter/material.dart';

typedef OnValueChanged<T> = void Function(T value);

class CustomRadioButton<T> extends StatelessWidget {
  /// Single-value mode
  final T? value;
  final bool? selected;
  final VoidCallback? onTap;

  /// List mode
  final List<T>? items;
  final T? groupValue;
  final OnValueChanged<T>? onChanged;
  final Color radioColor;

  /// Optional label builder for list items
  final String Function(T)? labelBuilder;

  const CustomRadioButton({
    Key? key,
    this.value,
    this.selected,
    this.onTap,
    this.items,
    this.groupValue,
    this.onChanged,
    this.labelBuilder,
    this.radioColor = const Color(0xFF2C74FF),
  }) : assert(
         (value != null && selected != null && onTap != null) ||
             (items != null && groupValue != null && onChanged != null),
         "Provide either single-value or list mode parameters",
       ),
       super(key: key);

  @override
  Widget build(BuildContext context) {
    // Single-value mode
    if (value != null) {
      return GestureDetector(
        onTap: onTap,
        child: Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: radioColor, width: 1),
          ),
          child: selected == true
              ? Center(
                  child: Container(
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF2C74FF),
                    ),
                  ),
                )
              : null,
        ),
      );
    }

    // List mode
    return Column(
      children: items!.map((item) {
        return InkWell(
          onTap: () {
            if (onChanged != null) onChanged!(item);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: Row(
              children: [
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.blue, width: 2),
                  ),
                  child: groupValue == item
                      ? Center(
                          child: Container(
                            width: 12,
                            height: 12,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue,
                            ),
                          ),
                        )
                      : null,
                ),
                SizedBox(width: 8),
                Text(
                  labelBuilder != null ? labelBuilder!(item) : item.toString(),
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
