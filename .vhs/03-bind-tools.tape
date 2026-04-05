Output assets/03-bind-tools.gif

Set Theme "Catppuccin Mocha"
Set FontSize 14
Set Width 900
Set Height 480
Set Padding 20
Set TypingSpeed 55ms

Type "# bind-tools — DNS diagnostics (dig, nslookup, host)"
Enter
Sleep 500ms

Type "docker run --rm neytor/tools dig +short google.com"
Enter
Sleep 5s

Type "docker run --rm neytor/tools nslookup github.com 8.8.8.8 | head -8"
Enter
Sleep 5s

Type "docker run --rm neytor/tools host -t MX gmail.com | head -5"
Enter
Sleep 5s
