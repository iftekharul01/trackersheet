import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    home: StylishDateTimePicker(),
  ));
}

class StylishDateTimePicker extends StatefulWidget {
   StylishDateTimePicker({super.key});

  @override
  State<StylishDateTimePicker> createState() => _StylishDateTimePickerState();
}

class _StylishDateTimePickerState extends State<StylishDateTimePicker> {
  DateTime? selectedDate;
  TimeOfDay? selectedTime;

  Future<void> _pickDate() async {
    final DateTime? date = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (date != null) {
      setState(() => selectedDate = date);
    }
  }

  Future<void> _pickTime() async {
    final TimeOfDay? time = await showTimePicker(
      context: context,
      initialTime: selectedTime ?? TimeOfDay.now(),
    );
    if (time != null) {
      setState(() => selectedTime = time);
    }
  }

  String get formattedDate {
    if (selectedDate == null) return "No date selected";
    return DateFormat('dd MMMM yyyy').format(selectedDate!);
  }

  String get formattedTime {
    if (selectedTime == null) return "No time selected";
    final now = DateTime.now();
    final time = DateTime(
      now.year,
      now.month,
      now.day,
      selectedTime!.hour,
      selectedTime!.minute,
    );
    return DateFormat('hh:mm a').format(time);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xFFF5F7FB),
      appBar: AppBar(
        title:  Text("Problem 15"),
        backgroundColor: Colors.blue.shade200,
        centerTitle: true,
        elevation: 3,
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.85,
          padding:  EdgeInsets.symmetric(horizontal: 24, vertical: 30),
          margin:  EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 15,
                spreadRadius: 5,
                offset:  Offset(0, 8),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Selected Date and Time",
                textAlign: TextAlign.center,
                style:  TextStyle(
                  fontSize: 20,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
              ),
               SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: _pickDate,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue.shade200,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      padding:  EdgeInsets.all(12),
                    ),
                    child:  Icon(Icons.calendar_today, size: 20),
                  ),
                  Expanded(
                    child: Text(
                      "Selected Date:\n$formattedDate",
                      textAlign: TextAlign.center,
                      style:  TextStyle(
                        fontSize: 17,
                        color: Colors.black87,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
               SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: _pickTime,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue.shade200,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      padding:  EdgeInsets.all(12),
                    ),
                    child:  Icon(Icons.access_time, size: 20),
                  ),
                  Expanded(
                    child: Text(
                      "Selected Time:\n$formattedTime",
                      textAlign: TextAlign.center,
                      style:  TextStyle(
                        fontSize: 17,
                        color: Colors.black87,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
