get_commit_type() {
    # Create the commit types array
    local commit_types=("🌟 feat: New feature" 
                        "🐛 fix: Bug fix"
                        "📚 docs: Documentation changes"
                        "🪄 style: Code style changes"
                        "🚀 perf: Performance improvements"
                        "✅ test: Adding missing tests"
                        "🛠️ refactor: Code refactoring"
                        "📦 chore: Changes to build process"
                        "🔧 build: Affecting build system"
                        "🎢 ci: CI configuration changes"
                        "🛟 deps: Update/add dependencies")

        # Prompt the user to select a commit type
        TYPE=$(printf '%s\n' "${commit_types[@]}" | fzf --height 50% --reverse \
        --color "fg:#ffffff,hl:#af5fff" \
        --color "fg+:#c061ff,hl+:#c061ff" \
        --color "info:#af5fff,prompt:#af5fff,pointer:#af5fff" \
        --no-info)
    if [ -z "$TYPE" ]; then
        echo "Commit type selection cancelled."
        exit 1
    fi

    # Extract the commit message emoji and type
    EMOJI=$(echo $TYPE | awk '{print $1}')
    TYPE=$(echo $TYPE | awk '{print $2}' | sed 's/:$//')
}


