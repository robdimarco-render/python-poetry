installed_python_version=$(python -c 'import platform; print(platform.python_version())')

if [[ "$installed_python_version" != "3.11.8" ]]; then 
  echo "Have version $installed_python_version"
  exit 1
fi
gunicorn app:app --chdir ./poetry_flask
