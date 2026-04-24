# 기여 가이드

## 브랜치 전략

```
main          ← 배포 브랜치 (직접 push 금지, PR만 허용)
feature/issue-{n}      ← 이슈 번호 기반 작업 브랜치
feature/{변경제목}     ← 제목 기반 작업 브랜치
```

## 작업 흐름

1. **이슈 생성** → 작업 전 반드시 이슈 등록
2. **브랜치 생성** → `git checkout -b feature/issue-{n}`
3. **작업 & 커밋** → 커밋 컨벤션 준수
4. **PR 등록** → PR 템플릿 작성, 리뷰어 지정
5. **코드 리뷰** → 최소 1명 Approve 필요
6. **Rebase & Merge** → main 기준으로 rebase 후 머지

---

## Commit Message 규칙

### 커밋 타입
| 타입 | 설명 |
|------|------|
| `feat` | 새로운 기능 추가 |
| `fix` | 버그 수정 |
| `docs` | 문서 수정 |
| `style` | 포맷, 세미콜론 등 비즈니스 로직 변경 없는 수정 |
| `refactor` | 코드 리팩토링 |
| `test` | 테스트 코드 추가 |
| `chore` | 빌드 업무 수정, 패키지 매니저 수정 |
| `ci` | CI/CD 관련 변경 |
| `revert` | 이전 커밋 되돌리기 |

### 커밋 메시지 형식
```
<타입>: <변경사항 요약>

예시:
feat: Add clock component for hobby page
fix: Correct typo in about page
docs: Update README with setup instructions
chore: Add eslint and prettier configuration
```

### 규칙
- 제목은 50자 이내로 간결하게
- 본문이 필요하면 제목 다음 한 줄 띄우고 작성
- 현재 시제 사용 ("Add feature" not "Added feature")

---

## 코드 스타일

- **Prettier** 포맷 적용 필수: `npm run format`
- **ESLint** 검사 통과 필수: `npm run lint`
- pre-commit hook으로 자동 검사됨

---

## PR 규칙

- feature → main 방향으로만 PR
- PR 제목: `[feat] 기능 요약` 형식
- 본문에 관련 이슈 번호 반드시 명시 (`closes #이슈번호`)
- PR 등록 전 main 브랜치 기준으로 rebase 필수
