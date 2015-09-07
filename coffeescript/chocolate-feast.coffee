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
        [money, price, discount] = (parseInt(n) for n in input.readLine().split(' '))
        totalChocolates = Math.floor money / price
        wrappers = totalChocolates
        while wrappers >= discount
            freeChocolates = Math.floor wrappers / discount
            wrappers = wrappers - (freeChocolates * discount) + freeChocolates
            totalChocolates += freeChocolates
        console.log totalChocolates
        i++

new InputReader().readInput main