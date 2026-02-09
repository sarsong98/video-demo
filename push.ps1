$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

git add .
git diff --cached --quiet
if ($LASTEXITCODE -eq 0) {
    Write-Host "No changes to commit"
    exit
}

git commit -m "Update - $timestamp"
git push
