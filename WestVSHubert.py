import requests
from bs4 import BeautifulSoup

hubert = requests.get("https://open.spotify.com/artist/6Vhpr2gUnE0VcGjzqDmM62")
west = requests.get("https://open.spotify.com/artist/1bOTP9P3CS97UwhBm2WekK")

print(hubert)
print(west)

soupH = BeautifulSoup(hubert.content, 'html.parser')
soupW = BeautifulSoup(west.content, 'html.parser')

hubertListeners = int(soupH.get_text().split("Hubert.")[2].split(" monthly listeners")[0].replace(',',''))
westListeners = int(soupW.get_text().split("West")[2].split(" monthly listeners")[0].replace(',',''))

print("Hubert. :	", hubertListeners)
print("West: 	", westListeners)

