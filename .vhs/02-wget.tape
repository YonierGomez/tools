Output assets/02-wget.gif

Set Theme "Catppuccin Mocha"
Set FontSize 14
Set Width 900
Set Height 420
Set Padding 20
Set TypingSpeed 55ms

Type "# wget — File downloads"
Enter
Sleep 500ms

Type "docker run --rm neytor/tools wget -q --spider --server-response https://google.com 2>&1 | head -8"
Enter
Sleep 6s

Type "docker run --rm -v /tmp:/tmp neytor/tools wget -q -O /tmp/alpine-release https://dl-cdn.alpinelinux.org/alpine/latest-stable/releases/x86_64/latest-releases.yaml && head -5 /tmp/alpine-release"
Enter
Sleep 8s
