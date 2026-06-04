---
name: create-skill
description: APプロジェクトで新しいローカルスキルの作成を依頼されたときに、Claude Code用の .claude/skills とCodex用の .agents/skills の両方へ同一内容のSKILL.mdを作成するために使う。「スキルを作成して」「スキルを追加して」「新しいスキルを作って」等の依頼が対象。
---

# Create Skill

## 概要

APプロジェクト用のローカルスキルを作成する。Claude Code用の `.claude/skills/<skill-name>/SKILL.md` を正本とし、Codex用の `.agents/skills/<skill-name>/SKILL.md` に同じ内容を反映する。

## 手順

1. 既存スキル一覧を確認し、名前の重複を避ける。
2. スキル名は kebab-case にする。
3. `SKILL.md` には必ず YAML frontmatter の `name` と `description` を入れる。
4. 本文は短く、APプロジェクトで必要な手順だけを書く。
5. `.claude/skills` と `.agents/skills` の両方に同一内容で配置する。
6. 作成後、追加したパスを報告する。

## 注意事項

- `.codex/skills` は使わない。
- APの扱いでは、誇大な販売表現、収益保証に見える表現、強い勧誘表現を避ける。
- 事業・法務・個人情報に関わる未確定事項は断定せず、必要なら `REVIEW_ITEMS.md` に整理する。

