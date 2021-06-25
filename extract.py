import requests

downloadUrl = 'https://download.open.fda.gov/drug/event/2004q1/drug-event-0001-of-0005.json.zip'

req = requests.get(downloadUrl)
filename = req.url[downloadUrl.rfind('/')+1:]

with open(filename, 'wb') as f:
    for chunk in req.iter_content(chunk_size=8192):
        if chunk:
            f.write(chunk)

def download_file(url, filename=''):
    try:
        if filename:
            pass
        else:
            filename = req.url[downloadUrl.rfind('/')+1:]

        with requests.get(url) as req:
            with open(filename, 'wb') as f:
                for chunk in req.iter_content(chunk_size=8192):
                    if chunk:
                        f.write(chunk)
            return filename
    except Exception as e:
        print(e)
        return None


download_link = 'https://download.open.fda.gov/drug/event/2004q1/drug-event-0002-of-0005.json.zip'
download_file(download_link,'drug-event-0002-of-0005.json.zip')

