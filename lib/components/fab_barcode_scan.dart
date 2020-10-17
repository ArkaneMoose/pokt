import 'package:flutter/cupertino.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter/material.dart';
import 'package:barcode_scan/barcode_scan.dart';

class FabBarcodeScan extends StatelessWidget {
  final Function(Future<ScanResult>) onBarcodeScan;
  final Function(ScanResult) onBarcodeScanned;
  FabBarcodeScan({this.onBarcodeScan, this.onBarcodeScanned});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: FloatingActionButton(
          tooltip: 'Scan barcode',
          child: const Icon(Ionicons.barcode_outline, size: 30.0),
          onPressed: _scanBarcode,
        ),
        width: 64,
        height: 64);
  }

  Future<void> _scanBarcode() async {
    final Future<ScanResult> scan = BarcodeScanner.scan(
      options: const ScanOptions(
        restrictFormat: [
          BarcodeFormat.ean13,
          BarcodeFormat.ean8,
          BarcodeFormat.upce
        ],
      ),
    );
    if (onBarcodeScan != null) {
      onBarcodeScan(scan);
    }
    final ScanResult result = await scan;
    if (onBarcodeScanned != null && result.type == ResultType.Barcode) {
      onBarcodeScanned(result);
    }
  }
}
