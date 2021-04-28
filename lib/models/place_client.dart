abstract class _PlaceClient{
  const _PlaceClient({this.uid, this.points, this.name});
  final String uid, points, name;
}

class PlaceClient implements _PlaceClient{
  const PlaceClient({this.uid, this.points, this.name});
  final String uid, points, name;

  factory PlaceClient.fromMap(map) {
    return PlaceClient(
      uid: map['uid'],
      points: map['points'],
      name: map['name'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'points': points,
      'name': name,
    };
  }
}

//when the manager achieves level 2 access he will get this info
class PlaceClientLevelTwo implements _PlaceClient{
  const PlaceClientLevelTwo({this.name, this.points, this.uid});
  @override
  final String name;
  @override
  final String points;
  @override
  final String uid;
}