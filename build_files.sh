
echo "BUILD START"

# Install dependencies
pip install -r requirements.txt

# Run Django management commands
python manage.py makemigrations
python manage.py migrate
python manage.py tailwind install

# Collect static files
python manage.py collectstatic --noinput

# Start tailwind (if needed, otherwise remove this line)
python manage.py tailwind start

echo "BUILD COMPLETE"