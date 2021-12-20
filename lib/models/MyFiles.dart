import 'package:biscuitpayment_app/constants.dart';
import 'package:flutter/material.dart';

class CloudStorageInfo {
  final String? svgSrc, title, totalStorage;
  final int? numOfFiles, percentage;
  final Color? color;

  CloudStorageInfo({
    this.svgSrc,
    this.title,
    this.totalStorage,
    this.numOfFiles,
    this.percentage,
    this.color,
  });
}

List demoMyFiles = [
  CloudStorageInfo(
    title: "Crypto",
    numOfFiles: 1328,
    svgSrc: "assets/icons/Documents.svg",
    totalStorage: "5,000 USD",
    color: primaryColor,
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "NFT",
    numOfFiles: 1328,
    svgSrc: "assets/icons/google_drive.svg",
    totalStorage: "1,000 USD",
    color: Color(0xFFFFA113),
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "Avatars",
    numOfFiles: 1328,
    svgSrc: "assets/icons/one_drive.svg",
    totalStorage: "2,000 USD",
    color: Color(0xFFA4CDFF),
    percentage: 10,
  ),
  CloudStorageInfo(
    title: "Other assets",
    numOfFiles: 5328,
    svgSrc: "assets/icons/drop_box.svg",
    totalStorage: "5,000 USD",
    color: Color(0xFF007EE5),
    percentage: 78,
  ),
];
