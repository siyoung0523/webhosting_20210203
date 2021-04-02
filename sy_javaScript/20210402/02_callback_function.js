// 배열에 대해서 제공되는 함수 3가지
// forEach, map, filter
// 모두 콜백함수를 이용함

let numbers = [273, 52, 103, 32, 57]

//forEach : 배열의 각각의 요소에 접근하게해주는 메소드 ( 함수랑 같은 말)
numbers.forEach(function(value, index, array){//보통 'array'는 생략함
    console.log(`${index}번째 요소 : ${value}`)   
})
numbers = numbers.map(function(value, index, array){
    return value*value
})

// numbers = numbers.map(function(value, index, array){
//     return value*2
// })

// const power = function(value, index, array)
// {
//     return value*value
// }

 function power(value, index, array)
{
    return value*value
}
numbers = numbers.map(power)

numbers.forEach(console.log)
console.log(numbers)

//filter
//map이랑 마찬가지이긴 한데, 특정 조건을 만족하는 녀석만 추려내서 새로운 배열 만듦
const number2 = [0,1,2,3,4,5]
const eventNumbers = numbers2.filter(function(value)
{
    return value%2 === 0
})
console.log("원본 : " + number2)
console.log("원본 : " + eventNumbers)

//화살표 함수

const arrowFunc = (value) => value%2 ===0
const eventNumbers = numbers2.filter(arrowFunc)
console.log("원본 :" + number2)
console.log("원본 :" + eventNumbers)

//연속적으로 사용 가능
let numbers = [0,1,2,3,4,5,6,7,8,9]
numbers.filter((value) => value%2 ===0).forEach((value) =>{console.log(value)} )