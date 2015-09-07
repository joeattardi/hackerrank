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
    numCases = parseInt input.readLine()
    i = 0
    while (i < numCases) 
        n = parseInt input.readLine()
        x = Math.floor(n / 2)
        y = n - x
        console.log x * y
        i++

new InputReader().readInput(main)