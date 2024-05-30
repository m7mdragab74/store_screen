// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ScreenApp extends StatefulWidget {
  const ScreenApp({super.key});

  @override
  State<ScreenApp> createState() => _ScreenState();
}

class _ScreenState extends State<ScreenApp> {
  final List<String> _imagePaths = [
    'assets/1.png',
    'assets/2.png',
    'assets/3.png',
    'assets/4.png',
  ];
  int _selectedImageIndex = 0;
  void _updateSelectedImage(int index) {
    setState(() {
      _selectedImageIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0XFFBA4A58),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: const EdgeInsets.only(left: 20),
            decoration: BoxDecoration(
            color: Colors.white,
              borderRadius:BorderRadius.circular(20),
              border: Border.all(
                color: Colors.white,
                width: 2
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(top: 40,bottom: 40),
                          child: ElevatedButton(onPressed: (){},
                           style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(1),
                            minimumSize: const Size(40, 40),
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                           ),
                           child: const Icon(Icons.arrow_back,
                           size: 30,
                           color: Colors.black,
                           ),
                           ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: _selectedImageIndex==0 ?Colors.red:Colors.grey.shade400,
                              width: 2
                            ),
                          ),
                          height: 45,
                          child: ElevatedButton(onPressed: (){
                            setState(() {
                              _updateSelectedImage(0);
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(3),
                            minimumSize: const Size(46, 46),
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                           ),
                          child: Image.asset('assets/1.png',
                          ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                         Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: _selectedImageIndex==1 ?Colors.red:Colors.grey.shade400,
                              width: 2
                            ),
                          ),
                          height: 45,
                          child: ElevatedButton(onPressed: (){
                            setState(() {
                              _updateSelectedImage(1);
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(3),
                            minimumSize: const Size(46, 46),
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                           ),
                          child: Image.asset('assets/2.png',
                          ),
                          ),
                        ),
                          const SizedBox(
                          height: 20,
                        ),
                         Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: _selectedImageIndex==2 ?Colors.red:Colors.grey.shade400,
                              width: 2
                            ),
                          ),
                          height: 45,
                          child: ElevatedButton(onPressed: (){
                            setState(() {
                            _updateSelectedImage(2);
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(3),
                            minimumSize: const Size(46, 46),
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                           ),
                          child: Image.asset('assets/3.png',
                          ),
                          ),
                        ),
                          const SizedBox(
                          height: 20,
                        ),
                         Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: _selectedImageIndex==3 ?Colors.red:Colors.grey.shade400,
                              width: 2
                            ),
                          ),
                          height: 45,
                          child: ElevatedButton(onPressed: (){
                            setState(() {
                              _updateSelectedImage(3);
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(3),
                            minimumSize: const Size(46, 46),
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                           ),
                          child: Image.asset('assets/4.png',
                          ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 20,),
                    Container(
                      height: 400,
                      width: 294,
                      decoration: const BoxDecoration(
                        color: Color(0XFFF4EAEC),
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16),
                        topRight: Radius.circular(15)
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                          padding: const EdgeInsets.only(top: 56,left: 210),
                          child: ElevatedButton(onPressed: (){
                          },
                           style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(1),
                            minimumSize: const Size(40, 40),
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                           ),
                           child: const Icon(Icons.favorite_border,
                           color: Colors.black,
                           size: 30,
                           ),
                           ),
                        ),
                        const SizedBox(height: 20,),
                        Container(
                          decoration: const BoxDecoration(color: Color(0XFFF4EAEC)),
                          child: Image.asset(
                        _imagePaths[_selectedImageIndex],
                        width: 260,
                        height: 266,),
                        ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 35,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Sony WH-1000XM4',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28
                    ),
                    ),

                    Container(
                      margin: const EdgeInsets.only(right: 17),
                      padding: const EdgeInsets.only(top: 2,bottom: 2,left: 6,right: 6),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey,
                        width: 0.5
                        ),
                        borderRadius: BorderRadius.circular(99),
                      ),
                      child:
                      const Row(children: [
                         Icon(Icons.star,
                      color: Colors.yellow,
                      ),
                      Text('4.9',
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                      )
                      ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 17,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(right: 15),
                      child: const Text('Wireless Over-ear Industry Leading Noise Canceling',
                      style: TextStyle(fontSize: 15),
                      )
                      ),
                      Container(
                      padding: const EdgeInsets.only(right: 162),
                      child: const Text('Headphones with Microphone',
                      style: TextStyle(fontSize: 15),
                      )
                      ),
                  ],
                ),
                const SizedBox(height: 20,),
                Column(
                  children: [
                    Row(
                      children: [
                        ElevatedButton(onPressed: (){},
                         style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0XFFF4EAEC),
                          padding: const EdgeInsets.all(1),
                          minimumSize: const Size(40, 40),
                          shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(9),
                         ),
                         ),
                         child: const Icon(Icons.article_outlined,
                         color: Color(0XFFBA4A58),
                         ),
                         ),
                         const SizedBox(width: 8,),
                         const Text('Product Specifications',
                         style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                         ),
                         ),
                         const SizedBox(width: 117,),
                         const Icon(Icons.arrow_forward_ios_outlined,size: 20,)
                      ],
                    ),
                    const Divider(height: 30,
                    endIndent: 18,
                    ),
                    Row(
                      children: [
                        ElevatedButton(onPressed: (){},
                         style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0XFFF4EAEC),
                          padding: const EdgeInsets.all(1),
                          minimumSize: const Size(40, 40),
                          shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(9),
                         ),
                         ),
                         child: const Icon(Icons.colorize_outlined,
                         color: Color(0XFFBA4A58),
                         ),
                         ),
                         const SizedBox(width: 8,),
                         const Text('Colors',
                         style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                         ),
                         ),
                         const SizedBox(width: 150,),
                         const Icon(Icons.circle,size: 29,
                         shadows: [Shadow(color: Colors.red,blurRadius: 10)],
                         ),
                         const SizedBox(width: 10,),
                         const Icon(Icons.circle,size: 29,color: Colors.grey,),
                         const SizedBox(width: 10,),
                         const Icon(Icons.circle,size: 29,color: Colors.white,
                         shadows: [Shadow(color: Colors.grey,blurRadius: 10)],
                         ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 90,),
                Row(
                  children: [
                    const Text('\$349.',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    const Text('99',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17
                    ),
                    ),
                    const SizedBox(width: 40,),
                    Container(
                      // margin: EdgeInsets.only(right: 17),
                       padding: const EdgeInsets.only(top: 10,bottom: 10,left: 34,right: 75),
                    decoration: BoxDecoration(      
                      color: const Color(0XFFBA4A58),
                      border: Border.all(color: const Color(0XFFBA4A58),
                      width: 1,
                      ),
                      borderRadius: BorderRadius.circular(9),
                    ),
                      child: const Row(
                        children: [
                          Text('Add To Card',
                            style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight:FontWeight.bold
                          ),
                          ),
                          SizedBox(width: 8,),
                          Icon(Icons.arrow_forward_ios_outlined,size: 20,color: Colors.white,)
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      );
  }
}