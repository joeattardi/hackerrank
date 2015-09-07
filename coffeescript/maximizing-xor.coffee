class InputReader
    constructor: ->
        @inputBuffer = ''
        @inputLines = []

        process.stdin.resume()
        process.stdin.setEncoding 'ascii'

    readInput: (callback) ->
        process.stdin.on('data', (data) =>
            @inputBuffer += data
        )

        process.stdin.on('end', =>            
            @inputLines = @inputBuffer.split '\n'
            callback this
        )

    readLine: -> 
        @inputLines.shift()

main = (input) ->
    l = parseInt input.readLine()
    r = parseInt input.readLine()

    maxXor = 0
    a = l
    while a <= r
        b = a
        while b <= r
            maxXor = Math.max maxXor, a ^ b
            b++
        a++

    console.log maxXor

input = new InputReader()
input.readInput main
