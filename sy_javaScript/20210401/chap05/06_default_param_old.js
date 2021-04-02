function master(name, age)
{
    // name = typeof(name) == undefined ? name : '이동준'
    // age = typeof(age) == undefined ? age : 10
    name = name || '이동준'
    age = age || 10

    console.log('반가워요'+name+'님')
    console.log('당신의 나이는' + age + '세 입니다.')
}
master() // 기본 매개변수 값인 '이동준'을 사용함
master('이나겸')
master('박명회', 50)
