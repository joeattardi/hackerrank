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
    n = parseInt input.readLine()
    arr = (parseInt str for str in input.readLine().split ' ')
    testArr = []
    arr.forEach (i) ->
        index = testArr.indexOf i
        if index >= 0
            testArr.splice index, 1
        else
            testArr.push i
    console.log testArr[0]

new InputReader().readInput(main)