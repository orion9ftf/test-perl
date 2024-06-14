import face_recognition
import requests
from bs4 import BeautifulSoup
import os

def download_image(url):
    response = requests.get(url)
    if response.status_code == 200:
        filename = url.split("/")[-1]
        with open(filename, 'wb') as f:
            f.write(response.content)
        return filename
    return None

def search_face(reference_image_path, urls):
    known_image = face_recognition.load_image_file(reference_image_path)
    known_encoding = face_recognition.face_encodings(known_image)[0]
    
    matches = []
    
    for url in urls:
        image_filename = download_image(url)
        if image_filename:
            unknown_image = face_recognition.load_image_file(image_filename)
            try:
                unknown_encoding = face_recognition.face_encodings(unknown_image)[0]
                results = face_recognition.compare_faces([known_encoding], unknown_encoding)
                if results[0]:
                    matches.append(url)
            except IndexError:
                continue
            finally:
                os.remove(image_filename)
    
    return matches

if __name__ == "__main__":
    import sys
    reference_image_path = sys.argv[1]
    urls = sys.argv[2:]
    matches = search_face(reference_image_path, urls)
    for match in matches:
        print(f"Match found: {match}")

