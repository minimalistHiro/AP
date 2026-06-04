# AGENTS.md — AP Flutter Project

## Language

- 回答・説明・コメントは日本語を基本にする。

## Project Overview

- このプロジェクトは、石井さんが関わるAP事業向けのFlutterアプリ。
- APは、化学物質を使わない／取り除いた化粧品・シャンプー等を広めるネットワークビジネス系の事業として、日記Markdownから読み取られている。
- アプリの主軸は、単なる商品紹介ではなく、APチームの活動をAI・データ化で支援すること。
- 想定機能は、AP基礎理論、断り文句への対応、参加理由の収集、リクルーター相談、プレゼン資料作成補助。

## Current App Shape

- `lib/main.dart` に、AP AI支援アプリの初期画面を実装している。
- 外部パッケージは追加していない。まずはFlutter標準のMaterial UIだけで進める。
- ビジネス文脈の詳細は `docs/AP_BUSINESS_CONTEXT.md` を参照する。

## Commands

```bash
flutter pub get
flutter analyze
flutter test
flutter run
```

## Development Rules

- 変更後は可能な限り `flutter analyze` と `flutter test` を実行する。
- UI文言は日本語を優先する。
- APの扱いは慎重にする。ネットワークビジネス性、初期費用、紹介報酬、リクルート構造が絡むため、断定的な販売・勧誘表現は避ける。
- 金子さんの主軸はAI・技術による問題解決なので、紹介活動そのものよりも、ノウハウ整理・資料化・チャットボット化・活動ログ整備を優先する。
