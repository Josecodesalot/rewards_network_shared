import 'package:flutter/foundation.dart';

@immutable
class HistoryTicket {
  final String placeId,
      key,
      type,
      guestId,
      guestName,
      startingPoints,
      awardingPoints,
      endingPoints,
      subTotal,
      clerkName,
      clerkId,
      comments,
      time;

  const HistoryTicket({
    this.placeId,
    this.key,
    this.type,
    this.guestId,
    this.guestName,
    this.startingPoints,
    this.awardingPoints,
    this.endingPoints,
    this.subTotal,
    this.clerkName,
    this.clerkId,
    this.comments,
    this.time,
  });

  factory HistoryTicket.fromMap(map) {
    return HistoryTicket(
      placeId: map['placeId'],
      key: map['key'],
      type: map['type'],
      guestId: map['guestId'],
      guestName: map['guestName'],
      startingPoints: map['startingPoints'],
      awardingPoints: map['awardingPoints'],
      endingPoints: map['endingPoints'],
      subTotal: map['subTotal'],
      clerkName: map['clerkName'],
      clerkId: map['clerkId'],
      comments: map['comments'],
      time: map['time'],
    );
  }

  Map<String, String> toMap() {
    return {
      'placeId': placeId,
      'key': key,
      'type': type,
      'guestId': guestId,
      'guestName': guestName,
      'startingPoints': startingPoints,
      'awardingPoints': awardingPoints,
      'endingPoints': endingPoints,
      'subTotal': subTotal,
      'clerkName': clerkName,
      'clerkId': clerkId,
      'comments': comments,
      'time': time,
    };
  }

  HistoryTicket copyWith({
    String placeId,
    String key,
    String type,
    String guestId,
    String guestName,
    String startingPoints,
    String awardingPoints,
    String endingPoints,
    String subTotal,
    String clerkName,
    String clerkId,
    String comments,
    String time,
  }) {
    if ((placeId == null || identical(placeId, this.placeId)) &&
        (key == null || identical(key, this.key)) &&
        (type == null || identical(type, this.type)) &&
        (guestId == null || identical(guestId, this.guestId)) &&
        (guestName == null || identical(guestName, this.guestName)) &&
        (startingPoints == null ||
            identical(startingPoints, this.startingPoints)) &&
        (awardingPoints == null ||
            identical(awardingPoints, this.awardingPoints)) &&
        (endingPoints == null || identical(endingPoints, this.endingPoints)) &&
        (subTotal == null || identical(subTotal, this.subTotal)) &&
        (clerkName == null || identical(clerkName, this.clerkName)) &&
        (clerkId == null || identical(clerkId, this.clerkId)) &&
        (comments == null || identical(comments, this.comments)) &&
        (time == null || identical(time, this.time))) {
      return this;
    }

    return HistoryTicket(
      placeId: placeId ?? this.placeId,
      key: key ?? this.key,
      type: type ?? this.type,
      guestId: guestId ?? this.guestId,
      guestName: guestName ?? this.guestName,
      startingPoints: startingPoints ?? this.startingPoints,
      awardingPoints: awardingPoints ?? this.awardingPoints,
      endingPoints: endingPoints ?? this.endingPoints,
      subTotal: subTotal ?? this.subTotal,
      clerkName: clerkName ?? this.clerkName,
      clerkId: clerkId ?? this.clerkId,
      comments: comments ?? this.comments,
      time: time ?? this.time,
    );
  }
}
