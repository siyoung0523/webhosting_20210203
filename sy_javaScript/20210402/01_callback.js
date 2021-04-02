function callThreeTimes(callback) //함수를 정의(선언) 한 것
{
    for(let i = 0; i < 3; i++)
    callback(i)
}

function print(i) // 함수를 정의(선언) 한 것
{
    console.log(i+"번 째")
}

//아래 둘 다 결과가 똑같음.
callThreeTimes(print)

callThreeTimes( // 함수를 호출한 것
    function print(i)
    {
        console.log(i+"번 째")
    }
)
