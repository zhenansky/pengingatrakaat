from flask import Flask
from .api import api_bp

def create_app():
    app = Flask(__name__)
    
    # Daftarkan blueprint API
    app.register_blueprint(api_bp, url_prefix='/api')

    return app
