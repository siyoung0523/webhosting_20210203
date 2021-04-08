using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Test0407 //자바 package와 비슷함
{
    class Program
    {
        static void Main(string[] args) // class내에 static이 붙으면 class 메소드라고 불림.
        {
            // 1차원 배열 초기화
            int[] arrint = { 10, 20, 30, 40 }; //int arrint ={10,20,30,40}으로 해도 먹힘.
            for(int i=0; i<arrint.Length; i++)
            {
                Console.WriteLine(arrint[i] + " ");
                string str = string.Format("배열[{0}]:{1}", i, arrint[i]);
                Console.WriteLine(str);
            }

            // 1차원 배열 초기화2
            char[] arrCh = new char[4]
            {
                '이', '박', '김', '최'
            };
            for(int i = 0; i < arrCh.Length; i++)
            {
                Console.Write(arrCh[i] + " ");
            }
            Console.WriteLine();

            // 2차원 배열 초기화1
            int[,] arrInt2 = //[,] 2차원 배열을 말함
            {
                {1,2,3 }, {4,5,6}
            };

            for(int i = 0; i < 2; i++)
            {
                Console.WriteLine();
                for(int j = 0; j < 3; j++)
                {
                    Console.Write(arrInt2[i, j] + " ");
                }
            }
            Console.WriteLine();


            // 2차원 배열 초기화2
            const int SIZE_ROW = 2;
            const int SIZE_COL = 3;
            int[,] arrInt3 = new int[SIZE_ROW, SIZE_COL]
            {
                {10, 20, 30},
                {40, 50, 60}
            };
            for(int i = 0; i < SIZE_ROW; i++)
            {
                for(int j = 0; j<SIZE_COL; j++)
                {
                    Console.Write(arrInt2[i, j] + " ");
                }
                Console.WriteLine();
            }


            // 2차원 배열 초기화3
            string[][] arrStr1 = new string[2][];
            arrStr1[0] = new string[] { "홍길동", "김길동", "박길동" };
            arrStr1[1] = new string[] { "전우치" };
            for(int i = 0; i<arrStr1.Length; i++)
            {
                for(int j=0; j<arrStr1[i].Length; j++)
                {
                    Console.Write(arrStr1[i][j] + " ");
                }
                Console.WriteLine();
            }

            // 2차원 배열 초기화4
            int[][] arrInt4 = new int[3][];
            for(int i=0; i<arrInt4.Length;i++)
            {
                arrInt4[i] = new int[i + 1];
                for(int j = 0; j <arrInt4[i].Length; j++)
                {
                    arrInt4[i][j] = 10 + j;
                    Console.WriteLine(arrInt4[i][j] + " ");
                }
                Console.WriteLine();
            }

            //foreach
            int[] arrEach = { 1, 2, 3, 4, 5 };
            // var 제약 조건
            // 1. 지역변수만 사용 가능
            // 2. 변수선언 및 초기화
            foreach (var i in arrEach){
                Console.Write(i + " ");
            }
            Console.WriteLine();

            //foreach 2차원
            string[,] arrEach2 =
            {
                {"홍길동", "김길동" },
                {"hong", "kim" }
            };

            foreach(var str in arrEach2)
            {
                Console.Write(str + " ");
            }
            Console.WriteLine();

            // List
            List<string> list = new List<string>(); // 객체를 생성 (string 타입형 List 클래스 객체를 생성한다. <> 이건 제네틱 클래스 )
            list.Add("홍길동");
            list.Add("김길동");
            list.Add("박길동");
            list.RemoveAt(0); // [결국엔 배열과 비슷함 -> 인덱스가 존재] 인덱스 위치로 삭제
            list.Remove("김길동"); // 이름으로 삭제
            list.Insert(0, "전우치");
            for(int i = 0; i<list.Count; i++)
            {
                Console.Write(list[i] + " ");
            }
            Console.WriteLine();

            // hash table (key, value)
            Hashtable hTable = new Hashtable();
            hTable.Add(1, "홍길동1");
            hTable.Add(2, "김길동1");

            if( hTable.Contains(1))
            {
                Console.WriteLine(hTable[1]);
            }

            //딕셔너리
            Dictionary<string, string> dic = new Dictionary<string, string>();
            dic.Add("key1", "홍길동1");
            dic.Add("key2", "홍길동2");
            dic.Add("key3", "홍길동3");

            foreach(KeyValuePair<string,string> item in dic)
            {
                Console.WriteLine("{0}:{1}", item.Key, item.Value);
            }

            foreach (string key in dic.Keys) // key 값만 출력
            {
                Console.WriteLine(key);
            }

            foreach(string val in dic.Values) // 값들만 출력
            {
                Console.WriteLine(val);
            }
        }
    }
}
