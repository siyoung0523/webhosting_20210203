using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Test0407
{
    class Test0407
    {
        static void Main(string[] args)
        {
            // 10진수를 입력받아 2진수로 출력하는 프로그램
            // 1. 입력받는 값의 범위는 1~65535 사잇값 2^16
            // 2. int 배열크기를 16으로 사용하여 한 개의 공간에 이진수 0, 1 저장.
            // 3. 10진수 값을 이진수로 변경할 때 비트 범위에 맞게 출력.
            //--> 8을 입력하면 00001000, 255를 입력하면 11111111
            //--> 256입력 00000001 00000000
            //--> 65535입력 11111111 11111111
            
            int[] arr = new int[16];
            
            Console.Write("숫자 입력: ");
            string str = Console.ReadLine();//ReadLine 입력 받는 것. 입력받을때 기본이 String
            int num = Convert.ToInt32(str);  // Conver.ToInt32를 통해 String을 Int로 바꿈

            if (num < 256 && num>1)
            {
                for (int i = 8; i > 0; i--)
                {
                    arr[i] = num % 2;
                    num = num / 2;
                    Console.Write(arr[i] + " ");
                
                }
                Console.WriteLine(" ");
            }

            else if (num < 65536)
            {
                for (int i = 15; i > -1 ; i--)
                {
                    arr[i] = num % 2;
                    num = num / 2;
                    Console.Write(arr[i] + " ");
                }
            }
            else
                Console.WriteLine("1과 65536사잇값을 입력해주세요");
        }
    }
}
