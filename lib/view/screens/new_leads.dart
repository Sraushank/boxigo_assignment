import 'package:flutter/material.dart';
import 'package:flutter_expanded_tile/flutter_expanded_tile.dart';
import '../../../model/boxigo.dart';
import '../util/app_colors.dart';

class NewLeads extends StatefulWidget {
  final CustomerEstimateFlow data;

  NewLeads({super.key, required this.data});

  @override
  State<NewLeads> createState() => _NewLeadsState();
}

class _NewLeadsState extends State<NewLeads> {
  final ExpandedTileController _tileController1 = ExpandedTileController();
  final ExpandedTileController _tileController2 = ExpandedTileController();
  final ExpandedTileController _tileController3 = ExpandedTileController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("New Leads"),
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
              Tab(child: Text("Items")),
              Tab(child: Text("Floor Info")),
              Tab(child: Text("Send Quote")),
            ],
            indicatorWeight: 2,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: AppColors.primaryColor,
            isScrollable: true,
            labelColor: AppColors.primaryColor,
          ),
        ),
        body: TabBarView(
          children: [
            _buildTabContent(widget.data),
            Container(
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  Column(
                    children: [
                      Container(
                        color: Colors.grey[400],
                        height: 50,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            "Existing  house details",
                            style: TextStyle(
                                color: AppColors.primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Elevevator Available",
                              style: TextStyle(
                                fontWeight: FontWeight.w200,
                                fontSize: 17,
                              ),
                            ),
                            Text(
                              widget.data.oldElevatorAvailability.toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Packing Required",
                              style: TextStyle(
                                  fontWeight: FontWeight.w200, fontSize: 17),
                            ),
                            Text(
                              widget.data.packingService.toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Distance from door to truck",
                              style: TextStyle(
                                  fontWeight: FontWeight.w200, fontSize: 17),
                            ),
                            Text(
                              widget.data.oldParkingDistance.toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Additional Information",
                              style: TextStyle(
                                  fontWeight: FontWeight.w200, fontSize: 17),
                            ),
                            Text(
                              "Dog is avilable so please call once you reach",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ],
                        ),
                        alignment: Alignment.topLeft,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Container(
                        color: Colors.grey[400],
                        height: 50,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            "New house details",
                            style: TextStyle(
                                color: AppColors.primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Elevevator Available",
                              style: TextStyle(
                                  fontWeight: FontWeight.w200, fontSize: 17),
                            ),
                            Text(
                              widget.data.newElevatorAvailability.toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Unpacking Required",
                              style: TextStyle(
                                  fontWeight: FontWeight.w200, fontSize: 17),
                            ),
                            Text(
                              widget.data.unpackingService.toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Distance from door to truck",
                              style: TextStyle(
                                  fontWeight: FontWeight.w200, fontSize: 17),
                            ),
                            Text(
                              widget.data.newParkingDistance.toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Additional Information",
                              style: TextStyle(
                                  fontWeight: FontWeight.w200, fontSize: 17),
                            ),
                            Text(
                              "Dog is avilable so please call once you reach",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ],
                        ),
                        alignment: Alignment.topLeft,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(),
          ],
        ),
      ),
    );
  }

  Widget _buildTabContent(CustomerEstimateFlow data) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ExpandedTile(
              controller: _tileController1,
              title: const Text(
                "Living Room",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryColor,
                ),
              ),
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount:
                        data.items?.inventory?.first.category?.length ?? 0,
                    itemBuilder: (context, index) {
                      var category =
                          data.items?.inventory?.first.category?[index];
                      var item = category?.items?.firstOrNull;
                      return ListTile(
                        leading: const Icon(Icons.table_restaurant),
                        title: Text(
                          item?.displayName?.toString() ?? '',
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                        subtitle: Text(
                            "${item?.size?.firstOrNull?.toString() ?? ''} "
                            "${(item?.size?.isNotEmpty == true && item?.type?.isNotEmpty == true) ? '|' : ''} "
                            "${item?.type?.firstOrNull?.option ?? ''}",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        trailing: Text(
                          item?.qty?.toString() ?? '0',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
              onTap: () {
                print("Tile 1 tapped");
              },
            ),
            ExpandedTile(
              controller: _tileController2,
              title: const Text(
                "Bed Room",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryColor,
                ),
              ),
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: data.items!.inventory![1].category?.length,
                    itemBuilder: (context, index) {
                      var category = data.items!.inventory![1].category?[index];
                      return ListTile(
                        leading: Icon(Icons.tv),
                        title: Text(
                          category?.items!.firstOrNull?.displayName
                                  .toString() ??
                              '',
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                        subtitle: Text(
                            "${category?.items?.firstOrNull?.size?.firstOrNull?.toString() ?? ''} "
                            "${(category?.items?.firstOrNull?.size?.isNotEmpty == true && category?.items?.firstOrNull?.type?.isNotEmpty == true) ? '|' : ''} "
                            "${category?.items?.firstOrNull?.type?.firstOrNull?.option ?? ''}",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        trailing: Text(
                            data.items!.inventory![0].category![index].items!
                                .first.qty
                                .toString(),
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                      );
                    },
                  ),
                ],
              ),
              onTap: () {
                print("Tile 1 tapped");
              },
            ),
            ExpandedTile(
              controller: _tileController3,
              title: const Text(
                "Custom Items",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryColor,
                ),
              ),
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: data.items!.customItems!.items?.length,
                    itemBuilder: (context, index) {
                      var category = data.items!.customItems!.items?[index];
                      return Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(category?.itemName!.toString() ?? '',
                                style: TextStyle(fontSize: 25)),
                            Text(
                              category?.itemDescription!.toString() ?? '',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.grey),
                            ),
                            Row(
                              children: [
                                Text("L:${category?.itemLength!.toString()} ft",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18)),
                                SizedBox(
                                  width: 15,
                                ),
                                Text("W:${category?.itemWidth!.toString()} ft",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18)),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "H:${category?.itemHeight!.toString()} ft",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ],
                            ),
                            Divider()
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
              onTap: () {
                print("Tile 1 tapped");
              },
            ),
          ],
        ),
      ),
    );
  }
}
