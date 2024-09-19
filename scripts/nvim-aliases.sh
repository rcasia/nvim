#!/bin/bash

# Define the aliases you want to add
ALIASES=(
	"alias db='nvim -c \"DBUI\"'"
)

# Function to add alias to a specific file
add_aliases_to_file() {
  local file=$1
  echo "Adding aliases to $file..."
  
  for alias in "${ALIASES[@]}"; do
    # Print out the alias
    echo   k 

    # Check if alias already exists
    if ! grep -Fxq "$alias" "$file"; then
      echo "$alias" >> "$file"
    fi
  done

  # Source the file to apply changes immediately if it's bash
  if [[ "$file" == *".bashrc" ]]; then
    source "$file"
  fi

  echo "Aliases added to $file."
}

# Add aliases to .bashrc if bash
if [ -f ~/.bashrc ]; then
  add_aliases_to_file ~/.bashrc
fi

# Add aliases to .zshrc if zsh
if [ -f ~/.zshrc ]; then
  if [ "$SHELL" = "/bin/zsh" ] || [ "$SHELL" = "/usr/bin/zsh" ]; then
    add_aliases_to_file ~/.zshrc
    echo "source ~/.zshrc" | zsh
  else
    echo "Please run this script using zsh to add aliases to .zshrc"
  fi
fi

echo "Alias configuration completed."
