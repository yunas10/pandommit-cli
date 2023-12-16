ask_for_issue() {
    read -p "Does this commit resolve an issue? (y/N) - [press enter to skip]: " resolve_issue
    if [[ $resolve_issue =~ ^[Yy]$ ]]; then
        read -p "Enter the issue number (e.g., 42): " ISSUE_NUMBER
        ISSUE_REF=" - (#${ISSUE_NUMBER})"
    else
        ISSUE_REF=""
    fi
}