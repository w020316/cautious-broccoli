#!/bin/bash
# ============================================
#   AI 编程助手 - 一键配置所有平台
#   来源: github.com/w020316/cautious-broccoli
# ============================================

RULES_FILE="AI_DEV_RULES.md"
TRAE_DIR=".trae/rules"
GITHUB_DIR=".github"

if [ ! -f "$RULES_FILE" ]; then
    echo "[错误] 未找到 $RULES_FILE"
    echo "请将本脚本与 AI_DEV_RULES.md 放在同一目录后运行"
    exit 1
fi

echo "============================================"
echo "  AI 编程助手 - 一键配置所有平台"
echo "============================================"
echo ""

# Cursor
echo "[1/7] 配置 Cursor (.cursorrules) ..."
cp "$RULES_FILE" ".cursorrules"

# Windsurf
echo "[2/7] 配置 Windsurf (.windsurfrules) ..."
cp "$RULES_FILE" ".windsurfrules"

# Trae
echo "[3/7] 配置 Trae (.trae/rules/project_rules.md) ..."
mkdir -p "$TRAE_DIR"
cp "$RULES_FILE" "$TRAE_DIR/project_rules.md"

# Claude Code
echo "[4/7] 配置 Claude Code (CLAUDE.md) ..."
cp "$RULES_FILE" "CLAUDE.md"

# GitHub Copilot
echo "[5/7] 配置 GitHub Copilot (.github/copilot-instructions.md) ..."
mkdir -p "$GITHUB_DIR"
cp "$RULES_FILE" "$GITHUB_DIR/copilot-instructions.md"

# Cline
echo "[6/7] 配置 Cline (.clinerules) ..."
cp "$RULES_FILE" ".clinerules"

# Aider (YAML format)
echo "[7/7] 配置 Aider (.aider.conf.yml) ..."
cat > ".aider.conf.yml" << 'EOF'
# AI Dev Rules - Aider Config
# Source: github.com/w020316/cautious-broccoli
model: auto
edit-format: diff
auto-commits: true
# See AI_DEV_RULES.md for full rules
EOF

echo ""
echo "============================================"
echo "  完成! 所有平台已配置。"
echo "============================================"
echo ""
echo "已创建的文件:"
echo "  .cursorrules          (Cursor)"
echo "  .windsurfrules        (Windsurf)"
echo "  .trae/rules/project_rules.md  (Trae)"
echo "  CLAUDE.md             (Claude Code)"
echo "  .github/copilot-instructions.md (Copilot)"
echo "  .clinerules           (Cline)"
echo "  .aider.conf.yml       (Aider)"
echo ""
echo "提示: 将 AI_DEV_RULES.md 和本脚本复制到新项目根目录运行即可。"
