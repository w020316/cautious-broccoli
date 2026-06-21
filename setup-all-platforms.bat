@echo off
chcp 65001 >nul 2>&1
echo ============================================
echo   AI 编程助手 - 一键配置所有平台
echo   来源: github.com/w020316/cautious-broccoli
echo ============================================
echo.

set "RULES_FILE=AI_DEV_RULES.md"
set "TRAE_DIR=.trae\rules"
set "GITHUB_DIR=.github"

if not exist "%RULES_FILE%" (
    echo [错误] 未找到 %RULES_FILE%
    echo 请将本脚本与 AI_DEV_RULES.md 放在同一目录后运行
    pause
    exit /b 1
)

:: Cursor
echo [1/7] 配置 Cursor (.cursorrules) ...
copy /y "%RULES_FILE%" ".cursorrules" >nul 2>&1

:: Windsurf
echo [2/7] 配置 Windsurf (.windsurfrules) ...
copy /y "%RULES_FILE%" ".windsurfrules" >nul 2>&1

:: Trae
echo [3/7] 配置 Trae (.trae/rules/project_rules.md) ...
if not exist "%TRAE_DIR%" mkdir "%TRAE_DIR%" >nul 2>&1
copy /y "%RULES_FILE%" "%TRAE_DIR%\project_rules.md" >nul 2>&1

:: Claude Code
echo [4/7] 配置 Claude Code (CLAUDE.md) ...
copy /y "%RULES_FILE%" "CLAUDE.md" >nul 2>&1

:: GitHub Copilot
echo [5/7] 配置 GitHub Copilot (.github/copilot-instructions.md) ...
if not exist "%GITHUB_DIR%" mkdir "%GITHUB_DIR%" >nul 2>&1
copy /y "%RULES_FILE%" "%GITHUB_DIR%\copilot-instructions.md" >nul 2>&1

:: Cline
echo [6/7] 配置 Cline (.clinerules) ...
copy /y "%RULES_FILE%" ".clinerules" >nul 2>&1

:: Aider (YAML format - simplified)
echo [7/7] 配置 Aider (.aider.conf.yml) ...
(
echo # AI Dev Rules - Aider Config
echo # Source: github.com/w020316/cautious-broccoli
echo model: auto
echo edit-format: diff
echo auto-commits: true
echo # See AI_DEV_RULES.md for full rules
) > ".aider.conf.yml"

echo.
echo ============================================
echo   完成! 所有平台已配置。
echo ============================================
echo.
echo 已创建的文件:
echo   .cursorrules          (Cursor)
echo   .windsurfrules        (Windsurf)
echo   .trae/rules/project_rules.md  (Trae)
echo   CLAUDE.md             (Claude Code)
echo   .github/copilot-instructions.md (Copilot)
echo   .clinerules           (Cline)
echo   .aider.conf.yml       (Aider)
echo.
echo 提示: 将 AI_DEV_RULES.md 和本脚本复制到新项目根目录运行即可。
pause
