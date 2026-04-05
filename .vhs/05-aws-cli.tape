Output assets/05-aws-cli.gif

Set Theme "Catppuccin Mocha"
Set FontSize 14
Set Width 900
Set Height 420
Set Padding 20
Set TypingSpeed 55ms

Type "# aws-cli — AWS CLI v2 operations"
Enter
Sleep 500ms

Type "docker run --rm neytor/tools aws --version"
Enter
Sleep 4s

Type "docker run --rm neytor/tools aws sts get-caller-identity --no-sign-request 2>&1 | head -6"
Enter
Sleep 5s

Type "docker run --rm neytor/tools aws help | head -20"
Enter
Sleep 5s
