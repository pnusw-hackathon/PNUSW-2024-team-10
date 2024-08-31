import 'package:heron/screens/more/widgets/app.dart';
import 'package:heron/screens/more/widgets/etc.dart';
import 'package:heron/screens/more/widgets/profile.dart';
import 'package:heron/screens/more/widgets/prefs.dart';
import 'package:heron/widgets/appbar/appbar.dart';
import 'package:flutter/material.dart';
import 'package:heron/widgets/scroll/scroll.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: Implement ProfileScreen
    final String name = "홍길동";
    final String email = "gildong1557@gmail.com";
    final UserPlatformType platform = UserPlatformType.google;
    final ImageProvider<Object>? image = null;

    return ScrollOffsetProvider(
      builder: (context, scrollOffset, scrollController) => Scaffold(
        appBar: HeronAppBar(
          hasBackButton: false,
          scrollOffset: scrollOffset,
          title: Opacity(
            opacity: ((scrollOffset - 52) / 12).clamp(0.0, 1.0),
            child: MoreUserProfileSmall(
              name: name,
              image: image,
            ),
          ),
          // actions: [
          // 추후 알림 기능 구현 시 사용
          // HeronIconButton(
          //   icon: const Icon(HugeIcons.strokeRoundedNotification03),
          //   onPressed: () {},
          // ),
          // ],
        ),
        body: CustomScrollView(
          controller: scrollController,
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  MoreUserProfile(
                    name: name,
                    email: email,
                    platform: platform,
                    image: image,
                  ),
                ],
              ),
            ),
            const SliverToBoxAdapter(
              child: Column(
                children: [
                  MoreUserSettingsList(),
                  MoreAppInfoList(),
                  MoreEtcList(),
                  SizedBox(height: 40.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
