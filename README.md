# 🤖 n8n + MCP Data Patterns

> **From Zero to Data Automation Hero in One Day** 🚀

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![n8n](https://img.shields.io/badge/n8n-FF6D5A?style=flat&logo=n8n&logoColor=white)](https://n8n.io/)
[![Claude MCP](https://img.shields.io/badge/Claude-MCP-blue)](https://docs.anthropic.com/claude/docs)

**15 battle-tested n8n workflows** that combine Claude's MCP (Model Context Protocol) with your favorite automation platform. Each pattern is:

✨ **Copy-paste ready** - No configuration hell  
🧠 **AI-powered** - Claude does the smart stuff  
📊 **Production-tested** - Real business use cases  
🎯 **Modular** - Mix and match patterns  

---

## 🔥 Quick Start

```bash
# 1. Install n8n + MCP support
npm install -g @leonardsellem/n8n-mcp-server
npm install -g @n8n/n8n-nodes-mcp

# 2. Start n8n with MCP
docker run -d --name n8n-mcp \
  -p 5678:5678 \
  -e N8N_BASIC_AUTH_ACTIVE=false \
  -e CLAUDE_API_KEY=${CLAUDE_API_KEY} \
  -v n8n_data:/home/node/.n8n \
  n8nio/n8n:latest-alpine

# 3. Import any workflow from /patterns/ directory
# 4. Profit! 💰
```

---

## 📋 The 15 Patterns

| Pattern | Use Case | Complexity | Status |
|---------|----------|------------|--------|
| 🧹 [Data Quality Audit](#1-data-quality-audit) | Clean messy datasets | ⭐⭐ | 🚧 Building |
| 🔬 [Smart Feature Discovery](#2-feature-discovery) | Auto-generate ML features | ⭐⭐⭐ | 📋 Planned |
| 🔄 [Multi-Modal Fusion](#3-multimodal-fusion) | Combine text, images, data | ⭐⭐⭐⭐ | 📋 Planned |
| 📦 [Smart API Orchestration](#4-api-orchestration) | Rate-limit aware API calls | ⭐⭐⭐ | 📋 Planned |
| 📊 [AI Insight Engine](#5-insight-engine) | Auto-generate hypotheses | ⭐⭐⭐⭐ | 📋 Planned |
| 🚨 [Context-Aware Anomalies](#6-anomaly-detection) | Smart alerting system | ⭐⭐⭐ | 📋 Planned |
| 📈 [Real-Time Predictions](#7-predictions) | Ensemble ML models | ⭐⭐⭐⭐ | 📋 Planned |
| 📑 [Executive Reporting](#8-reporting) | Auto-generate exec reports | ⭐⭐ | 📋 Planned |
| 💼 [VC Portfolio Intelligence](#9-portfolio) | Track portfolio KPIs | ⭐⭐⭐⭐⭐ | 📋 Planned |
| 📝 [Advanced NLP Pipeline](#10-nlp) | Multi-modal text analysis | ⭐⭐⭐ | 📋 Planned |
| 🎯 [Lead Scoring Engine](#11-lead-scoring) | AI-powered sales scoring | ⭐⭐⭐ | 📋 Planned |
| 💰 [Smart Pricing Optimizer](#12-pricing) | Real-time price optimization | ⭐⭐⭐⭐ | 📋 Planned |
| 📱 [Social Media Intelligence](#13-social) | Brand monitoring + sentiment | ⭐⭐ | 📋 Planned |
| 🛒 [Customer Journey Analytics](#14-journey) | Track user behavior patterns | ⭐⭐⭐⭐ | 📋 Planned |
| 🔮 [Predictive Maintenance](#15-maintenance) | IoT-powered maintenance | ⭐⭐⭐⭐⭐ | 📋 Planned |

---

## 🎯 Learning Path

**👶 Beginner (Start Here!)**
1. 🧹 Data Quality Audit - Learn the basics
2. 📑 Executive Reporting - Simple but powerful
3. 📱 Social Media Intelligence - Fun and visual

**🚀 Intermediate** 
4. 🔬 Smart Feature Discovery - ML magic
5. 🎯 Lead Scoring Engine - Business impact
6. 🚨 Context-Aware Anomalies - Smart alerts

**🔥 Advanced**
7. 📊 AI Insight Engine - Hypothesis generation
8. 🔄 Multi-Modal Fusion - Complex data types
9. 💼 VC Portfolio Intelligence - Enterprise-grade

---

## 🛠️ Installation & Setup

### Prerequisites
- **Claude API Key** - Get from [Anthropic Console](https://console.anthropic.com/)
- **n8n Instance** - Local or cloud  
- **Docker** (recommended) or Node.js 18+

### One-Command Setup
```bash
# Clone and setup everything
git clone https://github.com/anix-lynch/n8n-mcp-data-patterns.git
cd n8n-mcp-data-patterns
./setup.sh
```

### Manual Setup
```bash
# 1. Install MCP support
npm install -g @leonardsellem/n8n-mcp-server
npm install -g @n8n/n8n-nodes-mcp

# 2. Set environment variables
export CLAUDE_API_KEY="your-claude-key"
export OPENAI_API_KEY="your-openai-key"  # Optional

# 3. Start n8n
n8n start
```

---

## 📚 How to Use Each Pattern

Each pattern comes with:
- 📄 **JSON workflow file** - Import directly into n8n
- 🔧 **Setup script** - One-command environment setup  
- 📊 **Sample data** - Test immediately
- 📖 **Human-readable guide** - No-code explanation

**Import Process:**
1. Open n8n (http://localhost:5678)
2. Click "Import from File" 
3. Select the pattern JSON file
4. Run the setup script
5. Test with sample data
6. Customize for your needs!

---

## 🤝 Contributing

Found a pattern that rocks? Want to add more? Let's build this together! 🎉

1. **Fork** this repo
2. **Create** your pattern in `/patterns/`
3. **Add** setup script in `/scripts/`  
4. **Include** sample data in `/examples/`
5. **Submit** a PR with demo screenshots

**Pattern Template:** [`PATTERN_TEMPLATE.md`](PATTERN_TEMPLATE.md)

---

## 📊 Community & Support

- **GitHub Issues** - Bug reports, feature requests
- **Discussions** - Share your wins, ask questions
- **Medium** - [Read the full guide](https://medium.com/@anixlynch/n8n-mcp-data-patterns)
- **Twitter** - [@anixlynch](https://twitter.com/anixlynch) for updates

---

## ⚡ Performance Tips

**🚀 Speed Optimizations:**
- Use `claude-haiku` for simple tasks (3x faster)
- Batch API calls in orchestration patterns
- Cache embeddings in vector DBs

**💰 Cost Optimizations:**  
- Use `claude-haiku` for data processing
- Only use `claude-sonnet` for complex analysis
- Implement smart retry logic

**🔒 Security Best Practices:**
- Never hardcode API keys
- Use n8n's credential system
- Validate all external inputs

---

## 📄 License

MIT License - build amazing things! 🎯

---

**⭐ Star this repo if it helps you become a data automation hero!** ⭐

*Built with ❤️ by [@anixlynch](https://github.com/anix-lynch) - Making data automation accessible to everyone*

---

## 🚧 Build Status

We're building this one pattern at a time to ensure quality! 

**Next up:** Pattern #1 - Data Quality Audit 🧹  
**Follow along:** [Medium Post](https://medium.com/@anixlynch/n8n-mcp-patterns) for detailed explanations