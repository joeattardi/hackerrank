// https://www.hackerrank.com/challenges/bon-appetit
function processData(input) {
  input = input.split('\n')
  
  var line = input[0].split(' ');
  const numItems = parseInt(line[0]);
  const allergyItem = parseInt(line[1]);
  
  const costs = input[1].split(' ').map(numStr => parseInt(numStr, 10));
  const charged = parseInt(input[2]);

  const total = costs.reduce((total, cost) => total + cost, 0);
  const shareWithoutAllergyItem = ((total - costs[allergyItem]) / 2);

  if (charged === shareWithoutAllergyItem) {
    console.log('Bon Appetit');
  } else {
    console.log(charged - shareWithoutAllergyItem);
  } 
} 

process.stdin.resume();
process.stdin.setEncoding("ascii");
_input = "";
process.stdin.on("data", function (input) {
    _input += input;
});

process.stdin.on("end", function () {
   processData(_input);
});

