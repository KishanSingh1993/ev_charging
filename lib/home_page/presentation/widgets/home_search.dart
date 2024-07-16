import 'package:flutter/material.dart';

class HomeSearchWidget extends StatelessWidget {
  const HomeSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {

    final querySize = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 40,
            width: querySize.width * 0.8,
            child: TextFormField(
              readOnly: true,
              decoration: InputDecoration(
                label: const Text('Search'),
                prefixIcon: const Icon(Icons.search),
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(30),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.black,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.red,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Icon(
              Icons.filter_list,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
