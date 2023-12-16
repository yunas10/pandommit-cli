print_error() {
    local red=$(tput setaf 1)
    local reset=$(tput sgr0)
    echo -e "\r${red}Error: $1${reset}"
}