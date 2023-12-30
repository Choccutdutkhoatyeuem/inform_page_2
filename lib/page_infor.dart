import 'package:flutter/material.dart';
import 'package:inform_page_2/components/ContactCard.dart';
import 'package:inform_page_2/components/icon_design.dart';

class MyInfor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 60),
                Container(
                  width: double.infinity,
                  color: Colors.white,
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 200,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Colors.black,
                          image: const DecorationImage(
                            image: AssetImage('lib/images/Screenshot-1445.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Dr.Stefeni Albert',
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'Heart Specialist',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 100),
                          Row(
                            children: [
                              ContactCard(imagePath: 'lib/images/call_2.svg', iconSize: 60),
                              SizedBox(width: 12),
                              ContactCard(imagePath: 'lib/images/mail_2.svg', iconSize: 40),
                              SizedBox(width: 12),
                              ContactCard(imagePath: 'lib/images/video-call_2.svg', iconSize: 40),
                              SizedBox(width: 12),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 160,
                  color: Colors.white,
                  padding: const EdgeInsets.all(12.0),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ABOUT',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 31, 30, 30),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Animal cells are eukaryotic cells that contain a membrane-bound nucleus. They are different from plant cells in that they do contain cell walls and chloroplast. The animal cell diagram is widely asked in Class 10 and 12 examinations and is beneficial to understand the structure and functions of an animal. A brief explanation of the different parts of an animal cell along with a well-labelled diagram is mentioned below for reference.',
                        style: TextStyle(
                          fontSize: 13,
                          color: Color.fromARGB(255, 62, 60, 60),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      width: 1,
                      child: const Row(
                        children: [
                           Column(
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: EdgeInsets.only(right: 350),
                                  child: Row(
                                    children: [
                                      IconDesign(icon: 'lib/images/address.svg'),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children:[
                                         SizedBox(width: 8),  
                                          Text(
                                            'Address',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Text(
                                            'House #2, Road #5, ',
                                            style: TextStyle(
                                              fontSize: 13,
                                              color: Color.fromARGB(255, 44, 44, 44),
                                            ),
                                          ),
                                           Text(
                                            'Green Road ',
                                            style: TextStyle(
                                              fontSize: 13,
                                              color: Color.fromARGB(255, 44, 44, 44),
                                            ),
                                          ),
                                           Text(
                                            'Onanmondi Dhaka',
                                            style: TextStyle(
                                              fontSize: 13,
                                              color: Color.fromARGB(255, 44, 44, 44),
                                            ),
                                          ),
                                           
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 30),
                              Align(
                                alignment: Alignment.centerLeft,
                                
                                  child: Row(
                                   mainAxisAlignment: MainAxisAlignment.end,
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   
                                    children: [
                                      Icon(Icons.access_time, color: Color.fromARGB(200, 90, 87, 87)),
                                     SizedBox(width: 28),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: EdgeInsets.only(right: 310),
                                          child: Column(
                                            children:[
                                              Text(
                                                'Daily Practict',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                'Monday-Friday',
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color: Color.fromARGB(255, 44, 44, 44),
                                                ),
                                              ),
                                              Text(
                                                'Open till 7Pm',
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color: Color.fromARGB(255, 44, 44, 44),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ], 
                                  ),
                                ),
                            ],
                          ),
                          
                        ], 
                      ),
                    ),
                    const SizedBox(width: 240),
                    Container(
                     width: 150,
                     height: 200,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.white,
                      image: const DecorationImage(
                         image: AssetImage('lib/images/8264.webp'),
                         fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ), 
              ],
            ),
            
          ),
          bottomNavigationBar: 
          Container(
            height: 150,
            child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left:24),
                      child: Text(
                        'Activity',
                        style: TextStyle(
                          fontSize: 23.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 170,
                            height: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.orange,
                            ),
                            
                            child: const Center(
                              
                              child: Row(
                                
                                children: [
                                   SizedBox(width: 8),
                                  Icon(Icons.description, color: Colors.white),
                                  Text(
                                    "List of Schedule",
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 35),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 170,
                            height: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: Colors.grey,
                            ),
                            child: const Center(
                              child: Row(
                                
                                children: [
                                   SizedBox(width: 8),
                                  Icon(Icons.description, color: Colors.white),
                                  Text(
                                    "Doctor's Daily Post",
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        ),
    );
  }
}
