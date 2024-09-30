import 'package:boxigo_assignment/view/widget/stape_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../controller/api.dart';
import '../../../model/boxigo.dart';
import '../util/app_colors.dart';
import 'new_leads.dart';

class LeadsScreen extends StatefulWidget {
  const LeadsScreen({Key? key}) : super(key: key);

  @override
  State<LeadsScreen> createState() => _LeadsScreenState();
}

class _LeadsScreenState extends State<LeadsScreen> {
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Leads"),
          leading: Card(
            child: Image.asset('assets/logo.png'),
            margin: const EdgeInsets.all(10),
          ),
          actions: [
            Badge(
              child: Badge.count(
                count: 99,
                child: const Icon(Icons.notifications_none),
              ),
            ),
            const SizedBox(width: 10),
            const Icon(Icons.search),
            const SizedBox(width: 10),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(child: Text("All")),
              Tab(child: Text("New")),
              Tab(child: Text("Follow Up")),
              Tab(child: Text("Booked")),
            ],
            indicatorWeight: 1,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: AppColors.primaryColor,
            isScrollable: true,
            labelColor: AppColors.primaryColor,
          ),
        ),
        body: const TabBarView(
          children: [
            AllLeadsScreen(),
            NewLeadsScreen(),
            FollowUpLeadsScreen(),
            BookedLeadsScreen(),
          ],
        ),
      ),
    );
  }
}

class NewLeadsScreen extends StatelessWidget {
  const NewLeadsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Boxigo?>(
      future: fetchBoxigoData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data?.customerEstimateFlow == null) {
          return const Center(child: Text('No data available'));
        } else {
          var data = snapshot.data!.customerEstimateFlow!;
          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              var estimate = data[index];
              String formattedDate = DateFormat('MMM').format(estimate.orderDate!);

              return Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10),
                        width: MediaQuery.of(context).size.width / 5 - 10,
                        child: Column(
                          children: [
                            Text(
                              formattedDate,
                              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              estimate.orderDate!.day.toString(),
                              style: const TextStyle(
                                  fontSize: 35, fontWeight: FontWeight.bold, color: AppColors.primaryColor),
                            ),
                            Text(
                              "${estimate.orderDate!.hour}:${estimate.orderDate!.minute.toString().padLeft(2, '0')}",
                              style: const TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(5),
                        width: MediaQuery.of(context).size.width - MediaQuery.of(context).size.width / 5 - 20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  estimate.toAddress!.toCity.toString(),
                                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  estimate.estimateId.toString(),
                                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Text(
                              "${estimate.fromAddress!.firstName} ${estimate.fromAddress!.lastName}, ${estimate.fromAddress!.fromAddress}, ${estimate.fromAddress!.fromLocality}, ${estimate.fromAddress!.fromCity} ${estimate.fromAddress!.fromState}",
                              style: const TextStyle(fontSize: 15, color: Colors.grey),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset('assets/arrow.png', height: 40),
                                StapeWidget(
                                  title: estimate.propertySize.toString(),
                                  icon: "assets/home.png",
                                ),
                                StapeWidget(
                                  title: "${estimate.totalItems} items",
                                  icon: "assets/items.png",
                                ),
                                StapeWidget(
                                  title: "${estimate.items!.inventory!.length} boxes",
                                  icon: "assets/boxs.png",
                                ),
                                StapeWidget(
                                  title: estimate.distance.toString(),
                                  icon: "assets/distance.png",
                                ),
                              ],
                            ),
                            Text(
                              estimate.fromAddress!.fromCity.toString(),
                              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "${estimate.toAddress!.firstName} ${estimate.toAddress!.lastName}, ${estimate.toAddress!.toAddress}, ${estimate.toAddress!.toLocality}, ${estimate.toAddress!.toCity} ${estimate.toAddress!.toState}",
                              style: const TextStyle(fontSize: 15, color: Colors.grey),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                OutlinedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return NewLeads(data: estimate);
                                        },
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    "View Details",
                                    style: TextStyle(color: AppColors.primaryColor),
                                  ),
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.zero,
                                      ),
                                    ),
                                    side: MaterialStateProperty.all(
                                      const BorderSide(color: AppColors.primaryColor),
                                    ),
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                  },
                                  child: const Text("Submit Quote"),
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.zero,
                                      ),
                                    ),
                                    backgroundColor: MaterialStateProperty.all(AppColors.primaryColor),
                                    foregroundColor: MaterialStateProperty.all(Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    color: Colors.grey,
                    thickness: 1,
                    indent: 16,
                    endIndent: 16,
                  ),
                ],
              );
            },
          );
        }
      },
    );
  }
}

class AllLeadsScreen extends StatelessWidget {
  const AllLeadsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('New Leads Screen'));
  }
}

class FollowUpLeadsScreen extends StatelessWidget {
  const FollowUpLeadsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Follow Up Leads Screen'));
  }
}

class BookedLeadsScreen extends StatelessWidget {
  const BookedLeadsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Booked Leads Screen'));
  }
}
