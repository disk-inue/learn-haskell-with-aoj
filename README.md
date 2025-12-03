# LeetCode 30 Days Challenge

## Setup

```bash
# uvインストール（まだなら）
curl -LsSf https://astral.sh/uv/install.sh | sh

# 依存関係インストール
uv sync
```

## Usage

```bash
# テスト実行
uv run pytest

# リンター
uv run ruff check .

# 型チェック
uv run mypy .

# スクリプト実行
uv run python run.py day01_two_sum.py
```

# 🧠 Python 実装力強化 30日チャレンジ（LeetCode）

**1日1問 + たまに復習**  
毎日 60〜90 分で終わる分量

---

## Day 1〜5：配列 & 文字列（基礎高速化）

### Day 1：Two Sum / Reverse String

- https://leetcode.com/problems/two-sum/
- https://leetcode.com/problems/reverse-string/

### Day 2：Sliding Window（長さ固定）

- https://leetcode.com/problems/maximum-average-subarray-i/

### Day 3：Sliding Window（可変長）

- https://leetcode.com/problems/longest-substring-without-repeating-characters/

### Day 4：Prefix Sum（累積和）

- https://leetcode.com/problems/subarray-sum-equals-k/

### Day 5：HashMap応用

- https://leetcode.com/problems/group-anagrams/

---

## Day 6〜10：二分探索 & ソート

### Day 6：Binary Search

- https://leetcode.com/problems/binary-search/

### Day 7：条件付きBinary Search

- https://leetcode.com/problems/search-in-rotated-sorted-array/

### Day 8：最小値を探す二分探索

- https://leetcode.com/problems/find-minimum-in-rotated-sorted-array/

### Day 9：座標圧縮系（Heap/Sort）

- https://leetcode.com/problems/kth-largest-element-in-an-array/

### Day 10：ソート＋貪欲

- https://leetcode.com/problems/meeting-rooms-ii/

---

## Day 11〜15：DFS / BFS（探索力強化）

### Day 11：Grid DFS

- https://leetcode.com/problems/number-of-islands/

### Day 12：Grid BFS

- https://leetcode.com/problems/01-matrix/

### Day 13：Tree DFS

- https://leetcode.com/problems/binary-tree-inorder-traversal/

### Day 14：Backtracking基礎

- https://leetcode.com/problems/subsets/

### Day 15：Permutation

- https://leetcode.com/problems/permutations/

---

## Day 16〜20：動的計画法（DP）

### Day 16：1D DP（基本）

- https://leetcode.com/problems/climbing-stairs/

### Day 17：1D DP応用

- https://leetcode.com/problems/house-robber/

### Day 18：2D DP

- https://leetcode.com/problems/unique-paths/

### Day 19：ナップサック系

- https://leetcode.com/problems/partition-equal-subset-sum/

### Day 20：DP復習（以下から1問）

- https://leetcode.com/problems/coin-change/
- https://leetcode.com/problems/min-cost-climbing-stairs/
- https://leetcode.com/problems/triangle/

---

## Day 21〜23：貪欲法（Greedy）

### Day 21：区間スケジューリング

- https://leetcode.com/problems/non-overlapping-intervals/

### Day 22：頻度最適化

- https://leetcode.com/problems/task-scheduler/

### Day 23：ソート＋貪欲（定番）

- https://leetcode.com/problems/merge-intervals/

---

## Day 24〜26：シミュレーション（実務寄り）

### Day 24：Stack/Queueシミュレーション

- https://leetcode.com/problems/valid-parentheses/

### Day 25：LRU Cache

- https://leetcode.com/problems/lru-cache/

### Day 26：イベントシミュレーション

- https://leetcode.com/problems/reorganize-string/

---

## Day 27〜28：Tree / Graph 中級

### Day 27：LCA（木の共通祖先）

- https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-tree/

### Day 28：Dijkstra（グラフ最短経路）

- https://leetcode.com/problems/network-delay-time/

---

## Day 29：総合問題

### Graph + BFS + サイクル検出

- https://leetcode.com/problems/course-schedule/

---

## Day 30：最終日（リファクタ & 総括）

- 過去30日の中から“汚い”と感じた2問をリファクタ
- GitHubに残す
- READMEに30日の振り返りを書く
