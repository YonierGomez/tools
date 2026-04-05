Output assets/01-curl.gif

Set Theme "Catppuccin Mocha"
Set FontSize 14
Set Width 900
Set Height 420
Set Padding 20
Set TypingSpeed 55ms

Type "# curl — HTTP requests & endpoint validation"
Enter
Sleep 500ms

Type "docker run --rm neytor/tools curl -s -o /dev/null -w 'Status: %{http_code}  Time: %{time_total}s\n' https://google.com"
Enter
Sleep 6s

Type "docker run --rm neytor/tools curl -sI https://github.com | head -6"
Enter
Sleep 6s

Type "docker run --rm neytor/tools curl -s https://ifconfig.me/ip"
Enter
Sleep 5s
