# learn-haskell-with-aoj

AOJ の Haskell 練習用プロジェクト

## 必要なもの

- GHC 9.8.4 (HLS対応バージョン)
- Stack 3.3+
- ghcup (Haskell ツールチェーン管理)

## セットアップ

### 1. ghcup のインストール

```bash
# macOS / Linux
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
```

### 2. GHC と HLS のインストール

```bash
# GHC 9.8.4 をインストール・設定
ghcup install ghc 9.8.4
ghcup set ghc 9.8.4

# HLS (Haskell Language Server) をインストール
ghcup install hls

# 確認
ghc --version  # 9.8.4 が表示されればOK
```

### 3. プロジェクトのビルド

```bash
# 依存関係のインストールとビルド
stack build
```

### 補足: GHC バージョンについて

このプロジェクトは `lts-23.0` (GHC 9.8.4) を使用している。
HLS は特定の GHC バージョンにしか対応していないため、`stack.yaml` の resolver と ghcup の GHC バージョンを揃える必要がある。

| resolver | GHC    | HLS対応            |
| -------- | ------ | ------------------ |
| lts-23.x | 9.8.4  | o                  |
| lts-24.x | 9.10.x | x (9.10.1のみ対応) |

## 使い方

```bash
# 実行
stack exec aoj

# テスト
stack test

# REPL で試す
stack ghci
```

## プロジェクト構造

```
├── app/
│   └── Main.hs                  # エントリーポイント
├── src/
│   └── aoj/                     # AOJ 問題別ディレクトリ
│       ├── 001_helloworld/
│       │   └── Main.hs
│       ├── 002_itp1_1_b/
│       │   └── Main.hs
│       └── ...
├── test/
│   └── Spec.hs                  # テストスイート
├── learn-haskell-with-aoj.cabal
└── stack.yaml
```

## **1日1問 + たまに復習**

# AOJ × Haskell 30日カリキュラム

目的：

- アルゴリズムより **Haskellの言語仕様理解**
- AOJをHaskellで解くための土台作り

ルール：

- 1日1問
- 正解より「型・式・再帰・map/foldの理解」を優先
- for文禁止（頭の中でも）

---

## Week 1：値・式・I/O（基礎）

### Day 1

- ITP1_1_A – Hello World  
  https://onlinejudge.u-aizu.ac.jp/problems/ITP1_1_A  
  **学ぶこと**: `main`, `putStrLn`

### Day 2

- ITP1_1_B – X Cubic  
  https://onlinejudge.u-aizu.ac.jp/problems/ITP1_1_B  
  **学ぶこと**: 関数定義・型注釈

### Day 3

- ITP1_1_C – Rectangle  
  https://onlinejudge.u-aizu.ac.jp/problems/ITP1_1_C  
  **学ぶこと**: 複数引数・`let`

### Day 4

- ITP1_1_D – Watch  
  https://onlinejudge.u-aizu.ac.jp/problems/ITP1_1_D  
  **学ぶこと**: `div`, `mod`, タプル

### Day 5

- ITP1_2_A – Small, Large, or Equal  
  https://onlinejudge.u-aizu.ac.jp/problems/ITP1_2_A  
  **学ぶこと**: `if` は式

### Day 6

- ITP1_2_B – Range  
  https://onlinejudge.u-aizu.ac.jp/problems/ITP1_2_B  
  **学ぶこと**: 論理演算子・ガード

### Day 7

- ITP1_2_C – Sorting Three Numbers  
  https://onlinejudge.u-aizu.ac.jp/problems/ITP1_2_C  
  **学ぶこと**: `sort`, リスト操作

---

## Week 2：再帰・リスト基礎

### Day 8

- ITP1_3_A – Print Many Hello World  
  https://onlinejudge.u-aizu.ac.jp/problems/ITP1_3_A  
  **学ぶこと**: 再帰（ループ禁止）

### Day 9

- ITP1_3_B – Print Test Cases  
  https://onlinejudge.u-aizu.ac.jp/problems/ITP1_3_B  
  **学ぶこと**: 終了条件を持つ再帰

### Day 10

- ITP1_3_C – Swapping Two Numbers  
  https://onlinejudge.u-aizu.ac.jp/problems/ITP1_3_C  
  **学ぶこと**: パターンマッチ

### Day 11

- ITP1_4_A – A / B Problem  
  https://onlinejudge.u-aizu.ac.jp/problems/ITP1_4_A  
  **学ぶこと**: タプルで複数値返却

### Day 12

- ITP1_4_B – Circle  
  https://onlinejudge.u-aizu.ac.jp/problems/ITP1_4_B  
  **学ぶこと**: `Double`, `pi`

### Day 13

- ITP1_4_C – Simple Calculator  
  https://onlinejudge.u-aizu.ac.jp/problems/ITP1_4_C  
  **学ぶこと**: `case` 式

### Day 14

- ITP1_5_A – Print a Rectangle  
  https://onlinejudge.u-aizu.ac.jp/problems/ITP1_5_A  
  **学ぶこと**: `replicate`, `map`

---

## Week 3：高階関数・fold

### Day 15

- ITP1_5_B – Print a Frame  
  https://onlinejudge.u-aizu.ac.jp/problems/ITP1_5_B  
  **学ぶこと**: 文字列 = `[Char]`

### Day 16

- ITP1_5_C – Print a Chessboard  
  https://onlinejudge.u-aizu.ac.jp/problems/ITP1_5_C  
  **学ぶこと**: `cycle`, 無限リスト

### Day 17

- ITP1_5_D – Structured Programming  
  https://onlinejudge.u-aizu.ac.jp/problems/ITP1_5_D  
  **学ぶこと**: `filter`

### Day 18

- ITP1_6_A – Reverse  
  https://onlinejudge.u-aizu.ac.jp/problems/ITP1_6_A  
  **学ぶこと**: `reverse`, リスト思考

### Day 19

- ITP1_6_B – Finding Missing Cards  
  https://onlinejudge.u-aizu.ac.jp/problems/ITP1_6_B  
  **学ぶこと**: `elem`, 集合的発想

### Day 20

- ITP1_6_C – Official House  
  https://onlinejudge.u-aizu.ac.jp/problems/ITP1_6_C  
  **学ぶこと**: `foldl`, 多次元データ

### Day 21

- ITP1_6_D – Matrix Vector Multiplication  
  https://onlinejudge.u-aizu.ac.jp/problems/ITP1_6_D  
  **学ぶこと**: `zipWith`, 内積

---

## Week 4：中級入口

### Day 22

- ITP1_7_A – Grading  
  https://onlinejudge.u-aizu.ac.jp/problems/ITP1_7_A  
  **学ぶこと**: ガード式

### Day 23

- ITP1_7_B – How Many Ways?  
  https://onlinejudge.u-aizu.ac.jp/problems/ITP1_7_B  
  **学ぶこと**: リスト内包表記

### Day 24

- ITP1_7_C – Spreadsheet  
  https://onlinejudge.u-aizu.ac.jp/problems/ITP1_7_C  
  **学ぶこと**: `transpose`, 行列処理

### Day 25

- ITP1_8_A – Toggling Cases  
  https://onlinejudge.u-aizu.ac.jp/problems/ITP1_8_A  
  **学ぶこと**: `Data.Char`, `map`

### Day 26

- ITP1_8_B – Sum of Numbers  
  https://onlinejudge.u-aizu.ac.jp/problems/ITP1_8_B  
  **学ぶこと**: `Maybe`, 安全な `read`

### Day 27

- ITP1_8_C – Counting Characters  
  https://onlinejudge.u-aizu.ac.jp/problems/ITP1_8_C  
  **学ぶこと**: `foldl`, 集計

### Day 28

- ITP1_9_A – Finding a Word  
  https://onlinejudge.u-aizu.ac.jp/problems/ITP1_9_A  
  **学ぶこと**: `words`, `filter`

### Day 29

- ITP1_9_B – Shuffle  
  https://onlinejudge.u-aizu.ac.jp/problems/ITP1_9_B  
  **学ぶこと**: 再帰・リスト分割

### Day 30

- ITP1_9_C – Card Game  
  https://onlinejudge.u-aizu.ac.jp/problems/ITP1_9_C  
  **学ぶこと**: 比較・型で考えるロジック
