#!/bin/bash

# 📅 Today's date
today=$(date +%F)

# 📁 Path to new file
file="content/zh-cn/bbs/${today}.md"

# 🤖 Create new post using archetype
hugo new -k zh-cn/bbs "$file"

# ✍️ Open it in your editor (change 'open' to 'code' or 'vim' if needed)
code "$file"