import 'package:flutter_test/flutter_test.dart';
import 'package:rewards_network_shared/reward_network_shared.dart';

void main() {

  final admin = AdminAccount();
  final clerk = ClerkAccount();
  final client = ClientAccount();
  final master = MasterAccount();

  test('Objects Should be initialized with the right defaults', (){
    assert(admin.userType == UserType.admin,
    'Admin object should default to UserType.admin');
    assert(clerk.userType == UserType.clerk,
    'Clerk object should default to UserType.clerk');
    assert(client.userType == UserType.client,
    'Client object should default to UserType.client');
    assert(master.userType == UserType.master,
    'Master object should default to UserType.master');
  });

  test('Object should parse and un-parse correctly', (){
    final mapAdmin = admin.toMap();
    final mapClerk = clerk.toMap();
    final mapClient = client.toMap();
    final mapMaster = master.toMap();

    final objectAdmin = AdminAccount.fromMap(mapAdmin);
    final objectClerk = ClerkAccount.fromMap(mapClerk);
    final objectClient = ClientAccount.fromMap(mapClient);
    final objectMaster = MasterAccount.fromMap(mapMaster);

    assert(objectAdmin.userType == UserType.admin,
    'Admin object should default to UserType.admin');
    assert(objectClerk.userType == UserType.clerk,
    'Clerk object should default to UserType.clerk');
    assert(objectClient.userType == UserType.client,
    'Client object should default to UserType.client');
    assert(objectMaster.userType == UserType.master,
    'Master object should default to UserType.master');
  });
}
