import 'package:flutter/material.dart';
import 'package:flutter_widets/89.dextar_cd_challenge/albub.dart';
import 'package:vector_math/vector_math_64.dart' as vector;

const Color headerColor = Color(0xFFECECEA);

class DextarCdChallenge extends StatelessWidget {
  const DextarCdChallenge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: headerColor,
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: MySliverPersistaceHeaderDeligate(),
            pinned: true,
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(20.0),
              child: Text(currentAlbum.description),
            ),
          )
        ],
      ),
    );
  }
}

const double _sliverMaxExtend = 350;
const double _sliverMinExtend = 100;
const double _maxImageSize = 160.0;
const double _minImageSize = 50.0;
const double _leftMargin = 155.0;

const double _titileMaxSize = 25;
const double _titileMinSize = 18;

const double _subtitileMaxSize = 18;
const double _subtitileMinSize = 14;

class MySliverPersistaceHeaderDeligate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final percent = shrinkOffset / _sliverMaxExtend;
    final shrinkImageSize = (_maxImageSize * (1 - percent)).clamp(60, 160);
    var size = MediaQuery.of(context).size;

    final titlSize =
        (_titileMaxSize * (1 - percent)).clamp(_titileMinSize, _titileMaxSize);
    final subtitlSize = (_subtitileMaxSize * (1 - percent))
        .clamp(_subtitileMinSize, _subtitileMaxSize);
    return Container(
      color: headerColor,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 50,
            left: size.width / 3,
            height: shrinkImageSize.toDouble(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  currentAlbum.artist,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: titlSize,
                      letterSpacing: -0.5),
                ),
                Text(
                  currentAlbum.album,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: subtitlSize,
                      letterSpacing: -0.5,
                      color: Colors.grey),
                ),
              ],
            ),
          ),
          Positioned(
            // top: 20,
            left: (_leftMargin * (1 - percent)).clamp(30.0, _leftMargin),
            bottom: 15,
            height: shrinkImageSize.toDouble(),
            child: Transform.rotate(
              angle: vector.radians(180 * (1.0 - percent)),
              child: Image.asset(currentAlbum.imageDisk),
            ),
          ),
          Positioned(
            // top: 20,
            left: 20,
            bottom: 15,
            height: shrinkImageSize.toDouble(),
            child: Image.asset(currentAlbum.imageAlbum),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => _sliverMaxExtend;

  @override
  double get minExtent => _sliverMinExtend;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
