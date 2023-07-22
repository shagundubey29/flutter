import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Breakfast',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.black45,
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(8),
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black12,
          ),
          child: GestureDetector(
            child: SvgPicture.asset('assets/icons/left.svg',
              height: 20,
              width: 20,
              color: Colors.black54,
            ),
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(6),
            alignment: Alignment.center,
            width: 35,
            height: 40,
            decoration: const BoxDecoration(
              color: Colors.black12,
              shape: BoxShape.circle,
            ),
            child: GestureDetector(
              child: SvgPicture.asset(
                'assets/icons/dots.svg',
                height: 20,
                width: 15,
                color: Colors.black54,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          _searchBar(),
        ],
      ),
    );
  }

  Container _searchBar() {
    return Container(
        margin: const EdgeInsets.only(top: 20,left: 20,right: 20),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: const Color(0xff1D1617).withOpacity(0.11),
              blurRadius: 40,
              spreadRadius: 0.0
            )
          ]
        ),
        child:TextField(
          autocorrect: true,
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            contentPadding: const EdgeInsets.all(16),
            hintText: 'Search pancake',
            hintStyle: const TextStyle(
              fontSize: 18,
              color: Colors.black54,
            ),
            prefixIcon: Padding(
              padding:const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                'assets/icons/search.svg',
                color: Colors.black54,
                ),
            ),
            suffixIcon: Container(
              width: 100,
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    VerticalDivider(
                      thickness:0.5,
                      color: Colors.black54,
                      indent: 8,
                      endIndent: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(4.0, 8.0, 10.0, 8.0),
                        child: SvgPicture.asset(
                          'assets/icons/filter.svg',
                          color: Colors.black54,
                        ),
                      ),
                  ],
                ),
              ),
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              )
          ),
        ),
        );
  }
}