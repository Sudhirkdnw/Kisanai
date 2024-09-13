echo "BUILD START"
pip install setuptools
pip install -r requirements.txt

python manage.py makemigrations
python manage.py migrate
python manage.py collectstatic --no-input  # Avoid prompts during build

echo "BUILD COMPLETE"