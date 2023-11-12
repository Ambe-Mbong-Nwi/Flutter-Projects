import 'package:flutter/material.dart';

import '../sellerclasses/detailed_inventory.dart';

class DetailedInventoryCard extends StatefulWidget {
 // const DetailedInventoryCard({super.key});

                                           // NB: u can use data in a stles widget but add FINAL keyword meaning the value will not change.
 final NewDetailedInventory newDetailedInventory;          // //newthing variable passed in as a named parameter above
 final void Function() addRow;
 final void Function() delete;
 const DetailedInventoryCard({super.key,  required this.newDetailedInventory, required this.addRow, required this.delete });   

  @override
  State<DetailedInventoryCard> createState() => _DetailedInventoryCardState();
}

class _DetailedInventoryCardState extends State<DetailedInventoryCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Column(
              children: [

                //this table contains the first row
                Table(
                  border: TableBorder.all(width: 1.0),
                  columnWidths: const {
                    0: FlexColumnWidth(1),
                    1: FlexColumnWidth(4),
                  },
                  
                  children: [
              
                    TableRow(                     //table row
                      children: [
              
                        SizedBox(                //first table cell on row. 
                          height: 40.0,            //Using container instead of tablecell so i can adjust the height of the cell.
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Text(
                                'SN:',
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(width: 5.0),
                              Text(
                                widget.newDetailedInventory.serialN.toString(),
                                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xffb80f0a),),
                              )
                            ],
                          )),
              
                        SizedBox(                //second table cell on row
                        height: 40.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Text(
                                'Desc:',
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(width: 5.0),
                              Text(
                                widget.newDetailedInventory.description,
                                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xffb80f0a),),
                              )
                            ],
                          ))
                      ]
                    )
                  ],
                ),


                //this table contains the different columns where the actual data is inputed.
                  Center(                  //centralise table on the page.
                      child: DataTable(                     //better than normal table in organising structured data because it provides functionalities like sorting, headers, row selections, etc
                          border: TableBorder.all(
                            width: 1.0,
                          ),
                          columnSpacing: 19.0,
                          
                          columns: const [
                            DataColumn(label: Text(
                              'Date',
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            )),
                            DataColumn(label: Text(
                              'Input',
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            )),
                            DataColumn(label: Text(
                              'Output',
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            )),
                            DataColumn(label: Text(
                              'Balance',
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            ))
                          ],
                          
                          rows: [
                            DataRow(
                              cells: [
                                DataCell(Text(widget.newDetailedInventory.date.toString())),
                                DataCell(Text(widget.newDetailedInventory.inputQuantity.toString())),
                                DataCell(Text(widget.newDetailedInventory.outputQuantity.toString())),
                                DataCell(Text(widget.newDetailedInventory.balance.toString())),  
                              ]
                            ),
                            const DataRow(
                              cells: [
                                DataCell(Text('12/3/2002')),
                                DataCell(Text('0')),
                                DataCell(Text('10')),
                                DataCell(Text('990')),  
                              ]
                            ),
                            const DataRow(
                              cells: [
                                DataCell(Text('12/3/2002')),
                                DataCell(Text('0')),
                                DataCell(Text('50')),
                                DataCell(Text('940')),  
                              ]
                            ),
                          ],
                      ),
                    ),

                    const SizedBox(height: 2.0),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        ///delete button
                        ElevatedButton(
                            onPressed: widget.addRow,
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xffb80f0a),        //background color of button
                                foregroundColor: Colors.white,     // text color
                                padding: const EdgeInsets.symmetric(horizontal: 1.0, vertical:1.0 ),
                              ),
                            child: const Text('Delete'),
                          ),
                        
                        //new entry button
                        ElevatedButton(
                            onPressed: widget.addRow,
                            style: ElevatedButton.styleFrom(
                                foregroundColor: const Color(0xffb80f0a),
                              ),
                            child: const Text('New Entry'),
                          ),
                      ],
                    ),
                      ],
                    ),
                  );
                  }
}
               
       
        
  



