# Run from the site directory.
# Requires Git installed and authenticated with GitHub.

$RepoUrl = Read-Host 'Enter GitHub repo URL (e.g. https://github.com/<user>/<repo>.git)'
if (-not $RepoUrl) { Write-Error 'Repo URL required.'; exit 1 }

Write-Host "Initializing local repo..."
git init | Out-Null
write-host "Adding files..."
git add .

$CommitMessage = 'Publish Sibla site'
git commit -m "$CommitMessage" -q

$Remote = 'origin'
$existing = git remote | Select-String -Pattern "^$Remote$" -Quiet
if (-not $existing) { git remote add $Remote $RepoUrl }

write-host "Pushing to GitHub..."
git push -u $Remote main --force

write-host "Done. Then configure GitHub Pages from repo settings (branch: main, folder: /)."
