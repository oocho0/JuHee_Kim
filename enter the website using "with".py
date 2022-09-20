import urllib.request

with urllib.request.urlopen('http://python.org/') as response:
    html = response.read(1000)
    print(html)
