import pymysql
import DataExtraction as DE
import DataSaving as ds

from flask import Flask, request
app = Flask(__name__)
@app.route('/PDF', methods = ['POST'])

def get_PDF():
    file = request.files.get('PDF')
    print("start...")
    print(file.filename)
    file.save('PBSP.pdf')
    path = "PBSP.pdf"
    extracted_data = DE.PBSPextract(path)
    ds.SavingData(extracted_data)
    print("end...")
    return "Success"

if __name__ == '__main__':
    app.run(host = '0.0.0.0', port = 5000)
