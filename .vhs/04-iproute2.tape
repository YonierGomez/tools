Output assets/04-iproute2.gif

Set Theme "Catppuccin Mocha"
Set FontSize 14
Set Width 900
Set Height 480
Set Padding 20
Set TypingSpeed 55ms

Type "# iproute2 — Network tooling (ss, ip)"
Enter
Sleep 500ms

Type "docker run --rm --net=host neytor/tools ip addr show | head -14"
Enter
Sleep 5s

Type "docker run --rm --net=host neytor/tools ss -tnlp"
Enter
Sleep 5s

Type "docker run --rm --net=host neytor/tools ip route show"
Enter
Sleep 5s
