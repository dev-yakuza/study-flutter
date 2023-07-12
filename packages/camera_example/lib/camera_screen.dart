import 'package:camera/camera.dart';
import 'package:camera_example/photo_preview.dart';
import 'package:flutter/material.dart';

class CameraScreen extends StatefulWidget {
  final CameraController? cameraController;

  const CameraScreen({
    this.cameraController,
    super.key,
  });

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  CameraController? _cameraController;
  bool _isCameraReady = false;

  @override
  void initState() {
    super.initState();
    _cameraController = widget.cameraController;
    if (_cameraController != null) {
      _isCameraReady = true;
      return;
    }

    availableCameras().then((cameras) {
      if (cameras.isNotEmpty) {
        _cameraController = CameraController(
          cameras.first,
          ResolutionPreset.medium,
        );

        _cameraController!.initialize().then((_) {
          setState(() {
            _isCameraReady = true;
          });
        });
      }
    });
  }

  void _onTakePicture(BuildContext context) {
    _cameraController!.takePicture().then((image) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => PhotoPreview(
            imagePath: image.path,
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Take a photo')),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: _cameraController != null && _isCameraReady
                  ? CameraPreview(_cameraController!)
                  : Container(
                      color: Colors.grey,
                    ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: ElevatedButton(
                onPressed: _cameraController != null
                    ? () => _onTakePicture(context)
                    : null,
                child: const Text('Take a photo'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
