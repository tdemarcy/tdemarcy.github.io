#!/bin/bash

md_files=("home" "resume" "README")
html_files=("index" "resume" "about")

for ((i = 0; i < ${#md_files[@]}; i++)); do
    pandoc "${md_files[i]}.md" \
        --from=commonmark+auto_identifiers \
        --template=template.html \
        --metadata title="Thomas Demarcy - ${md_files[i]^}" \
        --output="${html_files[i]}.html"
done
