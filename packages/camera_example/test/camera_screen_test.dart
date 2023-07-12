import 'dart:io';

import 'package:camera/camera.dart';
import 'package:camera_example/camera_screen.dart';
import 'package:camera_platform_interface/camera_platform_interface.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './camera_mock.dart';

void main() {
  setUp(() {
    CameraPlatform.instance = MockCameraPlatform();
  });

  testWidgets('Rendered well when camera is not available', (
    WidgetTester tester,
  ) async {
    final originalAvailableCameras = mockAvailableCameras;
    mockAvailableCameras = [];

    await tester.pumpWidget(const MaterialApp(home: CameraScreen()));
    await tester.pumpAndSettle();

    final scaffold = tester.widget<Scaffold>(find.byType(Scaffold));
    final cameraPreview =
        (((scaffold.body as SafeArea).child as Column).children[0] as Expanded)
            .child;
    expect(cameraPreview.runtimeType, Container);

    mockAvailableCameras = originalAvailableCameras;
  });

  testWidgets('Rendered well when camera is available', (
    WidgetTester tester,
  ) async {
    final cameraController = CameraController(
      const CameraDescription(
        name: 'cam',
        lensDirection: CameraLensDirection.back,
        sensorOrientation: 90,
      ),
      ResolutionPreset.max,
    );

    await tester.pumpWidget(
      MaterialApp(
        home: CameraScreen(
          cameraController: cameraController,
        ),
      ),
    );
    await tester.pumpAndSettle();

    final scaffold = tester.widget<Scaffold>(find.byType(Scaffold));
    final cameraPreview =
        (((scaffold.body as SafeArea).child as Column).children[0] as Expanded)
            .child;
    expect(cameraPreview.runtimeType, CameraPreview);
  });

  testWidgets('Take a picture', (
    WidgetTester tester,
  ) async {
    final mockCameraController = MockCameraController();
    mockCameraController.value = mockCameraController.value.copyWith(
      isInitialized: true,
      previewSize: const Size(480, 640),
    );

    await tester.pumpWidget(
      MaterialApp(
        home: CameraScreen(
          cameraController: mockCameraController,
        ),
      ),
    );
    await tester.pumpAndSettle();

    var scaffold = tester.widget<Scaffold>(find.byType(Scaffold));
    expect(((scaffold.appBar as AppBar).title as Text).data, 'Take a photo');

    await tester.tap(find.byType(ElevatedButton));
    await tester.pumpAndSettle();

    scaffold = tester.widget<Scaffold>(find.byType(Scaffold));
    expect(((scaffold.appBar as AppBar).title as Text).data, 'Preview');
    final image = tester.widget<Image>(find.byType(Image));
    expect(image.image, FileImage(File(mockTakePicture.path)));
  });
}
