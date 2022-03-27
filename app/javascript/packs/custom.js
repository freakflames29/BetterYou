
console.log('hi')

function showhide()
{
  console.log("hichki");
}


eve();

function eve()
{
  console.log("jdskljdsakdjsakdjsakdsakldsjad")
	document.querySelector("body > div.container > div.flash > span > i").addEventListener('click',close)
  document.querySelector("#shwd").addEventListener('click',showhide)
}


function close() {
    document.querySelector("body > div.container > div.flash").remove();
}

