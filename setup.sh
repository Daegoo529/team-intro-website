#!/bin/bash
# ================================================================
#  Team Git Masters — 초기 세팅 스크립트
#  실행: bash setup.sh
# ================================================================

set -e

CYAN='\033[0;36m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

echo -e "${CYAN}"
echo "╔══════════════════════════════════════════╗"
echo "║   🚀 Team Git Masters — 초기 세팅 시작   ║"
echo "╚══════════════════════════════════════════╝"
echo -e "${NC}"

# ── 1. Node.js 버전 확인 ──
echo -e "${YELLOW}[1/6] Node.js 버전 확인...${NC}"
if ! command -v node &> /dev/null; then
  echo -e "${RED}❌ Node.js가 설치되어 있지 않습니다. nvm을 통해 설치해주세요.${NC}"
  echo "   https://github.com/nvm-sh/nvm"
  exit 1
fi
NODE_VER=$(node -v)
echo -e "${GREEN}✅ Node.js ${NODE_VER} 확인됨${NC}"

# ── 2. Git 초기화 ──
echo -e "${YELLOW}[2/6] Git 초기화...${NC}"
if [ ! -d ".git" ]; then
  git init
  echo -e "${GREEN}✅ git init 완료${NC}"
else
  echo -e "${GREEN}✅ 이미 Git 저장소입니다${NC}"
fi

# ── 3. npm 의존성 설치 ──
echo -e "${YELLOW}[3/6] npm 의존성 설치 중... (시간이 걸릴 수 있습니다)${NC}"
npm install
echo -e "${GREEN}✅ npm install 완료${NC}"

# ── 4. Husky 초기화 ──
echo -e "${YELLOW}[4/6] Husky 초기화...${NC}"
npx husky install 2>/dev/null || npx husky
chmod +x .husky/commit-msg .husky/pre-commit 2>/dev/null || true
echo -e "${GREEN}✅ Husky 설정 완료${NC}"

# ── 5. 첫 커밋 ──
echo -e "${YELLOW}[5/6] 초기 커밋 생성...${NC}"
git add .
git commit -m "chore: initial project setup with husky, eslint, prettier, commitlint" || {
  echo -e "${YELLOW}⚠️  커밋 건너뜀 (이미 커밋된 상태이거나 변경사항 없음)${NC}"
}
echo -e "${GREEN}✅ 초기 커밋 완료${NC}"

# ── 6. 원격 저장소 연결 안내 ──
echo -e "${YELLOW}[6/6] 원격 저장소 연결 안내${NC}"
echo ""
echo -e "${CYAN}📌 GitHub repo 생성 후 아래 명령어를 실행하세요:${NC}"
echo ""
echo "  # 원본 저장소 (팀장 repo)"
echo "  git remote add upstream https://github.com/YOUR_ORG/team-intro-website.git"
echo ""
echo "  # 본인 fork 저장소"
echo "  git remote add origin https://github.com/YOUR_GITHUB_ID/team-intro-website.git"
echo "  git push -u origin main"
echo ""
echo -e "${CYAN}📌 작업 브랜치 생성 예시:${NC}"
echo "  git checkout -b feature/issue-1"
echo ""
echo -e "${CYAN}📌 커밋 방법:${NC}"
echo "  npm run commit   # commitizen 대화형 커밋"
echo "  또는"
echo "  git commit -m 'feat: Add my intro page'"
echo ""
echo -e "${GREEN}"
echo "╔══════════════════════════════════════════╗"
echo "║   ✅ 세팅 완료! 이제 작업을 시작하세요  ║"
echo "╚══════════════════════════════════════════╝"
echo -e "${NC}"
