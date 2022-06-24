for file_path in $(git diff --cached --name-only); do
  [[ "$file_path" =~ ^.*\.py$ ]] && black --check $file_path && mypy $file_path
done

flake8
exit 0