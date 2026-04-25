# 1. ビルド用の環境（JDK）を用意
FROM eclipse-temurin:21-jdk-jammy AS factory
WORKDIR /app

# 2. プロジェクトファイルをコピー
COPY . .

# 3. ビルド実行（gradlewに実行権限を与えてからビルド）-x testでテストをスキップ
RUN chmod +x ./gradlew
RUN ./gradlew clean build -x test

# 4. 実行用の軽量な環境（JRE）に切り替え
FROM eclipse-temurin:21-jre-jammy
WORKDIR /app

# 5. ビルドされたJARファイルだけをコピー
COPY --from=factory /app/build/libs/*.jar app.jar

# 6. アプリを起動
ENTRYPOINT ["java", "-jar", "app.jar"]