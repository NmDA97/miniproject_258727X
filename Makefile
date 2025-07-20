# Makefile for Data Mining Project
.PHONY: help setup-docker setup-conda setup-pip clean run-notebook test

help:
	@echo "Available commands:"
	@echo "  setup-docker    - Build and run with Docker"
	@echo "  setup-conda     - Setup with Conda environment"
	@echo "  setup-pip       - Setup with pip and virtual environment"
	@echo "  run-notebook    - Start Jupyter notebook (assumes environment is ready)"
	@echo "  clean          - Clean up build artifacts and caches"
	@echo "  test           - Run basic tests (if available)"

setup-docker:
	@echo "Setting up with Docker..."
	docker-compose up --build

setup-conda:
	@echo "Setting up with Conda..."
	conda env create -f environment.yml || conda env update -f environment.yml
	@echo "Environment created. Activate with: conda activate miniproject_258727X"

setup-pip:
	@echo "Setting up with pip..."
	python3 -m venv venv
	. venv/bin/activate && pip install --upgrade pip && pip install -r requirements.txt
	@echo "Virtual environment created. Activate with: source venv/bin/activate"

run-notebook:
	@echo "Starting Jupyter notebook..."
	jupyter notebook --ip=0.0.0.0 --port=8888 --no-browser

clean:
	@echo "Cleaning up..."
	rm -rf __pycache__
	rm -rf .pytest_cache
	rm -rf build/
	rm -rf dist/
	rm -rf *.egg-info
	find . -name "*.pyc" -delete
	find . -name "*.pyo" -delete
	find . -name "*~" -delete

test:
	@echo "Running basic validation..."
	python3 -c "import pandas, numpy, matplotlib, seaborn, plotly, sklearn; print('All dependencies available!')"
