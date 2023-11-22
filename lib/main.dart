import 'package:ar_flutter_plugin/datatypes/node_types.dart';
import 'package:ar_flutter_plugin/managers/ar_anchor_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_location_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_object_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_session_manager.dart';
import 'package:ar_flutter_plugin/models/ar_node.dart';
import 'package:flutter/material.dart';
import 'package:ar_flutter_plugin/ar_flutter_plugin.dart';
import 'package:flutter/services.dart';
import 'package:testtest/screen/slpash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}

class ARScene extends StatefulWidget {
  @override
  _ARSceneState createState() => _ARSceneState();
}

class _ARSceneState extends State<ARScene> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AR Flutter Demo'),
      ),
      body: ARView(
        onARViewCreated: (ARSessionManager arSessionManager,
            ARObjectManager arObjectManager, ARAnchorManager arAnchorManager,
            ARLocationManager arLocationManager) {
          _addARModel(arObjectManager);
        },
      ),
    );
  }



    Future<void> _addARModel(ARObjectManager arObjectManager) async {
      final ARNode node = ARNode(
        type: NodeType.localGLTF2,
        uri: 'images/ArmChair_01_4k.gltf',
      );
      arObjectManager.addNode(node);
    }
  }
