#!/bin/bash

#-------------------#
# C++ PROJECT MAKER #
#-------------------#

TEMPLATE_DIR="_cpp_template"
TODAY=$(date +%F)

echo "--- C++ PROJECT MAKER V2.0 ---"

# Ask for project name
while true; do
    read -p "Enter a name for your project: " PROJECT_NAME
    # Validate input
    if [[ -z "$PROJECT_NAME" ]]; then
        echo "Project name cannot be empty. Try again."
    elif [[ "$PROJECT_NAME" =~ [^a-zA-Z0-9_-] ]]; then
        echo "Project name can only contain letters, numbers, underscores, and hyphens."
    else
        break
    fi
done

# Generate new folder name
NEW_PROJECT="${TODAY}_${PROJECT_NAME}"

# Check if folder already exists
if [[ -d "$NEW_PROJECT" ]]; then
    echo "Error: Project '$NEW_PROJECT' already exists."
    exit 1
fi

# Copy template
cp -r "$TEMPLATE_DIR" "$NEW_PROJECT"
echo "Template successfully copied to '$NEW_PROJECT'."

# Optional: create build folder
mkdir -p "$NEW_PROJECT/build"
echo "Build directory created."

# Optional: create README.md
if [[ ! -f "$NEW_PROJECT/README.md" ]]; then
    echo "# $PROJECT_NAME" > "$NEW_PROJECT/README.md"
fi

# Ask to open in editor
read -p "Do you want to open the project in VS Code? (Y/N): " OPEN_CHOICE
case "$OPEN_CHOICE" in
    [Yy]* ) 
        command -v code &>/dev/null && code "$NEW_PROJECT" || echo "VS Code not found."
        ;;
    [Nn]* ) echo "Project not opened." ;;
    * ) echo "Invalid choice. Project not opened." ;;
esac

echo "Project setup complete! ✅"

