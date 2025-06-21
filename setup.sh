#!/bin/bash

# 🤖 n8n + MCP Data Patterns - Master Setup Script
# One command to rule them all! 💍

echo "🚀 Setting up n8n + MCP Data Patterns..."
echo ""

# Create directory structure
echo "📁 Creating directory structure..."
mkdir -p data/input
mkdir -p data/output
mkdir -p data/reports
mkdir -p logs

# Install core dependencies
echo "📦 Installing dependencies..."
pip install pandas numpy scipy scikit-learn matplotlib seaborn plotly requests beautifulsoup4 textblob

# Environment setup
echo "🔧 Setting up environment variables..."
cat > .env << EOF
# Claude API Configuration
CLAUDE_API_KEY=your-claude-api-key-here
OPENAI_API_KEY=your-openai-api-key-here

# Data paths
DATA_INPUT_PATH=./data/input
DATA_OUTPUT_PATH=./data/output
REPORT_EMAIL=your-email@company.com

# n8n Configuration
N8N_BASIC_AUTH_ACTIVE=false
N8N_PORT=5678
EOF

# Create quick test data
echo "📊 Creating sample datasets..."

# Sample data for pattern #1 (Data Quality Audit)
cat > data/input/sample-quality-test.csv << 'EOF'
name,age,salary,department,performance_score,missing_field
Alice Johnson,28,75000,Engineering,4.2,
Bob Smith,35,95000,Engineering,4.8,complete
Carol Davis,31,65000,Marketing,3.9,
David Wilson,,72000,Sales,4.1,complete
Eve Brown,33,88000,Engineering,4.6,
Frank Miller,27,58000,Marketing,3.5,
Grace Lee,30,78000,Sales,4.3,complete
Henry Taylor,32,82000,Engineering,4.5,
Ivy Chen,26,62000,Marketing,3.8,
Jack Anderson,999,91000,Sales,4.7,complete
Karen White,29,69000,Marketing,-1.0,
Liam Garcia,31,85000,Engineering,4.4,complete
EOF

# Sample data for pattern #2 (Feature Discovery)
cat > data/input/sample-retail.csv << 'EOF'
customer_id,age,income,purchase_amount,items_bought,days_since_last_purchase,is_premium,category,season,discount_used
1001,28,75000,156.50,3,7,1,Electronics,Winter,0.1
1002,35,92000,89.99,1,14,1,Clothing,Winter,0
1003,42,65000,234.75,5,3,0,Home,Winter,0.15
1004,29,58000,45.20,2,21,0,Electronics,Winter,0.05
1005,51,110000,312.80,4,2,1,Home,Winter,0.2
1006,33,78000,67.40,1,28,0,Clothing,Spring,0
1007,27,49000,128.90,3,10,0,Electronics,Spring,0.1
1008,45,95000,198.75,2,5,1,Home,Spring,0.15
1009,38,71000,89.50,4,18,0,Clothing,Spring,0.05
1010,31,82000,145.30,2,12,1,Electronics,Spring,0.1
EOF

# Create utility scripts
echo "🛠️ Creating utility scripts..."

cat > test-pattern.sh << 'EOF'
#!/bin/bash
# Quick test script for any pattern

PATTERN_NUM=${1:-1}
echo "🧪 Testing Pattern #$PATTERN_NUM..."

case $PATTERN_NUM in
  1)
    echo "Testing Data Quality Audit..."
    cp data/input/sample-quality-test.csv data/input/test-$(date +%s).csv
    echo "✅ Test file created for Pattern #1"
    ;;
  2)
    echo "Testing Feature Discovery..."
    cp data/input/sample-retail.csv data/input/dataset.csv
    echo "✅ Test file created for Pattern #2"
    ;;
  *)
    echo "Available patterns: 1 (Data Quality), 2 (Feature Discovery)"
    ;;
esac

echo "🔍 Check your n8n workflow at http://localhost:5678"
EOF

chmod +x test-pattern.sh

# Create n8n docker command
cat > start-n8n.sh << 'EOF'
#!/bin/bash
# Start n8n with MCP support

echo "🚀 Starting n8n with MCP support..."

# Check if .env exists
if [ ! -f .env ]; then
    echo "❌ .env file not found. Run ./setup.sh first!"
    exit 1
fi

# Load environment variables
source .env

# Start n8n container
docker run -d --name n8n-mcp \
  -p 5678:5678 \
  -e N8N_BASIC_AUTH_ACTIVE=false \
  -e CLAUDE_API_KEY="$CLAUDE_API_KEY" \
  -e OPENAI_API_KEY="$OPENAI_API_KEY" \
  -v $(pwd)/data:/data \
  -v n8n_data:/home/node/.n8n \
  n8nio/n8n:latest

echo "✅ n8n started at http://localhost:5678"
echo "📁 Data directory mounted: $(pwd)/data"
echo ""
echo "🎯 Next steps:"
echo "1. Open http://localhost:5678 in your browser"
echo "2. Import a workflow from ./patterns/"
echo "3. Run ./test-pattern.sh [pattern-number] to test"
EOF

chmod +x start-n8n.sh

echo ""
echo "✅ Setup complete!"
echo ""
echo "🎯 Quick start:"
echo "1. Add your API keys to .env file"
echo "2. Run: ./start-n8n.sh"
echo "3. Import patterns from ./patterns/ directory"
echo "4. Test with: ./test-pattern.sh 1"
echo ""
echo "📖 Read the full guide: https://github.com/anix-lynch/n8n-mcp-data-patterns"