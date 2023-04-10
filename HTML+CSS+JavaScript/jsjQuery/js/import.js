var userName = prompt("당신의 이름은?","");
var userHeight = prompt("당신의 키는?","0");
var userWeight = prompt("당신의 체중은?", "0");

var normalWeight = (userHeight-100)*0.9;
var result = userWeight >= userWeight -5 && userHeight <= userHeight +5; //오차 +- 5
result = result ? "적정체중입니다":"적정체중이 아닙니다";
document.write(userName+"님은"+result);