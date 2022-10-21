import 'package:flutter/material.dart';

class TutorFilterWidget extends StatefulWidget {
  @override
  _TutorFilterWidgetState createState() => _TutorFilterWidgetState();
}

class _TutorFilterWidgetState extends State<TutorFilterWidget> {
  final textStyle = TextStyle(color: Colors.black, fontSize: 12);
  final specialities = [
    'All',
    'English for kids',
    'English for business ',
    'Conversational',
    'STATERS',
    'MOVERS',
    'FLYERS',
    'KET',
    'PET',
    'TOEFT',
    'TOEIC'
  ];

  final countries = ['All', 'Viet nam', 'Singapore'];

  String specialValue = 'All';
  String countryValue = 'All';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextFormField(
          decoration: InputDecoration(
              contentPadding: EdgeInsets.all(0),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(5)),
              prefixIcon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              hintText: 'Search by name...',
              hintStyle: TextStyle(fontSize: 14)),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 70,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Specialities', style: textStyle),
                      SizedBox(
                        height: 3,
                      ),
                      Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                              border: Border.all(width: 1)),
                          child: DropdownButton<String>(
                            isExpanded: true,
                            value: specialValue,
                            icon: const Icon(Icons.arrow_drop_down),
                            iconSize: 24,
                            style: const TextStyle(color: Colors.black),
                            underline: SizedBox(),
                            onChanged: (String? newValue) {
                              setState(() {
                                specialValue = newValue!;
                              });
                            },
                            items: specialities
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ))
                    ]),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                flex: 1,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text('Countries', style: textStyle),
                      SizedBox(
                        height: 3,
                      ),
                      Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                              border: Border.all(width: 1)),
                          child: DropdownButton<String>(
                            value: countryValue,
                            // icon: SizedBox(),
                            isExpanded: true,
                            iconSize: 24,
                            style: const TextStyle(color: Colors.black),
                            underline: SizedBox(),
                            onChanged: (String? newValue) {
                              setState(() {
                                countryValue = newValue!;
                              });
                            },
                            items: countries
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ))
                    ]),
              ),
            ],
          ),
        )
      ],
    );
  }
}
