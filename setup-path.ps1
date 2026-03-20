$userPath = [Environment]::GetEnvironmentVariable("Path", "User")

if ($userPath -notmatch "C:\\Tectonic") {
    [Environment]::SetEnvironmentVariable("Path", $userPath + ";C:\Tectonic", "User")
    Write-Host "✅ Tectonic injetado no PATH com sucesso!" -ForegroundColor Green
    Write-Host "Reinicie o VS Code para aplicar as mudanças." -ForegroundColor Cyan
} else {
    Write-Host "⚠️ O Tectonic já estava configurado no PATH." -ForegroundColor Yellow
}
