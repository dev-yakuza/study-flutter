import 'dart:math';

import 'package:camera/camera.dart';
import 'package:camera_platform_interface/camera_platform_interface.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mockito/mockito.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

List<CameraDescription> mockAvailableCameras = <CameraDescription>[
  const CameraDescription(
      name: 'camBack',
      lensDirection: CameraLensDirection.back,
      sensorOrientation: 90),
  const CameraDescription(
      name: 'camFront',
      lensDirection: CameraLensDirection.front,
      sensorOrientation: 180),
];

bool mockPlatformException = false;

int get mockInitializeCamera => 13;

CameraInitializedEvent get mockOnCameraInitializedEvent =>
    const CameraInitializedEvent(
      13,
      75,
      75,
      ExposureMode.auto,
      true,
      FocusMode.auto,
      true,
    );

CameraClosingEvent get mockOnCameraClosingEvent => const CameraClosingEvent(13);

CameraErrorEvent get mockOnCameraErrorEvent =>
    const CameraErrorEvent(13, 'closing');

DeviceOrientationChangedEvent get mockOnDeviceOrientationChangedEvent =>
    const DeviceOrientationChangedEvent(DeviceOrientation.portraitUp);

XFile mockTakePicture = XFile('foo/bar.png');

XFile mockVideoRecordingXFile = XFile('foo/bar.mpeg');

class MockCameraPlatform extends Mock
    with MockPlatformInterfaceMixin
    implements CameraPlatform {
  @override
  Future<void> initializeCamera(
    int? cameraId, {
    ImageFormatGroup? imageFormatGroup = ImageFormatGroup.unknown,
  }) async =>
      super.noSuchMethod(Invocation.method(
        #initializeCamera,
        <Object?>[cameraId],
        <Symbol, dynamic>{
          #imageFormatGroup: imageFormatGroup,
        },
      ));

  @override
  Future<void> dispose(int? cameraId) async {
    return super.noSuchMethod(Invocation.method(#dispose, <Object?>[cameraId]));
  }

  @override
  Future<List<CameraDescription>> availableCameras() =>
      Future<List<CameraDescription>>.value(mockAvailableCameras);

  @override
  Future<int> createCamera(
    CameraDescription description,
    ResolutionPreset? resolutionPreset, {
    bool enableAudio = false,
  }) =>
      mockPlatformException
          ? throw PlatformException(code: 'foo', message: 'bar')
          : Future<int>.value(mockInitializeCamera);

  @override
  Stream<CameraInitializedEvent> onCameraInitialized(int cameraId) =>
      Stream<CameraInitializedEvent>.value(mockOnCameraInitializedEvent);

  @override
  Stream<CameraClosingEvent> onCameraClosing(int cameraId) =>
      Stream<CameraClosingEvent>.value(mockOnCameraClosingEvent);

  @override
  Stream<CameraErrorEvent> onCameraError(int cameraId) =>
      Stream<CameraErrorEvent>.value(mockOnCameraErrorEvent);

  @override
  Stream<DeviceOrientationChangedEvent> onDeviceOrientationChanged() =>
      Stream<DeviceOrientationChangedEvent>.value(
          mockOnDeviceOrientationChangedEvent);

  @override
  Future<XFile> takePicture(int cameraId) => mockPlatformException
      ? throw PlatformException(code: 'foo', message: 'bar')
      : Future<XFile>.value(mockTakePicture);

  @override
  Future<void> prepareForVideoRecording() async =>
      super.noSuchMethod(Invocation.method(#prepareForVideoRecording, null));

  @override
  Future<XFile> startVideoRecording(int cameraId,
          {Duration? maxVideoDuration}) =>
      Future<XFile>.value(mockVideoRecordingXFile);

  @override
  Future<void> startVideoCapturing(VideoCaptureOptions options) {
    return startVideoRecording(options.cameraId,
        maxVideoDuration: options.maxDuration);
  }

  @override
  Future<void> lockCaptureOrientation(
          int? cameraId, DeviceOrientation? orientation) async =>
      super.noSuchMethod(Invocation.method(
          #lockCaptureOrientation, <Object?>[cameraId, orientation]));

  @override
  Future<void> unlockCaptureOrientation(int? cameraId) async =>
      super.noSuchMethod(
          Invocation.method(#unlockCaptureOrientation, <Object?>[cameraId]));

  @override
  Future<void> pausePreview(int? cameraId) async =>
      super.noSuchMethod(Invocation.method(#pausePreview, <Object?>[cameraId]));

  @override
  Future<void> resumePreview(int? cameraId) async => super
      .noSuchMethod(Invocation.method(#resumePreview, <Object?>[cameraId]));

  @override
  Future<double> getMaxZoomLevel(int? cameraId) async => super.noSuchMethod(
        Invocation.method(#getMaxZoomLevel, <Object?>[cameraId]),
        returnValue: Future<double>.value(1.0),
      ) as Future<double>;

  @override
  Future<double> getMinZoomLevel(int? cameraId) async => super.noSuchMethod(
        Invocation.method(#getMinZoomLevel, <Object?>[cameraId]),
        returnValue: Future<double>.value(0.0),
      ) as Future<double>;

  @override
  Future<void> setZoomLevel(int? cameraId, double? zoom) async =>
      super.noSuchMethod(
          Invocation.method(#setZoomLevel, <Object?>[cameraId, zoom]));

  @override
  Future<void> setFlashMode(int? cameraId, FlashMode? mode) async =>
      super.noSuchMethod(
          Invocation.method(#setFlashMode, <Object?>[cameraId, mode]));

  @override
  Future<void> setExposureMode(int? cameraId, ExposureMode? mode) async =>
      super.noSuchMethod(
          Invocation.method(#setExposureMode, <Object?>[cameraId, mode]));

  @override
  Future<void> setExposurePoint(int? cameraId, Point<double>? point) async =>
      super.noSuchMethod(
          Invocation.method(#setExposurePoint, <Object?>[cameraId, point]));

  @override
  Future<double> getMinExposureOffset(int? cameraId) async =>
      super.noSuchMethod(
        Invocation.method(#getMinExposureOffset, <Object?>[cameraId]),
        returnValue: Future<double>.value(0.0),
      ) as Future<double>;

  @override
  Future<double> getMaxExposureOffset(int? cameraId) async =>
      super.noSuchMethod(
        Invocation.method(#getMaxExposureOffset, <Object?>[cameraId]),
        returnValue: Future<double>.value(1.0),
      ) as Future<double>;

  @override
  Future<double> getExposureOffsetStepSize(int? cameraId) async =>
      super.noSuchMethod(
        Invocation.method(#getExposureOffsetStepSize, <Object?>[cameraId]),
        returnValue: Future<double>.value(1.0),
      ) as Future<double>;

  @override
  Future<double> setExposureOffset(int? cameraId, double? offset) async =>
      super.noSuchMethod(
        Invocation.method(#setExposureOffset, <Object?>[cameraId, offset]),
        returnValue: Future<double>.value(1.0),
      ) as Future<double>;
}

class MockCameraController extends ValueNotifier<CameraValue>
    implements CameraController {
  MockCameraController()
      : super(const CameraValue.uninitialized(fakeDescription));

  static const CameraDescription fakeDescription = CameraDescription(
      name: '', lensDirection: CameraLensDirection.back, sensorOrientation: 0);

  @override
  Future<void> dispose() async {
    super.dispose();
  }

  @override
  Widget buildPreview() {
    return const Texture(textureId: CameraController.kUninitializedCameraId);
  }

  @override
  int get cameraId => CameraController.kUninitializedCameraId;

  @override
  void debugCheckIsDisposed() {}

  @override
  bool get enableAudio => false;

  @override
  Future<double> getExposureOffsetStepSize() async => 1.0;

  @override
  Future<double> getMaxExposureOffset() async => 1.0;

  @override
  Future<double> getMaxZoomLevel() async => 1.0;

  @override
  Future<double> getMinExposureOffset() async => 1.0;

  @override
  Future<double> getMinZoomLevel() async => 1.0;

  @override
  ImageFormatGroup? get imageFormatGroup => null;

  @override
  Future<void> initialize() async {}

  @override
  Future<void> lockCaptureOrientation([DeviceOrientation? orientation]) async {}

  @override
  Future<void> pauseVideoRecording() async {}

  @override
  Future<void> prepareForVideoRecording() async {}

  @override
  ResolutionPreset get resolutionPreset => ResolutionPreset.low;

  @override
  Future<void> resumeVideoRecording() async {}

  @override
  Future<void> setExposureMode(ExposureMode mode) async {}

  @override
  Future<double> setExposureOffset(double offset) async => offset;

  @override
  Future<void> setExposurePoint(Offset? point) async {}

  @override
  Future<void> setFlashMode(FlashMode mode) async {}

  @override
  Future<void> setFocusMode(FocusMode mode) async {}

  @override
  Future<void> setFocusPoint(Offset? point) async {}

  @override
  Future<void> setZoomLevel(double zoom) async {}

  @override
  Future<void> startImageStream(onLatestImageAvailable onAvailable) async {}

  @override
  Future<void> startVideoRecording(
      {onLatestImageAvailable? onAvailable}) async {}

  @override
  Future<void> stopImageStream() async {}

  @override
  Future<XFile> stopVideoRecording() async => XFile('');

  @override
  Future<XFile> takePicture() async => Future<XFile>.value(mockTakePicture);

  @override
  Future<void> unlockCaptureOrientation() async {}

  @override
  Future<void> pausePreview() async {}

  @override
  Future<void> resumePreview() async {}

  @override
  Future<void> setDescription(CameraDescription description) async {}

  @override
  CameraDescription get description => value.description;
}
