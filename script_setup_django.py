from subprocess import run


if __name__ == '__main__':
    run(["pip", "install", "django", "django-cors-headers", "djangorestframework", "coverage"])
    run(["python", "django-admin", "startproject", "backend", "."])
    run(["npx", "create-react-app", "frontend", "."])
    run(["npm", "install", "--prefix", "./frontend", "react-router-dom", "@material-ui/core"])
    run(['psql', '-f', 'create_db.sql'])
    
