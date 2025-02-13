function Install-Komac {
    if (-not (Test-Path ".\komac.exe")) {
        #$latestKomacRelease = (Invoke-RestMethod -Uri "https://api.github.com/repos/russellbanks/Komac/releases/latest").assets | Where-Object { $_.browser_download_url.EndsWith("x86_64-pc-windows-msvc.exe") } | Select-Object -First 1 -ExpandProperty browser_download_url
        #nightly
        $latestKomacRelease = (Invoke-RestMethod -Uri "https://api.github.com/repos/russellbanks/Komac/releases/nightly").assets | Where-Object { $_.browser_download_url.EndsWith("komac-nightly-x86_64-pc-windows-msvc.exe") } | Select-Object -First 1 -ExpandProperty browser_download_url
        Invoke-WebRequest  -Uri $latestKomacRelease -OutFile komac.exe
    }

    if (Test-Path ".\komac.exe") {
        Write-Host "Komac successfully downloaded"
    }
    else {
        Write-Error "Komac not downloaded"
        exit 1
    }
}
