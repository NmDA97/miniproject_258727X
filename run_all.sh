#!/bin/bash

# run_all.sh - Setup and run the data mining project
# This script provides multiple options to run the project

set -e  # Exit on any error

echo "=== Data Mining Project Setup ==="

# Function to check if command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Function to run with Docker
run_with_docker() {
    echo "Running with Docker..."
    if command_exists docker && command_exists docker-compose; then
        echo "Building and starting Docker containers..."
        docker-compose up --build
    else
        echo "Docker or docker-compose not found. Please install Docker Desktop."
        exit 1
    fi
}

# Function to run with Conda
run_with_conda() {
    echo "Running with Conda..."
    if command_exists conda; then
        echo "Creating conda environment..."
        conda env create -f environment.yml -n miniproject_258727X || conda env update -f environment.yml -n miniproject_258727X
        echo "Activating environment..."
        source "$(conda info --base)/etc/profile.d/conda.sh"
        conda activate miniproject_258727X
        echo "Starting Jupyter notebook..."
        jupyter notebook --ip=0.0.0.0 --port=8888 --no-browser
    else
        echo "Conda not found. Please install Anaconda or Miniconda."
        exit 1
    fi
}

# Function to run with pip/venv
run_with_pip() {
    echo "Running with pip and virtual environment..."
    if command_exists python3; then
        echo "Creating virtual environment..."
        python3 -m venv venv
        echo "Activating virtual environment..."
        source venv/bin/activate
        echo "Installing dependencies..."
        pip install --upgrade pip
        pip install -r requirements.txt
        echo "Starting Jupyter notebook..."
        jupyter notebook --ip=0.0.0.0 --port=8888 --no-browser
    else
        echo "Python3 not found. Please install Python 3.8 or higher."
        exit 1
    fi
}

# Function to just run analysis (assumes environment is already set up)
run_analysis_only() {
    echo "Running analysis only (assuming environment is set up)..."
    jupyter notebook --ip=0.0.0.0 --port=8888 --no-browser
}

# Main menu
echo ""
echo "Choose how to run the project:"
echo "1. Docker (recommended for easy setup)"
echo "2. Conda environment"
echo "3. Python venv + pip"
echo "4. Run analysis only (environment already set up)"
echo ""

read -p "Enter your choice (1-4): " choice

case $choice in
    1)
        run_with_docker
        ;;
    2)
        run_with_conda
        ;;
    3)
        run_with_pip
        ;;
    4)
        run_analysis_only
        ;;
    *)
        echo "Invalid choice. Please run the script again."
        exit 1
        ;;
esac
