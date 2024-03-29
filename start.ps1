$FolderPath = "C:\Users\Omar Hany Kasban\Documents\GitHub\WebSite2"
$HugoCommand = "hugo server -FD"

$ProcessInfo = New-Object System.Diagnostics.ProcessStartInfo
$ProcessInfo.FileName = "cmd.exe"
$ProcessInfo.Arguments = "/c cd `"$FolderPath`" && $HugoCommand"
$ProcessInfo.WindowStyle = "Hidden"

$Process = [System.Diagnostics.Process]::Start($ProcessInfo)