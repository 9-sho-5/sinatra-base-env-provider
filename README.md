# 🚀 Sinatra Base Env Setup

このプロジェクトは、[9-sho-5/sinatra-base-env](https://github.com/9-sho-5/sinatra-base-env) をベースに、任意のフォルダ名でクローンし、Git を初期化する作業を **対話的に自動化**するスクリプトを提供します。

---

## 🔧 前提条件

- `git` が使用できること
- 下記いずれかの環境で動作確認済み：

  - ✅ macOS / Linux（bash）
  - ✅ Windows（PowerShell または Git Bash）

---

## 🛠 使用方法（環境別に選択）

### ✅ macOS / Linux / WSL

#### 方法 1: Task コマンドを使う（おすすめ）

Go Task がインストールされていれば以下で完了：

```bash
task setup
```

> ❗ `task` が入っていない場合は、以下でインストール可能：

```bash
curl -sL https://taskfile.dev/install.sh | sh
```

#### 方法 2: シェルスクリプトを直接実行

```bash
bash setup.sh
```

---

### ✅ Windows

#### 方法 1: PowerShell を使う

1. `setup.ps1` を右クリックして「PowerShell で実行」
2. またはターミナルで以下を入力：

```powershell
Set-ExecutionPolicy RemoteSigned -Scope Process
.\setup.ps1
```

#### 方法 2: Git Bash + Task

```bash
curl -sL https://taskfile.dev/install.sh | sh
mkdir -p ~/bin
mv ./bin/task ~/bin/task
echo 'export PATH="$HOME/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
task setup
```

---

## 📋 セットアップ手順（共通）

1. 任意のプロジェクト名（フォルダ名）を入力
2. `sinatra-base-env` をクローンしてそのフォルダに展開
3. `.git` を削除して Git を初期化
4. 新しい Git リモート URL を追加（任意）

---

## 🧪 実行例

```
📦 Sinatraテンプレートをセットアップします。
📝 任意のプロジェクトフォルダ名を入力してください（例: my-app）:
📁 フォルダ名: my-sinatra-app

🚀 クローン中: https://github.com/9-sho-5/sinatra-base-env → my-sinatra-app
🧹 Git設定を初期化中...

🔗 新しいGitリモートURLを追加しますか？（空欄でスキップ）
🌐 リモートURL: git@github.com:you/your-new-repo.git
✅ origin に git@github.com:you/your-new-repo.git を追加しました。

🎉 セットアップ完了！
```

---

## 👤 作者

- 📛 Author: 9-sho-5
