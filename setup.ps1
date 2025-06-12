Write-Host "📦 Sinatraテンプレートをセットアップします。"

$folder = Read-Host "📝 任意のプロジェクトフォルダ名を入力してください（例: my-app）"
if ([string]::IsNullOrWhiteSpace($folder)) {
    Write-Host "❌ フォルダ名が空です。処理を中断します。"
    exit
}

Write-Host "🚀 クローン中: https://github.com/9-sho-5/sinatra-base-env → $folder"
git clone https://github.com/9-sho-5/sinatra-base-env.git $folder

Set-Location $folder

Write-Host "🧹 Git設定を初期化中..."
Remove-Item -Recurse -Force .git
git init
git add .
git commit -m "Initial commit from sinatra-base-env"

$remote = Read-Host "🌐 新しいGitリモートURLを追加しますか？（空欄でスキップ）"
if (-not [string]::IsNullOrWhiteSpace($remote)) {
    git remote add origin $remote
    Write-Host "✅ origin に $remote を追加しました。"
} else {
    Write-Host "⏭ リモートURLは設定されませんでした。"
}

Write-Host "🎉 セットアップ完了！"
