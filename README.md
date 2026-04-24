# 🚀 Team Git Masters — 팀 소개 웹사이트

> Git + GitHub 협업 실습 프로젝트 | 2026.04.24

## 👥 팀원

| 이름 | GitHub | 역할 | 담당 업무 |
|------|--------|------|-----------|
| 박신형 | @shpark | 👑 팀장 | Repo 생성·보호 설정, 메인 페이지 개발 |
| 최다래 | @darae-choi | 팀원 | 이슈 템플릿, PR 템플릿 작성 |
| 고현석 | @hyunseok-ko | 팀원 | Prettier, ESLint 설정 |
| 현석원 | @seokwon-hyun | 팀원 | Husky, Commitlint 설정 |
| 채수연 | @suyeon-chae | 팀원 | .gitignore, CONTRIBUTING.md 작성 |
| 김대구 | @daegu-kim | 팀원 | CSS 디자인 시스템, 반응형 레이아웃 |
| 도윤혁 | @yunhyeok-do | 팀원 | GitHub Actions CI 설정 |
| 송형진 | @hyungjin-song | 팀원 | README 작성, GitHub Pages 배포 |

## 🏁 빠른 시작

```bash
# 1. 팀장 repo fork 후 clone
git clone https://github.com/YOUR_GITHUB_ID/team-intro-website.git
cd team-intro-website

# 2. 초기 세팅 스크립트 실행
bash setup.sh

# 3. upstream 연결
git remote add upstream https://github.com/TEAM_LEAD/team-intro-website.git
```

## 🔀 협업 Flow

```
논의 → 이슈 생성 → feature 브랜치 생성 → 작업 & 커밋 → Rebase → PR → 코드 리뷰 → Merge
```

## 🌿 브랜치 네이밍

```
feature/issue-{n}       # 이슈 번호 기반
feature/{변경제목}      # 제목 기반
```

## 💬 커밋 컨벤션

```
feat: 새로운 기능 추가
fix: 버그 수정
docs: 문서 수정
style: 포맷·세미콜론 등 (비즈니스 로직 변경 없음)
refactor: 코드 리팩토링
test: 테스트 코드 추가
chore: 빌드·패키지 관련 수정
ci: CI/CD 관련 변경
```

## 🛠️ 개발 도구

| 도구 | 용도 |
|------|------|
| Husky | Git Hook 관리 |
| Prettier | 코드 포맷 |
| ESLint | 코드 품질 검사 |
| Commitlint | 커밋 메시지 검사 |
| Commitizen | 대화형 커밋 작성 |

## 📜 주요 명령어

```bash
npm run lint          # ESLint 검사
npm run lint:fix      # ESLint 자동 수정
npm run format        # Prettier 포맷 적용
npm run format:check  # Prettier 포맷 검사
npm run commit        # Commitizen 대화형 커밋
```

## 🔃 Rebase 가이드

```bash
# upstream 최신화
git fetch upstream

# 내 feature 브랜치에서
git rebase upstream/main

# 충돌 해결 후
git add .
git rebase --continue

# push
git push origin feature/issue-{n} --force-with-lease
```
