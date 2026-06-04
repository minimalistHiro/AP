---
name: code-cleanup
description: APプロジェクトでコード整理、リファクタリング、無駄な処理の見直しを依頼されたときに、仕様Markdownを確認した上で安全に整理するために使う。
---

# Code Cleanup

## 手順

1. 変更対象を確認する。
2. 関連する仕様Markdownを読む。
   - `docs/APP_SCREENS.md`
   - `docs/FIRESTORE.md`
   - `docs/AP_UI_TEXT_RULES.md`
   - `docs/AP_BUSINESS_CONTEXT.md`
3. リファクタリングで画面仕様、データ構造、AP文言方針を変えない。
4. 変更後は可能な限り `flutter analyze` と `flutter test` を実行する。
5. 必要に応じてMarkdown更新候補を報告する。

## 注意事項

- 未関連の大規模リファクタリングは避ける。
- APの慎重な文言・個人情報の扱いに影響するコードは、変更理由を明確にする。

