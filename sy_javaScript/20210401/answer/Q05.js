let output = ''
const size = 5

for(let i = 1; i <=size ; i++) // 삼각형
{
    for( j = size ; j > i ; j--)
        output += ' '
    for( let k = 0; k < 2*i -1 ; k++)
        output +='*'

    output +='\n'
    }
for(let i = size -1; i > 0; i--)//역삼각형
{
    for( j = size ; j > i ; j--)
        output += ' '
    for( let k = 0; k < 2*i -1 ; k++)
        output +='*'

    output +='\n'
}
console.log(output)