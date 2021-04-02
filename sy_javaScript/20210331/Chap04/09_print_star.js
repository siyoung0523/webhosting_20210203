// let output =''

// for(let i =1; i<10;i++)
// {
//     for(let j=10;i<j;j--)
//     {
//         output+='*'
//     }
//     output +='\n'
// }
// console.log(output)

// output = ''
// for(let i = 1; i < 10; i++)
// {
//     for(let j = 0; j<10-i ;j++)
//     {
//         output+=' '
//     }
//     for(let j = 0;j<i;j++)
//     {
//         output +='*'
//     }
//     output += '\n'
// }
// console.log(output)

output = ''
for(let i = 1; i < 10 ; i++)
{
    for(let j = 0; j<10-i ;j++)
    {
        output+=' '
    }
    for(let j = 0;j<((i*2)-1);j++)
    {
        output +='*'
    }

    output += '\n'
}
    console.log(output)

    output=''
for(let a = 1; a < 10 ; a++)
{
    for(let b = 0 ; b < a ; b++){
        output =' '
    }
    for(let c = 10 ; c <((a*2)-1);c-- )
    {
        output +='*'
    }
   
    output += '\n'
}
console.log(output)


