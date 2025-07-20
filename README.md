# Data Mining Project - Customer Segmentation and Product Analysis

**Project ID**: miniproject_258727X  
**Course**: Advanced Data Mining  
**Focus**: Customer Segmentation and Product Analysis for UK Gift Retail

## 📋 Project Overview

This project performs comprehensive data analysis on UK retail transaction data, focusing on:
- Customer segmentation using clustering algorithms (K-Means, DBSCAN)
- Product analysis and sales patterns
- Exploratory Data Analysis with interactive visualizations
- Data preprocessing and cleaning techniques

## 🚀 Quick Start

### Option 1: Docker (Recommended)
The easiest way to run this project on any computer:

```bash
# Clone the repository
git clone https://github.com/your-username/miniproject_258727X.git
cd miniproject_258727X

# Validate setup (optional)
./validate_setup.sh

# Run with Docker
./run_all.sh
# Select option 1 when prompted
```

### Option 2: Using the Setup Script
```bash
# Make script executable (if needed)
chmod +x run_all.sh

# Run the interactive setup script
./run_all.sh
```

The script will guide you through different setup options:
1. **Docker** (recommended for easy setup)
2. **Conda environment** (if you have Anaconda/Miniconda)
3. **Python venv + pip** (standard Python virtual environment)
4. **Run analysis only** (if environment is already configured)

## 📁 Project Structure

```
miniproject_258727X/
├── README.md                 # This file
├── requirements.txt          # Python dependencies
├── environment.yml          # Conda environment specification
├── Dockerfile              # Docker configuration
├── docker-compose.yml      # Docker Compose configuration
├── run_all.sh             # Main setup and run script
├── validate_setup.sh      # Setup validation script
├── Makefile               # Alternative build commands
├── data/                  # Data directory
│   └── reduced_retail.csv # Sample retail transaction data
├── notebooks/             # Jupyter notebooks
│   └── data_mining.ipynb # Main analysis notebook
└── src/                   # Source code directory
```

## 🛠 Manual Setup Instructions

### Prerequisites
- Python 3.8 or higher
- Git

### Setup with Conda (Recommended)
```bash
# Create environment from environment.yml
conda env create -f environment.yml

# Activate environment
conda activate miniproject_258727X

# Start Jupyter notebook
jupyter notebook
```

### Setup with pip and virtual environment
```bash
# Create virtual environment
python3 -m venv venv

# Activate virtual environment
# On macOS/Linux:
source venv/bin/activate
# On Windows:
# venv\Scripts\activate

# Install dependencies
pip install -r requirements.txt

# Start Jupyter notebook
jupyter notebook
```

### Setup with Docker
```bash
# Build and run with Docker Compose
docker-compose up --build

# Or build and run manually
docker build -t miniproject_258727x .
docker run -p 8888:8888 miniproject_258727x
```

## 🔍 Running the Analysis

1. After setup, Jupyter notebook will start automatically
2. Navigate to `http://localhost:8888` in your browser
3. Open `notebooks/data_mining.ipynb`
4. Run all cells to execute the complete analysis

## 📊 Analysis Components

The notebook includes:

1. **Data Loading and Exploration**
   - Dataset overview and structure analysis
   - Missing value detection and visualization

2. **Data Preprocessing**
   - Data cleaning and transformation
   - Handling missing values and duplicates
   - Feature engineering

3. **Exploratory Data Analysis**
   - Country and product distribution analysis
   - Sales pattern visualization
   - Customer behavior insights

4. **Customer Segmentation**
   - RFM Analysis (Recency, Frequency, Monetary)
   - K-Means clustering
   - DBSCAN clustering
   - Cluster evaluation and interpretation

5. **Visualizations**
   - Interactive plots with Plotly
   - Statistical visualizations with Seaborn
   - Custom dashboards and charts

## 💻 Software Requirements

### Python Packages
- **pandas** (≥1.5.0): Data manipulation and analysis
- **numpy** (≥1.24.0): Numerical computing
- **matplotlib** (≥3.6.0): Static plotting
- **seaborn** (≥0.12.0): Statistical visualization
- **plotly** (≥5.10.0): Interactive visualizations
- **scikit-learn** (≥1.2.0): Machine learning algorithms
- **jupyter** (≥1.0.0): Notebook environment
- **kaleido** (≥0.2.0): Static image export for Plotly

### System Requirements
- **Python**: 3.8 or higher
- **RAM**: Minimum 4GB recommended
- **Storage**: ~100MB for project files and dependencies
- **Browser**: Modern web browser for Jupyter notebooks

## ⏱ Expected Runtime

- **Environment Setup**: 5-15 minutes (depending on method)
- **Notebook Execution**: 2-5 minutes (full run)
- **Individual Analysis Sections**: 10-30 seconds each

## 🐳 Docker Information

The Docker setup provides:
- Isolated Python 3.9 environment
- All dependencies pre-installed
- Jupyter notebook server with no authentication
- Port 8888 exposed for web access
- Volume mounting for live code editing

Access the notebook at: `http://localhost:8888`

## 🔧 Troubleshooting

### Common Issues

1. **Port 8888 already in use**
   ```bash
   # Kill existing Jupyter processes
   pkill -f jupyter
   # Or use a different port
   jupyter notebook --port=8889
   ```

2. **Docker permission issues**
   ```bash
   # On Linux, add user to docker group
   sudo usermod -aG docker $USER
   # Then log out and back in
   ```

3. **Memory issues**
   - Ensure at least 4GB RAM available
   - Close other memory-intensive applications

### Getting Help
- Check the notebook cells for detailed comments
- Review error messages in Jupyter notebook output
- Ensure all dependencies are properly installed

## 📈 Results and Outputs

The analysis generates:
- Customer segments with detailed profiles
- Interactive visualizations and dashboards
- Statistical insights about purchasing patterns
- Cluster evaluation metrics and comparisons
- Export-ready charts and figures

## 🤝 Contributing

This is an academic project. For improvements or suggestions:
1. Fork the repository
2. Create a feature branch
3. Submit a pull request

## 📄 License

This project is for educational purposes as part of the Advanced Data Mining course.

---

**Last Updated**: July 2025  
**Author**: Student ID 258727X