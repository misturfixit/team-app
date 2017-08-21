function less(){
	var x = document.getElementById("elm");
	x.removeChild(x.lastChild);
}


function gittem(){
	document.getElementById("elm").innerHTML="PuTDeMNaMeSIN"+"<br>";
	var amnt = document.getElementById("pears").value;
		for (i = 1; i <= amnt; i++){
			var names=document.createElement("input");
				names.type="text";
				names.id="names";
				names.required=true;
				names.name="names[]";
				names.placeholder="Name Here";
				document.getElementById("elm").appendChild(names).value;
		}	
}				

function more(){
	var names = document.createElement("input");
		names.type="text";
		names.id="names";
		names.required=true;
		names.name="names[]";
		names.placeholder="Name Here";
		document.getElementById("elm").appendChild(names).value;
} 	

function practice(){
	window.location.href="/nput"
}

function culr(a){
	a.style.color="purple"
}
function colr(b){
	b.style.color="hsla(120,70%,40%,.53)"
}
function kulr(c){
	c.style.color="orange"
}
function qulr(d){
	d.style.color="firebrick"
}

function chiggychek(v){	
	for (i=0; i < v.length; i++){
		oof = document.getElementById("oof");
		var ck=document.createElement("input");
		ck.type="checkbox";
		ck.name="drop[]";
		ck.value=v[i];
		var label=document.createTextNode(v[i]);
		oof.appendChild(label);
		oof.appendChild(ck);
		//oof.appendChild(document.createElement("br"));
	}
}
