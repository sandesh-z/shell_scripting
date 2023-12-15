## python script to translate all enligsh value of column A and write to Column B in google sheet.

import gspread
from googletrans import Translator
from oauth2client.service_account import ServiceAccountCredentials

def translate_column(sheet, source_column, target_column, target_language):
    worksheet = sheet.get_worksheet(0)  # Assuming the data is in the first sheet

    # Fetch all values from source column
    source_values = worksheet.col_values(source_column)

    # Initialize Google Translator
    translator = Translator()

    # Translate and write to target column
    for i, source_text in enumerate(source_values):
        if i==0:continue
        if source_text:  # Skip empty cells
            translation = translator.translate(source_text, dest=target_language).text
            worksheet.update_cell(i + 1, target_column, translation)

def main():
    #https://docs.google.com/spreadsheets/d/1aBcDeFgHiJkLmNopQrStUvWxYzZaBcdEfGhIjKlMnoPQ/edit
    #In this URL, the key is the long string of characters between the /d/ and the next /.
    # In this case, the key is 1aBcDeFgHiJkLmNopQrStUvWxYzZaBcdEfGhIjKlMnoPQ.
    sheet_key = '16BTt5iD7AwcDexI7vGBMmR0QB30xaL9fQ1-BSnZczgU'
    source_column_index = 2  # Column B
    target_column_index = 3  # Column C
    target_language = 'ne'  # Change this to the desired target language code

    # Load Google Sheets credentials
    scope = ['https://spreadsheets.google.com/feeds', 'https://www.googleapis.com/auth/drive']
    creds = ServiceAccountCredentials.from_json_keyfile_name('/home/sandesh/Desktop/Python/my-map-project-362008-49e748329f55.json', scope)
    client = gspread.authorize(creds)

    # Open the Google Sheet
    sheet = client.open_by_key(sheet_key)

    # Translate and update the sheet
    translate_column(sheet, source_column_index, target_column_index, target_language)

if __name__ == "__main__":
    main()