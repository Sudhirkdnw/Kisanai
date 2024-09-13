echo "BUILD START"

# Activate virtual environment
source venv/bin/activate

# Install dependencies
pip install --upgrade pip
pip install -r requirements.txt

# Run Django commands
python manage.py makemigrations
python manage.py migrate
python manage.py tailwind install
python manage.py collectstatic --noinput
python manage.py tailwind start

echo "MIGRATION END"
