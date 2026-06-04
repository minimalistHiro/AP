---
name: todo-complete
description: APプロジェクトでTODO項目を完了・廃止扱いにする依頼が来たときに、TODO.md・QA_CHECKLIST.md・関連Markdownを整理するために使う。「このTODOを完了にして」「廃止にして」等の依頼が対象。
---

# TODO Complete

## 手順

1. `TODO.md` から対象項目を特定する。
2. 完了または廃止の理由を確認する。
3. 完了済みの管理ファイルがある場合はそちらへ移動する。まだない場合は、`TODO.md` 内の完了済みセクションを使うか、作成を提案する。
4. ユーザーが操作して確認すべき変更なら `QA_CHECKLIST.md` へテスト観点を追加する。
5. 仕様変更を伴う場合は、`docs/FIRESTORE.md`、`docs/APP_SCREENS.md`、`docs/AP_UI_TEXT_RULES.md` など関連Markdownへ反映する。

## 注意事項

- 実装未完了のものを完了扱いにしない。
- 実機確認はTODO完了とは別にQAで管理する。

