import 'package:flutter/material.dart';
import 'package:web_dashboard/constants/style.dart';
import 'package:web_dashboard/widgets/custom_text.dart';
import 'package:flutter/rendering.dart';

class ClientsTable extends StatelessWidget {
  // const DriversTable();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 6),
              color: lightGrey.withOpacity(.1),
              blurRadius: 12
            // Add more properties for the BoxShadow if needed
          ),
        ],
        border: Border.all(color: lightGrey, width: .5),
      ),
      padding: const EdgeInsets.all(16),
      child:    DataTable(
        columnSpacing: 12,
        horizontalMargin: 12,
        // minWidth: 600,
        headingRowColor: MaterialStateProperty.resolveWith((states) => Colors.grey.shade200),
        columns:[
          DataColumn( label: Text('Name'),),
          DataColumn(label: Text('Location'),),
          DataColumn(label: Text('Rating'),),
          DataColumn(label: Text('Action'),),
        ], rows: List<DataRow>.generate(
        7,
            (index) => DataRow(
          cells: [
            DataCell(
              CustomText(
                text: "Santos Enoque",
                size: 14, // Adjust the font size as needed
                color: Colors.cyan,
                weight: FontWeight.normal,
              ),
            ),
            DataCell(
              CustomText(
                text: "New York City",
                size: 14,
                color: Colors.cyan,
                weight: FontWeight.normal,
              ),
            ),
            DataCell(
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.deepOrange,
                    size: 14,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CustomText(
                    text: "4.$index",
                    size: 14,
                    color: Colors.cyan,
                    weight: FontWeight.normal,
                  ),
                ],
              ),
            ),
            DataCell(
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: active, width: .5),
                  color: light,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                child: CustomText(
                  text: "Block Client",
                  color: active.withOpacity(.7),
                  weight: FontWeight.bold,
                  size: 10,
                ),
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}