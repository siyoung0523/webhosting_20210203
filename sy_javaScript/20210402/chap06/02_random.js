//Math 객체(js에서 제공해주는 객체임. Number 객체 등등도 있으나 생략!)
const num = Math.random() //Math.random은 0이상 1미만 랜덤 출력

console.log('0이상 1미만')
console.log(num)

console.log('랜덤 숫자 정수')
console.log('-5부터 5사이의 값')
console.log(Math.floor(num*10-5)) // Math.floor()는 괄호안에 있는 값의 소수버림
console.log('1부터 10사이의 값')
console.log(Math.floor((num*10)+1))