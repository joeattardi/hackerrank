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
        @inputLines.splice(0, 1)[0]

input = new InputReader()
input.readInput ->
    numLines = parseInt input.readLine()
    for i in [0..(numLines - 1)]
        [num1, num2] = input.readLine().split(' ')
        console.log parseInt(num1) + parseInt(num2)