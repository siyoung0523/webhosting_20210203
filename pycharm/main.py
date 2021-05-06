# from csvrw import doRead, doWrite
# from mysqlrw import  selectMember, insertMember
# from daegudb import read_csv_write_mysql

from flask import Flask   #flask.py라는 파일안에 FLASK클래스를 가져오는 것.

app =Flask(__name__) #객체 생성 하는 것 new Flask와 같음
@app.route("/") #경로
def index():
    return "잘되나.."
#Flask객체 생성해서 어플이라는 변수안에 넣고 인덱스 들어가기 전에 루트 경로로 들어오게 된다면 index실행

if __name__ == '__main__':
    app.run(host="127.0.0.1", debug=True)
    #read_csv_write_mysql()
    # doWrite()
    # doRead()
    # insertMember()
    # selectMember()
    #cnrl + alt + shift + l 자동정렬
