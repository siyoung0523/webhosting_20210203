setTimeout(()=> { // 특정 시간 뒤에 시행
    console.log('1초뒤 실행함!')
}, 1* 1000) // 1000(=1초)뒤 실행

let count = 0;
let id = setInterval(()=> { // 지정한 시간마다 실행
    console.log('1초마다 실행함' + count)
    count++
}, 1*1000)

setTimeout(()=> { // 특정 지정 시간에 멈춤
    console.log('5초뒤 꺼짐')
    clearInterval(id)
}, 5*1000) // 1000ms(=5초)뒤 실행
