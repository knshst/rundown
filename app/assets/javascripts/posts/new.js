function number() {
  var num0 = document.getElementById('num0').value;
  var num1 = document.getElementById('num1').value;
  document.getElementById( "start" ).value = parseInt(num0) * 60 + parseInt(num1);
}