# CI/CD テスト
このリポジトリは、github actionsによるCI/CDのテスト用に作成されたSpring Bootプロジェクトです。以下の内容が含まれています。
- `Dockerfile`: アプリケーションをDockerコンテナとしてビルドするためのファイル。
- `build.gradle`: Gradleビルドファイルで、プロジェクトの依存関係やビルドタスクを定義しています。
- `src/main/java/com/example/demo_api/DemoApiApplication.java`: Spring Bootアプリケーション。簡単なAPIエンドポイントが定義されています。

# 概要
github actionsを使用して、コードの変更がプッシュされた際に自動的にビルドとテストが実行されるように設定されています。
アプリケーションはDockerfileを使用してDockerイメージとしてビルドされ、その後RenderのDeploy Hook APIを使用してRenderにデプロイされます。
ci.ymlファイルの定義として以下のような内容が含まれています。
- コードの変更がプッシュされた際にトリガーされる。
- gradle を使用してcheckstyleを使用してコードスタイルのチェックを行う。
- gradle を使用してビルドとテストを実行する。
- Dockerfileを使用してアプリケーションのDockerイメージをビルドし、github packagesにプッシュする。
- ビルドされたDockerイメージを、RenderのDeploy Hook APIを使用してRenderにデプロイする。


デプロイされたアプリケーションは、RenderのURLを通じてアクセスできます。  
- `https://sin1917-gradle-test.onrender.com/` にアクセスすると、"Welcome to the Demo API!" というメッセージが表示されます。  
- `https://sin1917-gradle-test.onrender.com/hello` にアクセスすると、"Hello, World!" というメッセージが表示されます。  
