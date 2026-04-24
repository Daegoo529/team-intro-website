export default {
  extends: ['@commitlint/config-conventional'],
  rules: {
    // 커밋 타입 제한
    'type-enum': [
      2,
      'always',
      [
        'feat',     // 새로운 기능 추가
        'fix',      // 버그 수정
        'docs',     // 문서 수정
        'style',    // 포맷, 세미콜론 등 (비즈니스 로직 변경 없음)
        'refactor', // 코드 리팩토링
        'test',     // 테스트 코드 추가/수정
        'chore',    // 빌드 업무, 패키지 매니저 수정
        'ci',       // CI/CD 관련 변경
        'revert',   // 이전 커밋 되돌리기
      ],
    ],
    // 제목 첫 글자 대소문자 규칙 비활성화 (한글 커밋 허용)
    'subject-case': [0],
    // 제목 최대 길이
    'header-max-length': [2, 'always', 100],
  },
};
