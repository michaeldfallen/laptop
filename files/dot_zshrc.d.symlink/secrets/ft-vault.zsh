export VAULT_ADDR="https://vault.in.ft.com"
export VAULT_AUTH_GITHUB_TOKEN="45cb9c1ff337d66f9b429c23fc2646842234ad55"

# Prevent `vault write` commands from being stored in history.
function vault () {
  command vault "$@"
  if [[ $1 == write ]]; then history -d $((HISTCMD-1)) &> /dev/null; fi
}
