import 'package:heron/widgets/list/items.dart';
import 'package:flutter/material.dart';

class HeronListGroup extends StatelessWidget {
  final String? header;
  final String? footer;
  final List<HeronListItem> children;

  const HeronListGroup({
    super.key,
    this.header,
    this.footer,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (header != null) HeronListGroupLabel(header),
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
                color: colorScheme.surfaceBright,
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(
                  color: colorScheme.outlineVariant,
                  width: 1.0,
                )),
            child: Column(
              children: List.generate(
                children.length,
                (i) => Column(
                  children: [
                    children[i],
                    if (i < children.length - 1)
                      Divider(
                        color: colorScheme.outlineVariant,
                        height: 1.0,
                        indent: 16.0,
                      ),
                  ],
                ),
              ),
            ),
          ),
          if (footer != null) HeronListGroupLabel(footer),
        ],
      ),
    );
  }
}

class HeronListGroupLabel extends StatelessWidget {
  final String? content;

  const HeronListGroupLabel(this.content, {super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ),
      child: Text(
        content!,
        style: textTheme.labelMedium!.copyWith(
          color: colorScheme.outline,
        ),
      ),
    );
  }
}