#!/usr/bin/env sh

# If UA (and referer) is not set, the website denies access
USER_AGENT="User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0"

for variant in "thin" "ultralight" "light" "regular" "medium" "semibold" "bold" "heavy" "black"; do
  curl -O -H "${USER_AGENT}" -H "Referer: https://www.apple.com/wss" https://www.apple.com/wss/fonts/SF-Pro-JP/v1/SFProJP_${variant}.ttf
done