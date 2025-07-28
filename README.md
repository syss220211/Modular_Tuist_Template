# Modular Tuist Template
Clean Architecture 기반 + SwiftUI + Tuist를 활용한 iOS 프로젝트 모듈화 템플릿입니다.
  
### 기본 정보
- Base on SwiftUI 
- Clean Architecture
- Tuist 4.52.5
- Xcode 16.2
- Swift6
- Use Mise
  
### 구조 소개
<img src = "https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdna%2FkEe9P%2FbtsPsuqwPYd%2FAAAAAAAAAAAAAAAAAAAAAMDoKjySb53go6AQW2f1BG9Ob6D-wMMAPzWEmuvZ3nVA%2Fimg.png%3Fcredential%3DyqXZFxpELC7KVnFOS48ylbz2pIh7yKj8%26expires%3D1753973999%26allow_ip%3D%26allow_referer%3D%26signature%3D7ziWUmTwz3T8HA7WfUmzCxi7L3Q%253D">
- 본 템플릿은 `Clean Architecture` 원칙에 따라 각 레이어를 분리하고, `Tuist`를 통해 모듈화를 구조를 구성하였습니다.
- 구성 모듈 : App, Presentation, Domain, Data, DesignSystem, Core, DIContainer, 이 외 SPM 등
- 의존성 부분을 더 자세하게 확인하고 싶으시다면 [DependencyInfo.swift](https://github.com/syss220211/Modular_Tuist_Template/blob/main/Tuist/ProjectDescriptionHelpers/Dependency/DependencyInfo.swift) 에서 가독성 좋게 확인하실 수 있습니다.
-----
### 레이어 소개
**`App`** : 최상위 App 타겟 (Entry Point) 모듈
**`Presentation`** : SwiftUI 기반의 UI 및 ViewModel 모듈
**`Domain`** : 비즈니스 로직 및 UseCase 정의 모듈
**`Data`** : API 통신, Local DB 처리 등의 구현부 모듈
**`DesignSystem`** : 공통 UI 컴포넌트 및 리소스 모듈
**`Core`** : 공통 류틸리티, 네트워크, 로그 등 모듈
**`DIContainer`** : 의존성 주입 구성 모듈

-----
### Tuist 
- ProjectDescriptionHelpers 내 템플릿 유틸 함수들 정리하여 모듈을 구성함
- 해당 레포를 작성하면서 정리한 Tuist 개념 및 프로젝트 내용은 [여기](https://sy-catbutler.tistory.com/83)를 참고하시면 더 정확하고 깊은 내용을 확인하실 수 있습니다. 

------
### 시작하기

```bash

# Tuist가 설치되어 있지 않다면 먼저 설치합니다.
# 프로젝트 폴더로 이동 후
tuist install
tuist generate

# ⭐️ .gitignore의 파일은 조절해서 사용해주셔야합니다.
```
