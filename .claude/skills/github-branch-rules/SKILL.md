---
name: github-branch-rules
description: APプロジェクトでGitHub作業ブランチを作成・切替する依頼が来たときに使う。「ブランチを作って」「新しいブランチを切って」「作業ブランチに切り替えて」等の依頼が対象。
---

# GitHub Branch Rules

## 概要

APプロジェクトで安全に作業ブランチを作成・切替する。原則として `origin/main` の最新状態から新しいブランチを作る。

## 手順

1. `git status -sb` で未コミット変更を確認する。
2. 未コミット変更がある場合は、ブランチ切替・作成前にユーザーへ確認する。
3. `git fetch origin` でリモート情報を更新する。
4. `git branch --all` で既存ブランチを確認する。
5. 新規ブランチ作成の場合は、原則として `origin/main` から作成する。
   - 例: `git switch -c <branch-name> origin/main`
6. 既存ブランチへ切り替える場合は `git switch <branch-name>` を使う。
7. 切替後に `git status -sb` を確認して報告する。

## ブランチ名の目安

- 機能追加: `feature/<topic>`
- Markdown整理: `docs/<topic>`
- スキル追加: `skills/<topic>`
- 修正: `fix/<topic>`

## 注意事項

- ブランチ作成時に未コミット変更を勝手に持ち越さない。
- `main` で直接作業し続ける必要がある場合は、理由を明示する。
- リモートブランチが見つからない場合は、`git fetch origin` 後のブランチ一覧を確認して報告する。

