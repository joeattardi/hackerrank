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

getTopicCount = (person1, person2) ->
    topicCount = 0
    i = 0
    while i < person1.length
        if person1[i] is '1' or person2[i] is '1'
            topicCount++
        i++
    topicCount

main = (input) ->
    [numPeople, numTopics] = (parseInt n for n in input.readLine().split ' ')
    people = []
    
    i = 0
    while i < numPeople
        people.push input.readLine()
        i++

    maxTopics = 0
    teamTotals = {}

    people.forEach (person, index) ->
        j = index
        while j < people.length
            topicCount = getTopicCount person, people[j]
            maxTopics = Math.max maxTopics, topicCount
            teamsWithTopicCount = teamTotals[topicCount] or 0
            teamTotals[topicCount] = ++teamsWithTopicCount
            j++

    console.log maxTopics
    console.log teamTotals[maxTopics]

new InputReader().readInput main