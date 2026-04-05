Output assets/06-kubectl.gif

Set Theme "Catppuccin Mocha"
Set FontSize 14
Set Width 900
Set Height 420
Set Padding 20
Set TypingSpeed 55ms

Type "# kubectl — Kubernetes cluster management"
Enter
Sleep 500ms

Type "docker run --rm neytor/tools kubectl version --client"
Enter
Sleep 4s

Type "docker run --rm -v ~/.kube:/root/.kube neytor/tools kubectl get nodes 2>&1"
Enter
Sleep 6s

Type "docker run --rm neytor/tools kubectl api-resources --namespaced=true 2>/dev/null | head -12"
Enter
Sleep 6s
