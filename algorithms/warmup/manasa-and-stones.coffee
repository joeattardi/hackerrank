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
    while i < numCases
        numStones = parseInt input.readLine()
        a = parseInt input.readLine()
        b = parseInt input.readLine()
        j = 0
        result = []
        while j < numStones
            lastStone = ((j) * a) + ((numStones - 1 - j) * b)
            result.push lastStone if result.indexOf(lastStone) < 0
            j++
        result.sort((a, b) -> a - b)
        console.log result.join ' '
        i++

new InputReader().readInput main