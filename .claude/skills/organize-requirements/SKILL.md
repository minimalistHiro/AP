---
name: organize-requirements
description: APプロジェクトでユーザーの要望、PDF/APIガイド読み取り結果、機能案を整理する依頼が来たときに、関連Markdownを参照して要件・TODO・未決事項に分解するために使う。「要望を整理して」「仕様に落として」「読み取り結果を整理して」等の依頼が対象。
---

# Organize Requirements

## 手順

1. ユーザーの要望や読み取り結果を確認する。
2. 関連Markdownを読む。
   - `docs/AP_BUSINESS_CONTEXT.md`
   - `docs/AP_BUSINESS_MODEL.md`
   - `docs/FIRESTORE.md`
   - `docs/APP_SCREENS.md`
   - `docs/AP_UI_TEXT_RULES.md`
   - `TODO.md`
   - `REVIEW_ITEMS.md`
3. 内容を以下に分類する。
   - 実装要件
   - データ設計
   - 画面・UX
   - AI/API連携
   - TODO候補
   - REVIEW_ITEMS候補
4. 既存仕様との重複や矛盾を示す。
5. ユーザーが承認した場合のみMarkdownへ反映する。

## 注意事項

- APの紹介活動そのものではなく、ノウハウ整理・資料化・チャットボット化・活動ログ整備を優先する。
- 未確定の事業判断やリスクはTODOではなく `REVIEW_ITEMS.md` に分ける。

