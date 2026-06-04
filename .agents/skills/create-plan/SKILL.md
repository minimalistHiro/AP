---
name: create-plan
description: APプロジェクトで実装計画書・作業プランの作成を依頼されたときに、plans/in_progress/へMarkdown計画書を作成するために使う。「計画書を作って」「プランを作成して」「実装計画を立てて」等の依頼が対象。
---

# Create Plan

## 手順

1. `plans/in_progress` と `plans/completed` がなければ作成する。
2. 依頼内容に関係するMarkdownとコードを読む。
3. `plans/in_progress/YYYYMMDD_<topic>_plan.md` を作成する。
4. 計画書には以下を書く。
   - 目的
   - 対象ファイル
   - 実装方針
   - フェーズ
   - 検証方法
   - リスク・未決事項
5. 実装はユーザーが依頼している場合のみ続行する。

## 注意事項

- APの事業表現や個人情報に関わる変更では、リスクと確認事項を必ず書く。

