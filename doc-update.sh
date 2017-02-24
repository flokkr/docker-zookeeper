cp ../bigdata-base/readme-parts/* ./readme-parts/
ls readme-parts/* | sort | xargs cat > README.md
