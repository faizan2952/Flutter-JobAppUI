import 'package:flutter/material.dart';
import './utilities/jobcard.dart';
import './utilities/recent_job_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List jobsForYou = [
// [companyName, jobTitle, logoImagePath, hourlyRate]
    ['Uber', 'UI Designer', 'assets/icons/uber-icon.png', "45"],
    ['Google', 'Product Dev', 'assets/icons/google-icon.png', "60"],
    ['Apple', 'Software Designer', 'assets/icons/apple-icon.png', "85"],
  ];

  final List recentJobs = [
// [companyName, jobTitle, logoImagePath, hourlyRate]
    ['Nike', 'Web Designer', 'assets/icons/uber-icon.png', "55"],
    ['Google', 'Product Dev', 'assets/icons/google-icon.png', "80"],
    ['Apple', 'Software Designer', 'assets/icons/apple-icon.png', "65"],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 75),
          // appbar
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Container(
              height: 50,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.white),
                color: Colors.grey[200],
              ),
              child: Image.asset(
                'assets/icons/menu-icon.png',
                color: Colors.grey[800],
              ),
            ),
          ),

          SizedBox(
            height: 20,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Text(
              "Discover a New Path",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),

          SizedBox(
            height: 20,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          // ignore: sized_box_for_whitespace
                          child: Container(
                            height: 30,
                            child: Image.asset(
                              './assets/icons/search-icon.png',
                              color: Colors.grey[600],
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search for a job ...',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 50,
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(12)),
                  child: Image.asset(
                    'assets/icons/filter-icon.png',
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(
            height: 40,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Text(
              "For You",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),

          SizedBox(
            height: 20,
          ),

          // ignore: sized_box_for_whitespace
          Container(
            height: 160,
            // color: Colors.blue,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: jobsForYou.length,
              itemBuilder: (context, index) {
                return JobCard(
                  companyName: jobsForYou[index][0],
                  jobTitle: jobsForYou[index][1],
                  logoImagePath: jobsForYou[index][2],
                  hourlyRate: jobsForYou[index][3],
                );
              },
            ),
          ),

          SizedBox(
            height: 40,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Text(
              "Recently Added",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: ListView.builder(
                itemCount: recentJobs.length,
                itemBuilder: (context, index) {
                  return RecentJobCard(
                    companyName: recentJobs[index][0],
                    jobTitle: recentJobs[index][1],
                    logoImagePath: recentJobs[index][2],
                    hourlyRate: recentJobs[index][3],
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
