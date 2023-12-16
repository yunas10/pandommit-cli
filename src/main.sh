#!/bin/bash
source "$(dirname "$0")/commit.sh"
source "$(dirname "$0")/scope.sh"
source "$(dirname "$0")/issue.sh"

main() {
    get_commit_type
    ask_for_scope
    while true; do
        read -p "Enter your commit message: " MESSAGE
        if [[ -z "$MESSAGE" ]]; then
            echo "A commit message is required. Please enter a message."
        else
            MESSAGE=$(echo "$MESSAGE" | tr '[:upper:]' '[:lower:]')
            break
        fi
    done

    ask_for_issue
    COMMIT_MESSAGE="$EMOJI$TYPE$SCOPE: $MESSAGE$ISSUE_REF"
    echo "Your commit message: $COMMIT_MESSAGE"
    git commit -m "$COMMIT_MESSAGE"
}

main