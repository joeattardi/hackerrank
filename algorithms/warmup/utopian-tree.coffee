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

getTreeHeight = (cycles) ->
    currCycle = 0
    treeHeight = 1
    while currCycle < cycles
        treeHeight = if currCycle % 2 is 0 then treeHeight * 2 else treeHeight + 1
        currCycle++
    treeHeight

input = new InputReader()
input.readInput ->
    n = parseInt input.readLine()
    i = 0
    while i < n
        cycles = parseInt input.readLine()
        console.log getTreeHeight cycles
        i++
