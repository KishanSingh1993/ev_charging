import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {

    final querySize = MediaQuery.of(context).size;

    return AppBar(
      // backgroundColor: Colors.blue.shade50,
      title: Row(
        children: [
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.location_on_outlined),
          ),
          Text("Casablanca, Morocco",
              style: GoogleFonts.exo2(
                  textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: querySize.width * 0.05,
                      color: Colors.black))),
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.keyboard_arrow_down_outlined),
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: (){},
          icon: const Icon(Icons.search_outlined),
        ),
      ],
    );
  }
}
