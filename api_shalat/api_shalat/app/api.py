from flask import Flask, request, jsonify, Blueprint
from .detector import detect_rukuk
from flask_cors import CORS

app = Flask(__name__)
CORS(app)

api_bp = Blueprint('api', __name__)
rukuk_count = 0

@api_bp.route('/detect_rukuk', methods=['POST'])
def detect_rukuk_api():
    global rukuk_count

    try:
        # Retrieve JSON data from the request
        data = request.get_json()

        # Extract the 'frame' from the JSON data
        frame_data = data.get('frame')

        # Ensure 'frame' is not None before processing
        if frame_data is not None:
            # Your code for processing the frame
            detect_rukuk(frame_data)

            # Update rukuk count
            rukuk_count += 1

            # Return the result as JSON
            return jsonify({'rukuk_detected': True, 'rukuk_count': rukuk_count})
        else:
            return jsonify({'error': 'Invalid or missing frame data'})

    except Exception as e:
        return jsonify({'error': str(e)})
