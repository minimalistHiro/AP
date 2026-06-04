---
name: todo-add
description: APプロジェクトでTODO項目の追加を依頼されたときに、TODO.mdへ重複なく追加するために使う。「TODOに追加して」「タスクを追加して」「これをTODOに入れて」等の依頼が対象。
---

# TODO Add

## 手順

1. `TODO.md` と必要に応じて `REVIEW_ITEMS.md` を読む。
2. 既存TODO・未決事項との重複を確認する。
3. 「実装すると決まったもの」だけを `TODO.md` に追加する。
4. まだ方針が決まっていないものは `REVIEW_ITEMS.md` に入れる提案をする。
5. ID運用がある場合は既存最大番号の次を使う。まだID体系が空なら、セクションとID体系を先に整える。

## 推奨セクション

- B: バグ修正
- C: UI/UX改善
- D: データ・AI支援機能
- E: Firestore / API / Cloud Functions
- F: その他

## 注意事項

- APの勧誘・収益・健康/美容表現に関するタスクは、必要に応じて `REVIEW_ITEMS.md` で先に検討する。

