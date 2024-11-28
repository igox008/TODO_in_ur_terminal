# TODO List Manager

## Description

A simple command-line TODO list management application. This tool allows users to create, view, and delete TODO items from a persistent file.

## Prerequisites

- Bash shell (for setup script)

## Installation

1. clone the repo and enter the directory
```bash
git clone https://github.com/igox008/TODO_in_ur_terminal.git && cd TODO_in_ur_terminal
```

2. Run the setup script:
```bash
chmod +x install.sh && ./install.sh
```

The setup script will:
- Create a `.TODO` file in your home directory
- Set appropriate file permissions
- Add an alias to your shell profile (`.zshrc`, `.bashrc`, or `.config/fish/config.fish`)
- Automatically show your TODO list on shell startup

## Usage

After installation, you can use the TODO command from anywhere in your terminal:

### Show TODO List
```bash
TODO show
```

### Add a New TODO Item
```bash
TODO add "Your TODO item description"
```

### Delete a TODO Item
```bash
TODO del <index>
```

## Features

- every time you open a new terminal it reminds you of your to-do list
- Add new TODO items
- View existing TODO list
- Delete TODO items by index
- Persistent storage in a file
- Color-coded console output
- Error handling for invalid inputs
- One-time setup with automatic alias creation

## Example

```bash
# Add a new TODO
$ TODO add "Buy groceries"

# Show TODO list
$ TODO show
1: Buy groceries

# Delete a TODO item
$ TODO del 1
```

## Troubleshooting

- If the alias is not working, restart your terminal or source your profile file
- Ensure the setup script has been run with the correct permissions

## Notes

- TODO items are automatically indexed
- The file is automatically updated when items are added or deleted
- Duplicate indices are not allowed

## License

This project is licensed under the MIT License.

## Author

IGOX008
