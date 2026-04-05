Output assets/08-zip-unzip.gif

Set Theme "Catppuccin Mocha"
Set FontSize 14
Set Width 900
Set Height 480
Set Padding 20
Set TypingSpeed 55ms

Type "# zip / unzip — Archive handling"
Enter
Sleep 500ms

Type "docker run --rm -v /tmp/demo:/work neytor/tools sh -c 'echo hello > /work/file1.txt && echo world > /work/file2.txt && zip /work/archive.zip /work/*.txt && echo Created: && ls -lh /work/'"
Enter
Sleep 6s

Type "docker run --rm -v /tmp/demo:/work neytor/tools sh -c 'unzip -l /work/archive.zip'"
Enter
Sleep 5s

Type "rm -rf /tmp/demo"
Enter
Sleep 1s
