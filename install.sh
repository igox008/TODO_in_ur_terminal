#!/bin/bash


TODO_FILE="$HOME/.TODO"
touch $TODO_FILE
chmod a=rw $TODO_FILE
echo ".TODO file created in $PWD"

if [ -f "$HOME/.zshrc" ]; then
    PROFILE_FILE="$HOME/.zshrc"
elif [ -f "$HOME/.bashrc" ]; then
    PROFILE_FILE="$HOME/.bashrc"
elif [ -f "$HOME/.config/fish/config.fish" ]; then
    PROFILE_FILE="$HOME/.config/fish/config.fish"
else
    echo "No supported shell profile file found. Please add the alias manually."
    exit 1
fi

ALIAS_NAME="TODO"
ALIAS_COMMAND="$PWD/todo"

if grep -q "^alias $ALIAS_NAME=" "$PROFILE_FILE"; then
    echo "Alias '$ALIAS_NAME' already exists in $PROFILE_FILE."
else
    echo "alias $ALIAS_NAME='$ALIAS_COMMAND'" >> "$PROFILE_FILE"
    echo "\"$PWD/todo\" show" >> "$PROFILE_FILE"
    echo "Alias '$ALIAS_NAME' added to $PROFILE_FILE."
fi

if [ -n "$ZSH_VERSION" ]; then
    source "$HOME/.zshrc"
elif [ -n "$BASH_VERSION" ]; then
    source "$HOME/.bashrc"
fi

echo "you can run TODO now in your terminal. Have a nice day!!"
