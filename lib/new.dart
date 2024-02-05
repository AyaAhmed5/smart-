//
// import 'package:barcode_scan2/model/scan_result.dart';
// import 'package:barcode_scan2/platform_wrapper.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:printing/printing.dart';
// import 'package:qr_code_scanner/qr_code_scanner.dart';
// // //
// class QRScannerScreen extends StatelessWidget {
//   Future<void> _scanQRCode(BuildContext context) async {
//     try {
//       ScanResult result = await BarcodeScanner.scan();
//       // Handle the scanned QR code data here
//       print('Scanned QR code: $result');
//       // You can use the scanned data as needed (e.g., navigate to a new screen)
//     } catch (e) {
//       // Handle exceptions
//       print('Error: $e');
//       if (e.toString().contains('cameraAccessDenied')) {
//         // Handle camera permission denied
//         print('Camera permission denied');
//       }
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('QR Code Scanner'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () => _scanQRCode(context),
//           child: Text('Scan QR Code'),
//         ),
//       ),
//     );
//   }
// }

// class QRScannerScreen extends StatefulWidget {
//   @override
//   _QRScannerScreenState createState() => _QRScannerScreenState();
// }
//
// class _QRScannerScreenState extends State<QRScannerScreen> {
//   final GlobalKey _qrKey = GlobalKey(debugLabel: 'QR');
//   late QRViewController _controller;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: QRView(
//         key: _qrKey,
//         onQRViewCreated: _onQRViewCreated,
//       ),
//     );
//   }
//
//   void _onQRViewCreated(QRViewController controller) {
//     setState(() {
//       _controller = controller;
//     });
//     _controller.scannedDataStream.listen((scanData) {
//       // Handle the scanned QR code data here
//       print('Scanned QR code: $scanData');
//       // You can use the scanned data as needed (e.g., navigate to a new screen)
//     });
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
// // }
//
//
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   String result = "Scan a QR code";
//
//   Future<void> scanQRCode() async {
//     String scannedCode = await qrscan.scan();
//     if (scannedCode != null) {
//       setState(() {
//         result = scannedCode;
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("QR Code Scanner"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               result,
//               style: TextStyle(fontSize: 18),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () => scanQRCode(),
//               child: Text("Scan QR Code"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
