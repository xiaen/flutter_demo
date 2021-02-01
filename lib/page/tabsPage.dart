import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterDemo/page/tabs/addPage.dart';
import 'package:flutterDemo/page/tabs/categoryPage.dart';
import 'package:flutterDemo/page/tabs/homePage.dart';
import 'package:flutterDemo/page/tabs/settingsPage.dart';
import 'package:flutterDemo/page/tabs/userPage.dart';
import 'package:device_info/device_info.dart';
import 'dart:io';

class TabsPage extends StatefulWidget {
  final index;
  TabsPage({Key key, this.index = 0}) : super(key: key);

  @override
  _TabsPageState createState() => _TabsPageState(index);
}

class _TabsPageState extends State<TabsPage> {
  int _currentIndex;
  List _pagesList = [
    HomePage(),
    CategoryPage(),
    AddPage(),
    SettingsPage(),
    UserPage()
  ];
  _TabsPageState(index) {
    this._currentIndex = index;
  }

  static final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
  Map<String, dynamic> _deviceData = <String, dynamic>{};

  @override
  void initState() {
    super.initState();
    getDeviceInfo();
  }

  getDeviceInfo() async {
    Map<String, dynamic> deviceData;
    if (Platform.isIOS) {
      print('IOS设备');
    } else {
      print('Android设备');
    }

    try {
      if (Platform.isAndroid) {
        deviceData = _readAndroidBuildData(await deviceInfoPlugin.androidInfo);
        print(deviceData);
      } else if (Platform.isIOS) {
        deviceData = _readIosDeviceInfo(await deviceInfoPlugin.iosInfo);
        print(deviceData);
      }
    } on PlatformException {
      deviceData = <String, dynamic>{
        'Error:': 'Failed to get platform version.'
      };
      print(deviceData);
    }

    if (!mounted) return;

    setState(() {
      _deviceData = deviceData;
    });
  }

  Map<String, dynamic> _readAndroidBuildData(AndroidDeviceInfo build) {
    return <String, dynamic>{
      'version.securityPatch': build.version.securityPatch,
      'version.sdkInt': build.version.sdkInt,
      'version.release': build.version.release,
      'version.previewSdkInt': build.version.previewSdkInt,
      'version.incremental': build.version.incremental,
      'version.codename': build.version.codename,
      'version.baseOS': build.version.baseOS,
      'board': build.board,
      'bootloader': build.bootloader,
      'brand': build.brand,
      'device': build.device,
      'display': build.display,
      'fingerprint': build.fingerprint,
      'hardware': build.hardware,
      'host': build.host,
      'id': build.id,
      'manufacturer': build.manufacturer,
      'model': build.model,
      'product': build.product,
      'supported32BitAbis': build.supported32BitAbis,
      'supported64BitAbis': build.supported64BitAbis,
      'supportedAbis': build.supportedAbis,
      'tags': build.tags,
      'type': build.type,
      'isPhysicalDevice': build.isPhysicalDevice,
      'androidId': build.androidId,
      'systemFeatures': build.systemFeatures,
    };
  }

  Map<String, dynamic> _readIosDeviceInfo(IosDeviceInfo data) {
    return <String, dynamic>{
      'name': data.name,
      'systemName': data.systemName,
      'systemVersion': data.systemVersion,
      'model': data.model,
      'localizedModel': data.localizedModel,
      'identifierForVendor': data.identifierForVendor,
      'isPhysicalDevice': data.isPhysicalDevice,
      'utsname.sysname:': data.utsname.sysname,
      'utsname.nodename:': data.utsname.nodename,
      'utsname.release:': data.utsname.release,
      'utsname.version:': data.utsname.version,
      'utsname.machine:': data.utsname.machine,
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            '你好，flutter',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        floatingActionButton: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.white),
          width: 60,
          height: 60,
          padding: EdgeInsets.all(5),
          margin: EdgeInsets.only(top: 10),
          child: FloatingActionButton(
            child: Icon(Icons.add, size: 30),
            backgroundColor:
                this._currentIndex == 2 ? Colors.red : Colors.blueGrey,
            onPressed: () {
              setState(() {
                this._currentIndex = 2;
              });
            },
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: this._pagesList[this._currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: this._currentIndex,
          iconSize: 30,
          fixedColor: Colors.red,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                backgroundColor: Colors.blueGrey,
                // ignore: deprecated_member_use
                title: Text('首页')),
            BottomNavigationBarItem(
                icon: Icon(Icons.category),
                backgroundColor: Colors.blueGrey,
                // ignore: deprecated_member_use
                title: Text('分类')),
            BottomNavigationBarItem(
                icon: Icon(Icons.add),
                backgroundColor: Colors.blueGrey,
                // ignore: deprecated_member_use
                title: Text('添加')),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                backgroundColor: Colors.blueGrey,
                // ignore: deprecated_member_use
                title: Text('设置')),
            BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle),
                backgroundColor: Colors.blueGrey,
                // ignore: deprecated_member_use
                title: Text('我的'))
          ],
          onTap: (int index) {
            setState(() {
              this._currentIndex = index;
            });
          },
        ),
        drawer: Drawer(
            child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  //     child: DrawerHeader(
                  //   child: Text('你好，抽屉头'),
                  //   decoration: BoxDecoration(
                  //     image: DecorationImage(
                  //         image: NetworkImage(
                  //             'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1963661110,1685480926&fm=26&gp=0.jpg'),
                  //         fit: BoxFit.cover),
                  //   ),
                  // )
                  child: UserAccountsDrawerHeader(
                    accountName: Text('瞬疯订二琪'),
                    accountEmail: Text('youxiang@qq.com'),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2799097555,477535385&fm=26&gp=0.jpg'),
                    ),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=274318705,838677184&fm=26&gp=0.jpg'),
                            fit: BoxFit.cover)),
                  ),
                )
              ],
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.home),
              ),
              title: Text('首页'),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.settings),
              ),
              title: Text('设置'),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.supervised_user_circle)),
              title: Text('我的'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, '/user');
              },
            ),
            Divider(),
          ],
        )),
        endDrawer: Drawer(
          child: Container(
            child: ListView(
              children: _deviceData.keys.map((String property) {
                return Row(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        property,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                        child: Container(
                      padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                      child: Text(
                        '${_deviceData[property]}',
                        maxLines: 10,
                        overflow: TextOverflow.ellipsis,
                      ),
                    )),
                  ],
                );
              }).toList(),
            ),
          ),
        ));
  }
}
