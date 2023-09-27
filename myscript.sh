OUTDIR="."
LOCAL_GHOST="http://localhost:2368/"
YMD=$(date +"%Y-%m-%d-%H-%M-%S")

# published 폴더로 이동
cd published

# 웹사이트 다운로드
wget -r -nH -P "$OUTDIR" -E -T 2 -np -k "$LOCAL_GHOST"

# 변경된 파일 스테이징
git add . -f

# 커밋 메시지 작성
git commit -m "Update: new post $YMD"

# 변경사항 푸시
git push origin published

