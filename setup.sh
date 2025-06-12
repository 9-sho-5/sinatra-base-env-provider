#!/bin/bash

echo "📦 Sinatraテンプレートをセットアップします。"
echo "📝 任意のプロジェクトフォルダ名を入力してください（例: my-app）:"
read -p "📁 フォルダ名: " folder

if [ -z "$folder" ]; then
  echo "❌ フォルダ名が空です。処理を中断します。"
  exit 1
fi

echo "🚀 クローン中: https://github.com/9-sho-5/sinatra-base-env → $folder"
git clone https://github.com/9-sho-5/sinatra-base-env.git "$folder"

cd "$folder" || exit

echo "🧹 Git設定を初期化中..."
rm -rf .git
git init
git add .
git commit -m 'Initial commit from sinatra-base-env'

echo ""
echo "🔗 新しいGitリモートURLを追加しますか？（空欄でスキップ）"
read -p "🌐 リモートURL（例: git@github.com:you/your-repo.git）: " remote

if [ -n "$remote" ]; then
  git remote add origin "$remote"
  echo "✅ origin に $remote を追加しました。"
else
  echo "⏭ リモートURLは設定されませんでした。"
fi

echo "🎉 セットアップ完了！"
