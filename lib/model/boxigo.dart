import 'dart:convert';

Boxigo boxigoFromJson(String str) => Boxigo.fromJson(json.decode(str));

String boxigoToJson(Boxigo data) => json.encode(data.toJson());

class Boxigo {
  List<CustomerEstimateFlow>? customerEstimateFlow;

  Boxigo({
    this.customerEstimateFlow,
  });

  factory Boxigo.fromJson(Map<String, dynamic> json) => Boxigo(
    customerEstimateFlow: json["Customer_Estimate_Flow"] == null ? [] : List<CustomerEstimateFlow>.from(json["Customer_Estimate_Flow"]!.map((x) => CustomerEstimateFlow.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "Customer_Estimate_Flow": customerEstimateFlow == null ? [] : List<dynamic>.from(customerEstimateFlow!.map((x) => x.toJson())),
  };
}

class CustomerEstimateFlow {
  String? estimateId;
  String? userId;
  String? movingFrom;
  String? movingTo;
  DateTime? movingOn;
  String? distance;
  String? propertySize;
  String? oldFloorNo;
  String? newFloorNo;
  String? oldElevatorAvailability;
  String? newElevatorAvailability;
  String? oldParkingDistance;
  String? newParkingDistance;
  String? unpackingService;
  String? packingService;
  Items? items;
  String? oldHouseAdditionalInfo;
  String? newHouseAdditionalInfo;
  String? totalItems;
  String? status;
  DateTime? orderDate;
  DateTime? dateCreated;
  dynamic dateOfComplete;
  dynamic dateOfCancel;
  String? estimateStatus;
  String? customStatus;
  dynamic estimateComparison;
  dynamic estimateAmount;
  List<dynamic>? successfulPayments;
  String? orderReviewed;
  String? callBack;
  String? moveDateFlexible;
  FromAddress? fromAddress;
  ToAddress? toAddress;
  String? serviceType;
  dynamic storageItems;

  CustomerEstimateFlow({
    this.estimateId,
    this.userId,
    this.movingFrom,
    this.movingTo,
    this.movingOn,
    this.distance,
    this.propertySize,
    this.oldFloorNo,
    this.newFloorNo,
    this.oldElevatorAvailability,
    this.newElevatorAvailability,
    this.oldParkingDistance,
    this.newParkingDistance,
    this.unpackingService,
    this.packingService,
    this.items,
    this.oldHouseAdditionalInfo,
    this.newHouseAdditionalInfo,
    this.totalItems,
    this.status,
    this.orderDate,
    this.dateCreated,
    this.dateOfComplete,
    this.dateOfCancel,
    this.estimateStatus,
    this.customStatus,
    this.estimateComparison,
    this.estimateAmount,
    this.successfulPayments,
    this.orderReviewed,
    this.callBack,
    this.moveDateFlexible,
    this.fromAddress,
    this.toAddress,
    this.serviceType,
    this.storageItems,
  });

  factory CustomerEstimateFlow.fromJson(Map<String, dynamic> json) => CustomerEstimateFlow(
    estimateId: json["estimate_id"],
    userId: json["user_id"],
    movingFrom: json["moving_from"],
    movingTo: json["moving_to"],
    movingOn: json["moving_on"] == null ? null : DateTime.parse(json["moving_on"]),
    distance: json["distance"],
    propertySize: json["property_size"],
    oldFloorNo: json["old_floor_no"],
    newFloorNo: json["new_floor_no"],
    oldElevatorAvailability: json["old_elevator_availability"],
    newElevatorAvailability: json["new_elevator_availability"],
    oldParkingDistance: json["old_parking_distance"],
    newParkingDistance: json["new_parking_distance"],
    unpackingService: json["unpacking_service"],
    packingService: json["packing_service"],
    items: json["items"] == null ? null : Items.fromJson(json["items"]),
    oldHouseAdditionalInfo: json["old_house_additional_info"],
    newHouseAdditionalInfo: json["new_house_additional_info"],
    totalItems: json["total_items"],
    status: json["status"],
    orderDate: json["order_date"] == null ? null : DateTime.parse(json["order_date"]),
    dateCreated: json["date_created"] == null ? null : DateTime.parse(json["date_created"]),
    dateOfComplete: json["date_of_complete"],
    dateOfCancel: json["date_of_cancel"],
    estimateStatus: json["estimate_status"],
    customStatus: json["custom_status"],
    estimateComparison: json["estimate_comparison"],
    estimateAmount: json["estimateAmount"],
    successfulPayments: json["successfulPayments"] == null ? [] : List<dynamic>.from(json["successfulPayments"]!.map((x) => x)),
    orderReviewed: json["order_reviewed"],
    callBack: json["call_back"],
    moveDateFlexible: json["move_date_flexible"],
    fromAddress: json["from_address"] == null ? null : FromAddress.fromJson(json["from_address"]),
    toAddress: json["to_address"] == null ? null : ToAddress.fromJson(json["to_address"]),
    serviceType: json["service_type"],
    storageItems: json["storage_items"],
  );

  Map<String, dynamic> toJson() => {
    "estimate_id": estimateId,
    "user_id": userId,
    "moving_from": movingFrom,
    "moving_to": movingTo,
    "moving_on": movingOn?.toIso8601String(),
    "distance": distance,
    "property_size": propertySize,
    "old_floor_no": oldFloorNo,
    "new_floor_no": newFloorNo,
    "old_elevator_availability": oldElevatorAvailability,
    "new_elevator_availability": newElevatorAvailability,
    "old_parking_distance": oldParkingDistance,
    "new_parking_distance": newParkingDistance,
    "unpacking_service": unpackingService,
    "packing_service": packingService,
    "items": items?.toJson(),
    "old_house_additional_info": oldHouseAdditionalInfo,
    "new_house_additional_info": newHouseAdditionalInfo,
    "total_items": totalItems,
    "status": status,
    "order_date": orderDate?.toIso8601String(),
    "date_created": dateCreated?.toIso8601String(),
    "date_of_complete": dateOfComplete,
    "date_of_cancel": dateOfCancel,
    "estimate_status": estimateStatus,
    "custom_status": customStatus,
    "estimate_comparison": estimateComparison,
    "estimateAmount": estimateAmount,
    "successfulPayments": successfulPayments == null ? [] : List<dynamic>.from(successfulPayments!.map((x) => x)),
    "order_reviewed": orderReviewed,
    "call_back": callBack,
    "move_date_flexible": moveDateFlexible,
    "from_address": fromAddress?.toJson(),
    "to_address": toAddress?.toJson(),
    "service_type": serviceType,
    "storage_items": storageItems,
  };
}

class FromAddress {
  String? firstName;
  String? lastName;
  String? fromAddress;
  String? fromLocality;
  String? fromCity;
  String? fromState;
  String? pincode;

  FromAddress({
    this.firstName,
    this.lastName,
    this.fromAddress,
    this.fromLocality,
    this.fromCity,
    this.fromState,
    this.pincode,
  });

  factory FromAddress.fromJson(Map<String, dynamic> json) => FromAddress(
    firstName: json["firstName"],
    lastName: json["lastName"],
    fromAddress: json["fromAddress"],
    fromLocality: json["fromLocality"],
    fromCity: json["fromCity"],
    fromState: json["fromState"],
    pincode: json["pincode"],
  );

  Map<String, dynamic> toJson() => {
    "firstName": firstName,
    "lastName": lastName,
    "fromAddress": fromAddress,
    "fromLocality": fromLocality,
    "fromCity": fromCity,
    "fromState": fromState,
    "pincode": pincode,
  };
}

class Items {
  List<Inventory>? inventory;
  CustomItems? customItems;

  Items({
    this.inventory,
    this.customItems,
  });

  factory Items.fromJson(Map<String, dynamic> json) => Items(
    inventory: json["inventory"] == null ? [] : List<Inventory>.from(json["inventory"]!.map((x) => Inventory.fromJson(x))),
    customItems: json["customItems"] == null ? null : CustomItems.fromJson(json["customItems"]),
  );

  Map<String, dynamic> toJson() => {
    "inventory": inventory == null ? [] : List<dynamic>.from(inventory!.map((x) => x.toJson())),
    "customItems": customItems?.toJson(),
  };
}

class CustomItems {
  String? units;
  List<CustomItemsItem>? items;

  CustomItems({
    this.units,
    this.items,
  });

  factory CustomItems.fromJson(Map<String, dynamic> json) => CustomItems(
    units: json["units"],
    items: json["items"] == null ? [] : List<CustomItemsItem>.from(json["items"]!.map((x) => CustomItemsItem.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "units": units,
    "items": items == null ? [] : List<dynamic>.from(items!.map((x) => x.toJson())),
  };
}

class CustomItemsItem {
  String? id;
  String? itemHeight;
  String? itemLength;
  String? itemQty;
  String? itemWidth;
  String? itemDescription;
  String? itemName;

  CustomItemsItem({
    this.id,
    this.itemHeight,
    this.itemLength,
    this.itemQty,
    this.itemWidth,
    this.itemDescription,
    this.itemName,
  });

  factory CustomItemsItem.fromJson(Map<String, dynamic> json) => CustomItemsItem(
    id: json["id"],
    itemHeight: json["item_height"],
    itemLength: json["item_length"],
    itemQty: json["item_qty"],
    itemWidth: json["item_width"],
    itemDescription: json["item_description"],
    itemName: json["item_name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "item_height": itemHeight,
    "item_length": itemLength,
    "item_qty": itemQty,
    "item_width": itemWidth,
    "item_description": itemDescription,
    "item_name": itemName,
  };
}

class Inventory {
  String? id;
  int? order;
  String? name;
  String? displayName;
  List<Category>? category;

  Inventory({
    this.id,
    this.order,
    this.name,
    this.displayName,
    this.category,
  });

  factory Inventory.fromJson(Map<String, dynamic> json) => Inventory(
    id: json["id"],
    order: json["order"],
    name: json["name"],
    displayName: json["displayName"],
    category: json["category"] == null ? [] : List<Category>.from(json["category"]!.map((x) => Category.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "order": order,
    "name": name,
    "displayName": displayName,
    "category": category == null ? [] : List<dynamic>.from(category!.map((x) => x.toJson())),
  };
}

class Category {
  String? id;
  int? order;
  String? name;
  String? displayName;
  List<ChildItemElement>? items;

  Category({
    this.id,
    this.order,
    this.name,
    this.displayName,
    this.items,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
    id: json["id"],
    order: json["order "],
    name: json["name"],
    displayName: json["displayName"],
    items: json["items"] == null ? [] : List<ChildItemElement>.from(json["items"]!.map((x) => ChildItemElement.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "order ": order,
    "name": name,
    "displayName": displayName,
    "items": items == null ? [] : List<dynamic>.from(items!.map((x) => x.toJson())),
  };
}

class ChildItemElement {
  List<Size>? size;
  List<ChildItemElement>? childItems;
  String? typeOptions;
  Meta? meta;
  int? uniquieId;
  String? name;
  String? displayName;
  int? order;
  String? nameOld;
  int? qty;
  List<Type>? type;
  String? id;

  ChildItemElement({
    this.size,
    this.childItems,
    this.typeOptions,
    this.meta,
    this.uniquieId,
    this.name,
    this.displayName,
    this.order,
    this.nameOld,
    this.qty,
    this.type,
    this.id,
  });

  factory ChildItemElement.fromJson(Map<String, dynamic> json) => ChildItemElement(
    size: json["size"] == null ? [] : List<Size>.from(json["size"]!.map((x) => Size.fromJson(x))),
    childItems: json["childItems"] == null ? [] : List<ChildItemElement>.from(json["childItems"]!.map((x) => ChildItemElement.fromJson(x))),
    typeOptions: json["typeOptions"],
    meta: json["meta"] == null ? null : Meta.fromJson(json["meta"]),
    uniquieId: json["uniquieId"],
    name: json["name"],
    displayName: json["displayName"],
    order: json["order"],
    nameOld: json["name_old"],
    qty: json["qty"],
    type: json["type"] == null ? [] : List<Type>.from(json["type"]!.map((x) => Type.fromJson(x))),
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "size": size == null ? [] : List<dynamic>.from(size!.map((x) => x.toJson())),
    "childItems": childItems == null ? [] : List<dynamic>.from(childItems!.map((x) => x.toJson())),
    "typeOptions": typeOptions,
    "meta": meta?.toJson(),
    "uniquieId": uniquieId,
    "name": name,
    "displayName": displayName,
    "order": order,
    "name_old": nameOld,
    "qty": qty,
    "type": type == null ? [] : List<dynamic>.from(type!.map((x) => x.toJson())),
    "id": id,
  };
}

class Meta {
  bool? hasType;
  SelectType? selectType;
  bool? hasVariation;
  bool? hasSize;

  Meta({
    this.hasType,
    this.selectType,
    this.hasVariation,
    this.hasSize,
  });

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
    hasType: json["hasType"],
    selectType: selectTypeValues.map[json["selectType"]]!,
    hasVariation: json["hasVariation"],
    hasSize: json["hasSize"],
  );

  Map<String, dynamic> toJson() => {
    "hasType": hasType,
    "selectType": selectTypeValues.reverse[selectType],
    "hasVariation": hasVariation,
    "hasSize": hasSize,
  };
}

enum SelectType {
  MULTIPLE,
  NONE,
  SINGLE
}

final selectTypeValues = EnumValues({
  "multiple": SelectType.MULTIPLE,
  "none": SelectType.NONE,
  "single": SelectType.SINGLE
});

class Size {
  Option? option;
  Tooltip? tooltip;
  bool? selected;

  Size({
    this.option,
    this.tooltip,
    this.selected,
  });

  factory Size.fromJson(Map<String, dynamic> json) => Size(
    option: optionValues.map[json["option"]]!,
    tooltip: tooltipValues.map[json["tooltip"]]!,
    selected: json["selected"],
  );

  Map<String, dynamic> toJson() => {
    "option": optionValues.reverse[option],
    "tooltip": tooltipValues.reverse[tooltip],
    "selected": selected,
  };
}

enum Option {
  LARGE,
  MEDIUM,
  SMALL
}

final optionValues = EnumValues({
  "large": Option.LARGE,
  "medium": Option.MEDIUM,
  "small": Option.SMALL
});

enum Tooltip {
  THE_2_FT_2_FT,
  THE_3_FT_3_FT,
  THE_46_FT,
  THE_4_FT,
  THE_4_FT_4_FT,
  THE_6_FT,
  XL,
  XXL,
  XXXL
}

final tooltipValues = EnumValues({
  "2ft * 2ft": Tooltip.THE_2_FT_2_FT,
  "3ft * 3ft": Tooltip.THE_3_FT_3_FT,
  "4-6 ft": Tooltip.THE_46_FT,
  "<4 ft": Tooltip.THE_4_FT,
  "4ft * 4ft": Tooltip.THE_4_FT_4_FT,
  ">6 ft": Tooltip.THE_6_FT,
  "XL": Tooltip.XL,
  "XXL": Tooltip.XXL,
  "XXXL": Tooltip.XXXL
});

class Type {
  String? id;
  String? option;
  bool? selected;

  Type({
    this.id,
    this.option,
    this.selected,
  });

  factory Type.fromJson(Map<String, dynamic> json) => Type(
    id: json["id"],
    option: json["option"],
    selected: json["selected"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "option": option,
    "selected": selected,
  };
}

class ToAddress {
  String? firstName;
  String? lastName;
  String? toAddress;
  String? toLocality;
  String? toCity;
  String? toState;
  String? pincode;

  ToAddress({
    this.firstName,
    this.lastName,
    this.toAddress,
    this.toLocality,
    this.toCity,
    this.toState,
    this.pincode,
  });

  factory ToAddress.fromJson(Map<String, dynamic> json) => ToAddress(
    firstName: json["firstName"],
    lastName: json["lastName"],
    toAddress: json["toAddress"],
    toLocality: json["toLocality"],
    toCity: json["toCity"],
    toState: json["toState"],
    pincode: json["pincode"],
  );

  Map<String, dynamic> toJson() => {
    "firstName": firstName,
    "lastName": lastName,
    "toAddress": toAddress,
    "toLocality": toLocality,
    "toCity": toCity,
    "toState": toState,
    "pincode": pincode,
  };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
