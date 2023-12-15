ask_for_scope() {
    read -p "Do you want to add a scope? (y/N) - [press enter to skip]: " add_scope
    if [[ $add_scope =~ ^[Yy]$ ]]; then
        read -p "Enter the scope: " SCOPE
        SCOPE="($SCOPE)"
    else
        SCOPE=""
    fi
}