FILE_NAME=$(basename -- "$1")
JUST_FILE="${FILE_NAME%%.*}"
FILE_EXT="${1##*.}"

NEW_FILE="${JUST_FILE}_thumb.${FILE_EXT}"

convert $1 -resize "304x304^" -gravity center -crop 304x220+0+0 +repage $NEW_FILE

# echo "FILE_NAME = " $FILE_NAME
# echo "JUST_FILE = " $JUST_FILE
# echo "FILE_EXT = " $FILE_EXT

