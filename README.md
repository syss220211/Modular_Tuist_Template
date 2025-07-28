# Modular Tuist Template
Clean Architecture 기반 + SwiftUI + Tuist를 활용한 iOS 프로젝트 모듈화 템플릿입니다.

---

## 📌 기본 정보
- Base: **SwiftUI**
- Architecture: **Clean Architecture**
- Tuist: **v4.52.5**
- Xcode: **16.2**
- Swift: **6**
- Build Tool: **[mise](https://mise.jdx.dev/)** 사용

---

## 🧱 구조 소개
> 본 템플릿은 `Clean Architecture` 원칙에 따라 각 레이어를 분리하고, `Tuist`를 통해 모듈화 구조를 구성하였습니다.  
> 구성 모듈: `App`, `Presentation`, `Domain`, `Data`, `DesignSystem`, `Core`, `DIContainer` 등  
> 모듈 간 의존성 관계는 [DependencyInfo.swift](https://github.com/syss220211/Modular_Tuist_Template/blob/main/Tuist/ProjectDescriptionHelpers/Dependency/DependencyInfo.swift)에서 확인하실 수 있습니다.

<img alt="모듈 구조도" src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdna%2FkEe9P%2FbtsPsuqwPYd%2FAAAAAAAAAAAAAAAAAAAAAMDoKjySb53go6AQW2f1BG9Ob6D-wMMAPzWEmuvZ3nVA%2Fimg.png%3Fcredential%3DyqXZFxpELC7KVnFOS48ylbz2pIh7yKj8%26expires%3D1753973999%26allow_ip%3D%26allow_referer%3D%26signature%3D7ziWUmTwz3T8HA7WfUmzCxi7L3Q%253D" />

<img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdna%2FkEe9P%2FbtsPsuqwPYd%2FAAAAAAAAAAAAAAAAAAAAAMDoKjySb53go6AQW2f1BG9Ob6D-wMMAPzWEmuvZ3nVA%2Fimg.png%3Fcredential%3DyqXZFxpELC7KVnFOS48ylbz2pIh7yKj8%26expires%3D1753973999%26allow_ip%3D%26allow_referer%3D%26signature%3D7ziWUmTwz3T8HA7WfUmzCxi7L3Q%253D" alt="모듈 구조도" width="700"/>
---

## 🧩 레이어 소개
- **`App`**: 최상위 App 타겟 (Entry Point)
- **`Presentation`**: SwiftUI 기반의 UI 및 ViewModel
- **`Domain`**: 비즈니스 로직 및 UseCase 정의
- **`Data`**: API 통신, Local DB 처리 등 구현부
- **`DesignSystem`**: 공통 UI 컴포넌트 및 리소스
- **`Core`**: 공통 유틸리티, 네트워크, 로그 등
- **`DIContainer`**: 의존성 주입 구성

---

## 🛠 Tuist 사용
- `ProjectDescriptionHelpers`에 템플릿 유틸 함수들을 정리하여 모듈 생성을 일관성 있게 관리합니다.
- 해당 프로젝트에 사용된 Tuist 개념 및 구성에 대한 자세한 설명은 [블로그 글](https://sy-catbutler.tistory.com/83)을 참고해주세요.

---

## 🚀 시작하기
```bash
# Tuist가 설치되어 있지 않다면 먼저 설치합니다.
curl -Ls https://install.tuist.io | bash

# 프로젝트 디렉토리에서 아래 명령어 실행
tuist install
tuist generate
# ⭐️ .gitignore는 프로젝트 상황에 맞추어 조정해서 사용해주세요
```

---
🙋‍♂️ 기타
-	버그 리포트나 개선 제안은 언제든지 PR 또는 Issue로 남겨주세요.
-	개인/팀 프로젝트 템플릿으로 자유롭게 커스터마이징하셔도 좋습니다.
