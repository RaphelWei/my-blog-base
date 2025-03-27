#!/bin/bash

# 📅 Today's date
today=$(date +%F)

# 📁 Path to new file
file="content/zh-cn/page/bbs/${today}.md"

# 🤖 Create new post using archetype
hugo new -k zh-cn/page/bbs "$file"

# ✍️ Open it in your editor (change 'open' to 'code' or 'vim' if needed)
code "$file"   # macOS: 'open', VS Code: 'code', Linux: 'xdg-open'