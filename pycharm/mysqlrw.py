import pymysql


def selectMember():
    conn = pymysql.connect(host='127.0.0.1', user='root', password='1234', db='spro', charset='utf8')
    try:
        sql = 'select * from member'
        cursor = conn.cursor()
        cursor.execute(sql)
        result = cursor.fetchall()
        print(result)
        for row in result:
            print(row[1], row[2], row[3])

    except:
        pass

    finally:
        conn.close()


def insertMember():
    print("절로오나")
    conn = pymysql.connect(host='127.0.0.1', user='root', password='1234', db='spro', charset='utf8')
    try:
        sql = 'insert into member (id, pw, name, phone) values (%s,%s,%s,%s)'  # 서식 문자로 들어오도록
        cursor = conn.cursor()
        cursor.execute(sql, ('cc', 'cc', 'cc', 'cc'))  # %s에 값 넣어줌.
        cursor.execute(sql, ('dd', 'dd', 'dd', 'dd'))
        conn.commit()  # commit
    except:
        pass
    finally:
        conn.close()
