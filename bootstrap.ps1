Write-Host "====================================="
Write-Host "        DEVX BOOTSTRAP"
Write-Host "====================================="

$folders = @(
    "lib/core",
    "lib/commands",
    "lib/generators",
    "lib/templates",
    "lib/models",
    "lib/services",
    "lib/utils",
    "lib/config",
    "templates",
    "assets"
)

foreach ($folder in $folders) {
    New-Item -ItemType Directory -Force -Path $folder | Out-Null
    Write-Host "[OK] $folder"
}

Write-Host ""
Write-Host "Bootstrap Complete."
Write-Host ""
Write-Host "[1/4] Getting Packages..."
dart pub get

Write-Host ""
Write-Host "[2/4] Activating DevX..."
dart pub global activate --source path .

Write-Host ""
Write-Host "[3/4] Running Doctor..."
dart pub global run devx doctor

Write-Host ""
Write-Host "[4/4] Bootstrap Finished Successfully."