 #!/bin/bash

# ログレベル
LOG_LEVELS=("INFO" "WARN" "ERROR" "DEBUG")

# ログメッセージ
LOG_MESSAGES=(
  "User logged in successfully"
  "Failed to connect to database"
  "Invalid input received"
  "Processing request"
  "Data saved to cache"
  "Could not find resource"
  "Request timed out"
)

# 無限ループでログを生成
while true; do
  # ランダムなログレベルを選択
  LEVEL=${LOG_LEVELS[$RANDOM % ${#LOG_LEVELS[@]}]}
  # ランダムなログメッセージを選択
  MESSAGE=${LOG_MESSAGES[$RANDOM % ${#LOG_MESSAGES[@]}]}
  # タイムスタンプとログレベル、メッセージを標準出力に出力
  TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')
  echo "$TIMESTAMP [$LEVEL] $MESSAGE"
  # 1秒待機
  sleep 1
done
