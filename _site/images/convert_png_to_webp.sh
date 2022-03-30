for file in *.png
do
    cwebp -q 80 "$file" -o "${file/.png/.webp}"
    rm "$file"
done

for file in *.jpg
do
    cwebp -q 80 "$file" -o "${file/.jpg/.webp}"
    rm "$file"
done
