using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Class1
{
    class Class1
    {
        static void Main(string[] args)
        {
            //10진수를 입력받아 2진수로 출력하는 프로그램
            //1. 입력받는 값의 범위는 1~65535까지
            //2. int 배열크기를 16으로 사용하여 한개의 공간에
            //이진수 0,1 저장.
            //3. 10진수값을 이진수로 변경할때 비트 범위에맞게 출력.
            //--> 8을 입력하면 00001000, 255를 입력하면 11111111
            //--> 256입력 0000000100000000
            //--> 65535입력 1111111111111111            
            Console.Write("10진수 입력(1~65536): ");
            int n = Convert.ToInt32(Console.ReadLine());
            int[] binArr = dec2bin(n);
            int start = binArr.Length - 1;
            if (n <= 255)
            {
                start = 7;
            }
            else if (n <= 65535)
            {
                start = 15;
            }
            for (int i = start; i >= 0; i--)
            {
                Console.Write(binArr[i]);
            }
            Console.WriteLine();
        }
        public static int[] dec2bin(int n)
        {
            int[] arr = new int[16];
            int idx = 0;
            while (n != 1)
            {
                arr[idx++] = n % 2;
                n /= 2;
            }
            arr[idx] = n;
            return arr;
        }
    }
}
