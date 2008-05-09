
function add(){
        //On compte le nombre de label et on selectionne le premier fieldset
        var count = document.getElementsByTagName("input").length-5;
        var form = document.getElementById("players");
        count ++;
        
        //creation du label( <label>Valeur x <input type="text" name="nomx" value="" /></label>)  
		var p = document.createElement("p");
		//var nom_input = document.createTextNode("Nom de l'utilisateur "+count+"");
        //var b = document.createElement("b");
		//b.innerHTML("test");
		
        
		var input = document.createElement("input");
        input.setAttribute("type","text");
        input.setAttribute("name","player"+count+"[nom]");
		input.setAttribute("id", "player"+count+"_nom")
		input.setAttribute("size", "30")
        input.setAttribute("value","");

		
		//p.appendChild(b);
        p.appendChild(input);

		var div = document.createElement("div");
		div.setAttribute("class", "auto_complete");
		div.setAttribute("id", "player"+count+"_nom_auto_complete");
		
		p.appendChild(div);
		
		var script = document.createElement("script");
		script.innerHTML = "\n//<![CDATA[\nvar player"+count+"_nom_auto_completer = new Ajax.Autocompleter('player"+count+"_nom', 'player"+count+"_nom_auto_complete', '/walls/auto_complete_for_player_nom', {paramName:'player[nom]'})\n//]]>\n";
		//var script = document.createTextNode("<script type='text/javascript'>\n//<![CDATA[\nvar player1_nom_auto_completer = new Ajax.Autocompleter('player1_nom', 'player1_nom_auto_complete', '/walls/auto_complete_for_player_nom', {paramName:'player[nom]'})\n//]]>\n</script>");
		p.appendChild(script);
		//var ['player'+count+'_nom_auto_completer'] = new Ajax.Autocompleter('player'+count+'_nom', 'player'+count'_nom_auto_complete', '/walls/auto_complete_for_player_nom', {paramName:'player[nom]'});
        
        //Creation des element br et p ( <p class="lien">Supprimer</p><br /> )
        //var del_text = document.createTextNode("Supprimer");
       // var lien_del = document.createElement("p");
       // lien_del.setAttribute("class","lien");
      //  lien_del.setAttribute("className","lien");

        
      //  lien_del.appendChild(del_text);

        //On raccroche ici tous nos elements virtuels a une balise de notre fichier XHTML. Ils sont alors affiches   
    //    p.appendChild(lien_del);
        form.appendChild(p);
document.getElementById("players_posted_number").value++;
        
}

