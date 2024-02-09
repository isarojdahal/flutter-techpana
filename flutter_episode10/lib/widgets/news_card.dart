import 'package:flutter/material.dart';
import 'package:flutter_episode10/constants/url_constants.dart';
import 'package:http/http.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share_plus/share_plus.dart';

_launchUrl(String url) async {
  if (!await launchUrl(Uri.parse(url))) {
    throw 'Could not launch $url';
  }
}

getNewsCard(e) {
  return Stack(children: [
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(12.0)),
        child: Column(
          children: [
            Image.network(e["urlToImage"] ?? PLACEHOLDER_IMAGE_URL),
            GestureDetector(
              onTap: () => _launchUrl(e["url"]),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      e["title"],
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(e["description"] ?? "..."),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ),
    Positioned(
      top: 20.0,
      right: 20.0,
      child: GestureDetector(
        onTap: () => Share.share("I liked this news : ${e["url"]}"),
        child: const Icon(
          Icons.share,
          color: Colors.white,
        ),
      ),
    )
  ]);
}
