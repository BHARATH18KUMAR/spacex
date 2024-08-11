import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space_app/constants/theme.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({
    super.key,
    required this.Controller,
  });

  final TextEditingController Controller;

  @override
  Widget build(BuildContext context) {
    final ScreenSize = MediaQuery.of(context).size;
    return Container(
      height: ScreenSize.height * 0.055,
      width: ScreenSize.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        controller: Controller,
        cursorColor: Sorange,
        cursorHeight: 15,
        cursorWidth: 2,
        style: GoogleFonts.poppins(
          fontSize: 12.5,
          fontWeight: FontWeight.w500,
          color: Swhite,
        ),
        decoration: InputDecoration(
          labelText: 'Type The Planets Name To Search',
          border: InputBorder.none,
          labelStyle: GoogleFonts.poppins(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Swhite,
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.vertical(),
            borderSide:   BorderSide(
              color: Swhite,
              width: 1,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.vertical(),
            borderSide:  BorderSide(
              color: Sorange,
              width: 1,
            ),
          ),
        ),
      ),
    );
  }
}
