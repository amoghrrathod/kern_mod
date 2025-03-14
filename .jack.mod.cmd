savedcmd_jack.mod := printf '%s\n'   jack.o | awk '!x[$$0]++ { print("./"$$0) }' > jack.mod
