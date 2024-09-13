echo "BUILD START"

# Activate virtualenv if required, or check Python path
if command -v python3 &>/dev/null; then
    PYTHON_CMD=python3
elif command -v python &>/dev/null; then
    PYTHON_CMD=python
else
    echo "Python is not installed."
    exit 1
fi

# Install necessary packages
$PYTHON_CMD -m ensurepip --upgrade
$PYTHON_CMD -m pip install -r requirements.txt

# Django specific commands
$PYTHON_CMD manage.py makemigrations
$PYTHON_CMD manage.py migrate
$PYTHON_CMD manage.py collectstatic --noinput

echo "BUILD COMPLETE"
