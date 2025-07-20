#!/bin/bash

# validate_setup.sh - Validate that the project setup is working
echo "=== Project Setup Validation ==="

# Check if required files exist
echo "Checking required files..."
files_to_check=("requirements.txt" "environment.yml" "Dockerfile" "docker-compose.yml" "run_all.sh" "notebooks/data_mining.ipynb" "data/reduced_retail.csv")

for file in "${files_to_check[@]}"; do
    if [ -f "$file" ]; then
        echo "✓ $file exists"
    else
        echo "✗ $file missing"
    fi
done

# Check if Docker is available
echo ""
echo "Checking Docker availability..."
if command -v docker >/dev/null 2>&1; then
    echo "✓ Docker is installed: $(docker --version)"
    if command -v docker-compose >/dev/null 2>&1; then
        echo "✓ Docker Compose is available: $(docker-compose --version)"
    else
        echo "⚠ Docker Compose not found (may use 'docker compose' instead)"
    fi
else
    echo "✗ Docker not installed"
fi

# Check if Python is available
echo ""
echo "Checking Python availability..."
if command -v python3 >/dev/null 2>&1; then
    echo "✓ Python3 is installed: $(python3 --version)"
else
    echo "✗ Python3 not installed"
fi

# Check if Conda is available
echo ""
echo "Checking Conda availability..."
if command -v conda >/dev/null 2>&1; then
    echo "✓ Conda is installed: $(conda --version)"
else
    echo "✗ Conda not installed (optional)"
fi

echo ""
echo "=== Validation Complete ==="
echo "To run the project, execute: ./run_all.sh"
