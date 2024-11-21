# test_app.py
import requests

def test_homepage():
    response = requests.get("http://localhost:5000")
    assert response.status_code == 200
    assert response.text == "Hello, Docker!"

if _name_ == "_main_":
    test_homepage()
    print("Tests passed!")
