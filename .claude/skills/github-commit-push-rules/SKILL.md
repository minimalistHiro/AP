---
name: github-commit-push-rules
description: APプロジェクトで変更をGitHubへコミット・プッシュする依頼が来たときに使う。「コミットして」「プッシュして」「GitHubに反映して」「コミットしてプッシュして」等の依頼が対象。
---

# GitHub Commit Push Rules

## 概要

APプロジェクトの変更を現在ブランチにコミットし、同名のリモートブランチへpushする。`main` へのマージは明示依頼がある場合だけ行う。

## 手順

1. `git status -sb` で現在ブランチと変更内容を確認する。
2. 関連Markdownの更新漏れを確認する。
   - Firestore/API/データ構造の変更: `docs/FIRESTORE.md`
   - 画面・導線の変更: `docs/APP_SCREENS.md`
   - AP文言・表現方針の変更: `docs/AP_UI_TEXT_RULES.md`
   - 事業方針・リスクの変更: `docs/AP_BUSINESS_MODEL.md` / `REVIEW_ITEMS.md`
   - 実装TODOの進捗: `TODO.md` / `QA_CHECKLIST.md`
3. Flutterコード変更がある場合は、可能な限り `flutter analyze` と `flutter test` を実行する。
4. `git diff --stat` と必要に応じて `git diff` を確認する。
5. `git add -A` で `.gitignore` 対象外の変更をステージングする。
6. `git diff --cached --stat` でコミット対象を確認する。
7. 適切なコミットメッセージで `git commit -m "..."` を実行する。
8. `git push -u origin <current-branch>` で現在ブランチをpushする。
9. `git status -sb` と最新コミットを確認して報告する。

## mainへのマージ方針

- `main` へマージするのは、ユーザーが「mainへマージして」「統合して」と明示した場合だけ。
- マージ前に `git fetch origin` と `git status -sb` を確認する。
- コンフリクト時は停止して報告する。

## 注意事項

- ユーザー依頼なしにコミット・pushしない。
- 未確認の秘密情報、APIキー、個人情報を含めない。
- APの誇大表現・強い勧誘表現・収益保証に見える文言が混入していないか確認する。

