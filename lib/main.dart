import 'package:flutter/material.dart';

void main() {
  runApp(const ApApp());
}

class ApApp extends StatelessWidget {
  const ApApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF0F766E),
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: const Color(0xFFF6F7F9),
        useMaterial3: true,
      ),
      home: const ApHomePage(),
    );
  }
}

class ApHomePage extends StatelessWidget {
  const ApHomePage({super.key});

  static const _actions = [
    _ActionItem(
      icon: Icons.psychology_alt_outlined,
      title: '相談ログ',
      subtitle: '断り文句と切り返しを蓄積',
    ),
    _ActionItem(
      icon: Icons.article_outlined,
      title: '資料作成',
      subtitle: '説明文とプレゼンの下書き',
    ),
    _ActionItem(
      icon: Icons.groups_2_outlined,
      title: 'PRG管理',
      subtitle: 'ゲストとプレゼンターを整理',
    ),
    _ActionItem(
      icon: Icons.auto_awesome_outlined,
      title: 'AI支援',
      subtitle: 'ベテランの知見を再利用',
    ),
  ];

  static const _notes = [
    '商品説明よりも、相手の不安・疑問・判断理由を記録する',
    '収益表現ではなく、事実・体験・課題解決を中心にする',
    '人紹介だけに寄せず、AIとデータ化でチームに貢献する',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AP'), centerTitle: false),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
          children: [
            const _HeroPanel(),
            const SizedBox(height: 16),
            Text('ワークスペース', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 8),
            LayoutBuilder(
              builder: (context, constraints) {
                final width = constraints.maxWidth;
                final crossAxisCount = width >= 720 ? 4 : 2;
                return GridView.builder(
                  itemCount: _actions.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossAxisCount,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    childAspectRatio: width >= 720 ? 1.15 : 1.05,
                  ),
                  itemBuilder: (context, index) {
                    return _ActionCard(item: _actions[index]);
                  },
                );
              },
            ),
            const SizedBox(height: 16),
            _SectionPanel(
              title: '設計メモ',
              child: Column(
                children: [for (final note in _notes) _NoteRow(text: note)],
              ),
            ),
            const SizedBox(height: 12),
            const _SectionPanel(
              title: '次の実装候補',
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _TaskRow(label: 'AP基礎理論のMarkdown閲覧'),
                  _TaskRow(label: '断り文句テンプレート管理'),
                  _TaskRow(label: 'リクルーター向けAI相談画面'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _HeroPanel extends StatelessWidget {
  const _HeroPanel();

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: colorScheme.primary,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.hub_outlined, color: colorScheme.onPrimary, size: 28),
          const SizedBox(height: 12),
          Text(
            'AP AI支援',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              color: colorScheme.onPrimary,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            '石井さんのAP活動を、ノウハウ整理・相談対応・資料化で支えるための初期プロジェクト。',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: colorScheme.onPrimary.withValues(alpha: 0.9),
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}

class _ActionCard extends StatelessWidget {
  const _ActionCard({required this.item});

  final _ActionItem item;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Card(
      margin: EdgeInsets.zero,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(item.icon, color: colorScheme.primary),
              const Spacer(),
              Text(
                item.title,
                style: Theme.of(
                  context,
                ).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 4),
              Text(
                item.subtitle,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SectionPanel extends StatelessWidget {
  const _SectionPanel({required this.title, required this.child});

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 12),
            child,
          ],
        ),
      ),
    );
  }
}

class _NoteRow extends StatelessWidget {
  const _NoteRow({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.check_circle_outline, size: 18),
          const SizedBox(width: 8),
          Expanded(child: Text(text)),
        ],
      ),
    );
  }
}

class _TaskRow extends StatelessWidget {
  const _TaskRow({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          const Icon(Icons.arrow_forward_ios, size: 14),
          const SizedBox(width: 8),
          Expanded(child: Text(label)),
        ],
      ),
    );
  }
}

class _ActionItem {
  const _ActionItem({
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  final IconData icon;
  final String title;
  final String subtitle;
}
