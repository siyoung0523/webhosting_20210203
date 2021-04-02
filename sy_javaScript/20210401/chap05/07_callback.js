function callThreeTime(callback)
{
    for(let i = 0; i < 3; i ++)
    callback(i)
}

function print(i)
{
    console.log(`${i}번째 함수 호출`)
}

callThreeTime(print) // 프린트라는 함수를 넣은 것

callThreeTime // 함수 원형을 그대로 넣은 것
(
    function(i)
    {
        console.log(`${i}번째 함수 호출`)
    }
)

