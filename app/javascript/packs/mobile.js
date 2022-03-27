
console.log('mobile hi')

function showhide()
{
  


  
  let showdiv=document.getElementById('showside')
  if(showdiv.classList.contains('hide'))
  {
    showdiv.classList.remove('hide');
  }
  else
  {
    showdiv.classList.add('hide');
  }

}


eve();

function eve()
{
  console.log("mobile")
	
  document.querySelector("#shwd").addEventListener('click',showhide)
}


