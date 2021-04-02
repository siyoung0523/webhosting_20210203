let start ="1"
for(let i = 0; i < 20 ; i++)
{
    console.log((Number(i)+1)+"번 째 : " + start)
    let end = "" //누적 변수
    let number = start.charAt(0) //읽을 숫자
    let count = 0 // 읽은 숫자의 개수
    for(let j = 0; j < start.length ; j++)
    {
        if(number !=start.charAt(j))
        {
            end = end + number + count
            count = 1
            number = start.charAt(j)
        }
        else
            count++
    }
    end = end + number + count
    start = end
}