window.onload=function(){
var par = decodeURI(window.location.search);
var room = document.getElementById("room_name");  //뒤에서부터 짜르면 좋다
var money = document.getElementById("room_money");
//cosole.log(par);
var data = par.split("&pmoney=");
var data2 = data[0].split("?pnm=");

room.innerText = data2[1];
money.innerText = Number(data[1]).toLocaleString()+"원"; //원에 toLocaleString 하면 , 가 찍힘
}
