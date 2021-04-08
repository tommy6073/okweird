#!/bin/bash

echo "Making a new blog post"
echo "Slug?"
read -r slug
echo "Title?"
read -r title
date=$(date '+%Y-%m-%d %H:%M')

slug_dir="./content/blog/blog/$slug"
mkdir "$slug_dir"
cat > "$slug_dir/index.md" << END
---
title: $title
date: "$date"
---
END
