---
name: markdown-maintenance-rules
description: APプロジェクトで「マークダウンを整理して」「ドキュメントを更新して」「MDを整理して」等の依頼が来たときに、AP関連Markdownを実装・決定事項に合わせて更新するために使う。
---

# Markdown Maintenance Rules

## 概要

APプロジェクトのMarkdownを、現在の実装・仕様・事業方針に合わせて整理する。

## 対象ファイル

- `README.md`
- `AGENTS.md`
- `docs/AP_BUSINESS_CONTEXT.md`
- `docs/AP_BUSINESS_MODEL.md`
- `docs/FIRESTORE.md`
- `docs/APP_SCREENS.md`
- `docs/AP_UI_TEXT_RULES.md`
- `TODO.md`
- `REVIEW_ITEMS.md`
- `QA_CHECKLIST.md`
- `APP_STORE_TEXTS.md`
- `PRIVACY_POLICY.md`
- `TERMS_OF_SERVICE.md`
- `meeting_notes/*.md`

## 手順

1. 依頼内容と現在の変更点を確認する。
2. 関係するMarkdownだけを読む。全ファイルを機械的に更新しない。
3. 実装済みの内容は仕様Markdownへ反映する。
4. 実装することが決まった内容は `TODO.md` へ整理する。
5. 未決定・慎重な判断が必要な内容は `REVIEW_ITEMS.md` へ整理する。
6. APの事業表現に関わる文言は `docs/AP_UI_TEXT_RULES.md` の方針に合わせる。
7. 更新後に対象Markdown一覧を確認し、変更内容を簡潔に報告する。

## 注意事項

- APはネットワークビジネス性、初期費用、紹介報酬、リクルート構造が絡むため、断定的な販売・勧誘表現は避ける。
- 未実装の画面や機能を `docs/APP_SCREENS.md` に実装済みとして書かない。
- Firestoreや個人情報の扱いは `docs/FIRESTORE.md` とプライバシー文書へ分けて整理する。

