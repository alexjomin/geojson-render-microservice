from geojson_to_img import Render
from flask import Flask, request, Response, make_response

app = Flask(__name__)

@app.route("/", methods=['POST'])
def render():
    geojson = request.data
    r = Render(geojson)
    i = r.process()

    response = make_response(i)
    response.headers['Content-Type'] = 'image/jpeg'
    response.headers['Content-Disposition'] = 'attachment; filename=img.jpg'
    return response

if __name__ == "__main__":
    app.run(host='0.0.0.0')