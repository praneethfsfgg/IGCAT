# IGACT Flask deployment

The original Flask app passed all 41 automated tests locally. Hosting itself has not been verified.

## Railway from GitHub

1. Put the contents of this project folder at the root of a GitHub repository. Do not upload the ZIP as a single file. Do not commit .env, .venv, credentials, or a database with real data.
2. Create an empty Railway service and attach a persistent volume at /data before deploying.
3. Configure SECRET_KEY with a randomly generated value of at least 32 characters and INITIAL_DEMO_PASSWORD with a private password of at least 16 characters. Do not put those values into source code.
4. Connect the GitHub repository. Railway detects Dockerfile and railway.json. The app listens on Railway's PORT.
5. Generate a Railway domain. The /login health check must succeed before considering deployment complete.
6. Sign in using a demo email from README.md and your INITIAL_DEMO_PASSWORD. The original bundled password is replaced for the new hosted database.

The database and uploads are kept in /data. Startup seeds only an empty database and never resets an existing one. INITIAL_DEMO_PASSWORD only applies when creating the initial users. Do not run scripts/reset_demo.py against hosted data.

Use synthetic data only for this academic demonstration. No real healthcare organisation or patient records are connected.
