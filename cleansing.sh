urls=$(curl -s https://www.ishampoo.jp/kaiseki/cleansing |
    grep href  |
    tail +39 |
    head -204 |
    sed -n -e 's/^.*href="//; s/">.*$//p' |
    awk '{print "https://www.ishampoo.jp"$1}')

for i in $urls; do
    contents=$(curl -s $i |
    html2text)
    if [[ "$contents" == *ヒアルロン酸Na* ]] && [[ "$contents" == *ビタミンC* ]]; then

        if [[ "$(uname)" == Darwin ]]; then
            open "$i"
        fi
        if [[ "$(uname)" == Linux ]]; then
            xdg-open "$i"
        fi
    fi
done
