@_default:
  just --list --unsorted

# Run all recipes
run-all: check-spelling build-website

# Installs the pre-commit hooks, if not done already
install-pre-commit:
  uvx pre-commit install

# Check spelling
check-spelling:
  uvx typos

# Build Quarto website
build-website:
  quarto render
