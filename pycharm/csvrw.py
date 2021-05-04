import csv

def doRead():
    file = open("a.csv", "r")   #read모드로 a.csv를 염
    rd = csv.reader(file)       #읽는 버퍼 가져오기
    for line in rd:             #rd에서 한줄씩 꺼내면서 line에 넣기
        print(line)             #line 출력
    file.close()                #파일 닫기 [ 열고나면 꼭 닫아줘야함]

def doWrite():
    file = open("a.csv","w", newline='') #파일을 염 a.csv를 열고, 여는데 'w' write모드로 염.
    wr = csv.writer(file)
    wr.writerow(['1', 'test0', 'aaa'])
    wr.writerow(['2', 'test1', 'bb'])
    wr.writerow(['3', 'test2', 'cc'])
    file.close()