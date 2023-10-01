import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class soalPrioritasSatu extends StatefulWidget {
  const soalPrioritasSatu({super.key});

  @override
  State<soalPrioritasSatu> createState() => _soalPrioritasSatuState();
}

class _soalPrioritasSatuState extends State<soalPrioritasSatu> {
  DateTime _dueDate = DateTime.now();
  final currentDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Interactive Widgets")),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            //buildDatePicker
            buildDatePicker(context),
          ],
        ),
      ),
    );
  }

  Widget buildDatePicker(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Date'),
            TextButton(
                onPressed: () async {
                  final selectDate = await showDatePicker(
                      context: context,
                      initialDate: currentDate,
                      firstDate: DateTime(1990),
                      lastDate: DateTime(currentDate.year + 5));
                  setState(() {
                    if (selectDate != null) {
                      _dueDate = selectDate;
                    }
                  });
                  print('$selectDate');
                },
                child: const Text('Select'))
          ],
        ),
        Text(
          DateFormat('dd-MM-yyyy').format(_dueDate),
        )
      ],
    );
  }

// datepicker with new method
//   void _showDatePicker() {
//     showDatePicker(
//         context: context,
//         initialDate: currentDate,
//         firstDate: DateTime(1990),
//         lastDate: DateTime(currentDate.year + 5));
//   }
}