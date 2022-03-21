let showbtn=document.getElementById('show_button');
eve()
function eve()
{
	showbtn.addEventListener('click',showtask)
}
function showtask()
{
	let div=document.getElementById('taskdiv');

	showbtn.classList.add('hidden');
	div.classList.remove('hidden');
}

console.log('hi')