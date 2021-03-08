import 'package:flutter/material.dart';

class LocationInput extends StatefulWidget {
  @override
  _LocationInputState createState() => _LocationInputState();
}

class _LocationInputState extends State<LocationInput> {
  String _previewImageUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 170,
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.grey),
          ),
          child: _previewImageUrl == null
              ? Text(
                  'No Location Chosen',
                  textAlign: TextAlign.center,
                )
              : Image.network(
                  _previewImageUrl,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton.icon(
              icon: Icon(
                Icons.location_on,
              ),
              label: Text('Current Location'),
              style: ButtonStyle(
                textStyle: MaterialStateProperty.resolveWith<TextStyle>(
                  (Set<MaterialState> states) {
                    return TextStyle(
                        color: Theme.of(context)
                            .primaryColor); // Use the component's default.
                  },
                ),
              ),
            ),
            TextButton.icon(
              icon: Icon(
                Icons.map,
              ),
              label: Text('Select on Map'),
              style: ButtonStyle(
                textStyle: MaterialStateProperty.resolveWith<TextStyle>(
                  (Set<MaterialState> states) {
                    return TextStyle(
                        color: Theme.of(context)
                            .primaryColor); // Use the component's default.
                  },
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
