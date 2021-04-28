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

  factory HistoryTicket.fromMap(Map<String, dynamic> map) {
    return new HistoryTicket(
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

  Map<String, dynamic> toMap() {
    return {
      'placeId': this.placeId,
      'key': this.key,
      'type': this.type,
      'guestId': this.guestId,
      'guestName': this.guestName,
      'startingPoints': this.startingPoints,
      'awardingPoints': this.awardingPoints,
      'endingPoints': this.endingPoints,
      'subTotal': this.subTotal,
      'clerkName': this.clerkName,
      'clerkId': this.clerkId,
      'comments': this.comments,
      'time': this.time,
    };
  }
}
