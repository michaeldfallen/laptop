export AWS_PROFILE='default'
function aws-profile() {
    if [ -z "$1" ]; then
        echo "$AWS_PROFILE"
    elif [ "$1" = "--list" ]; then
        echo "$(cat ~/.aws/config | grep '\[profile ' | sed -e 's/\[//g' -e 's/\]//g' -e 's/profile //g')"
    elif [ "$1" = "--complete" ]; then
        local -a subcmds
        subcmds='(--list\:"list all profiles" --current\:"output current profile")'
        profiles=($(cat ~/.aws/config | grep '\[profile ' | sed -e 's/\[//g' -e 's/\]//g' -e 's/profile //g'))
        
        _alternative "commands:commands:($subcmds)" "arguments:profiles:($profiles)"
        
    else
        AWS_PROFILE="$1"
        export AWS_PROFILE
    fi
}