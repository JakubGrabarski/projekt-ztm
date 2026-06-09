Cześć! Oto nasz projekt ZTM. 

Cel projektu:
Głównym celem stworzonych skryptów jest bieżące monitorowanie dostępności i obciążenia floty transportu miejskiego. System umożliwia precyzyjne śledzenie lokalizacji poszczególnych pojazdów na interaktywnej mapie. Ponadto narzędzie dostarcza kluczowych statystyk w czasie rzeczywistym, pozwalając błyskawicznie sprawdzić aktualną liczbę kursujących autobusów i tramwajów oraz zidentyfikować najbardziej aktywne linie komunikacyjne.

Jak to odpalić u siebie:
1. Zainstaluj i włącz program Docker Desktop.
2. Otwórz Terminal na swoim Macu/PC w tym folderze i wpisz:
   docker compose up -d
3. Wejdź do Jupitera: http://localhost:8888 (hasło: ztm123)
4. Wejdź do pgAdmina (baza): http://localhost:5050 
   - Login: admin@admin.com
   - Hasło: admin
   - Dane połączenia z bazą: host='ztm-postgres', port=5432, database='ztm_data', user='postgres', password='ztm123'

W Jupyterze odpal najpierw producer.ipynb, a potem consumer_baza.ipynb, żeby baza zaczęła zbierać nowe dane!