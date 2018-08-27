<!-- ///////////////////////////////////////////////////////////////////////////////
// Belong to:
//	Eximbills Enterprise core System Ver 1.0  
//
//
// Auther & Date:
//	jkz 2006-05-26
//
// Changes:
//
//
// Notices:
//
//
/////////////////////////////////////////////////////////////////////////////// -->


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<?xml version="1.0" encoding="UTF-8"?>
	<html xmlns:Doc="urn:com.cs.tsu">
<head>
<META http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CS Eximbills Enterprise SWIFT TSU Message Viewer</title>
<LINK HREF="/TSU/theme/swift.css" TYPE="text/css" REL="stylesheet">
<style>
<!--
.sBU {
	width:30%;
	FONT-FAMILY:
	Verdana,Arial;
	FONT-SIZE:11px;
}
-->
</style>
<SCRIPT language = "javascript" src="../SYS_JS/SYS_BaseFunc_CAL.js"></SCRIPT>
<script language="JavaScript">
var fName = "";
var fValue = "";
var fDouble = "";
var tableID = "";
var  d = 1;

	function Swap(n){
	
	var x;
	y=document.getElementById(n);
	y=y.style;
	alert(y.display);
	if(y.display=="none"){
		y.display="block"		
		}
	else if(y.display=="block"){
		y.display="none";
		}
	}
			
function insertTSU(){
	var sd = tableID;
	var pp = document.all.tags('table');
	for(var i=0;i<pp.length;i++){
		var t = pp[i];
		if(t.id==sd){
			pp = t;
			break;
		}
	}
	//var pp = document.getElementById(tableID);
	if(fDouble=="T" || fName=="" || fValue=="")
		alert("FALSE");
	else{
		var index = 0;
		var row = pp.insertRow(index);
		row.className = "sBU";
		var checkCell = row.insertCell(0);
		checkCell.innerHTML = "<tr><td class=sBU height=25>"+fName+":<INPUT type=text name="+fValue+" id='"+fName+"' class=CHAR_M length=35 maxlength=35 onclick='tranColor()' tsu=N></td></tr>";
	}
	tranNoneColor();
	d = 3;
	fValue = "";
	fDouble = "";
}

function insertTSU(){
	var sd = "23";
	var pp = document.all.tags('tr');
	for(var i=0;i<pp.length;i++){
		var t = pp[i];
		if(t.id==sd){
			pp = t;
			break;
		}
	}
	//var pp = document.getElementById(tableID);
	if(fDouble=="T" || fName=="" || fValue=="")
		alert("FALSE");
	else{
		var index = 0;
		var row = pp.insertRow(index);
		row.className = "sBU";
		var checkCell = row.insertCell(0);
		checkCell.innerHTML = "<tr><td class=sBU height=25>"+fName+":<INPUT type=text name="+fValue+" id='"+fName+"' class=CHAR_M length=35 maxlength=35 onclick='tranColor()' tsu=N></td></tr>";
	}
	tranNoneColor();
	d = 3;
	fValue = "";
	fDouble = "";
}
function delTSU(){
	var sd = tableID;
	var pp = document.all.tags('table');
	for(var i=0;i<pp.length;i++){
		var t = pp[i];
		if(t.id==sd){
			pp = t;
			break;
		}
	}
	var index = 0;
	//alert("pp    "+pp);
	var checkBox = pp.getElementsByTagName("INPUT");
	//alert("checkBox    "+checkBox.length);
	for(index=0;index<checkBox.length;index++){
		var objCheck = checkBox[index];
		var obj=objCheck.parentNode;
		//alert(obj);
		if(objCheck.tsu=="Y"){
			//alert(objCheck.value);
			var row = pp.deleteRow(index);
			//pp.removeChild(obj);	
			break;
		}
	}
	d = 3;
}

function TSU_OnInit()
{        
	var oEle = document.mainform.elements;
	var nEelement= oEle.length;
	var oField = null;
	for(var nLoop=0; nLoop<nEelement; nLoop++)
	{
		oField=oEle[nLoop];
		if(oField.type=="text")
			oField.attachEvent("onclick", new Function("tranColor()"));
	}
}

function tranColor(){
tranNoneColor();
	var colo;
	//alert(event.srcElement.name +"  %  " +d + "  %   "+fDouble);
	if(d==3){
		d = 1;
		return ;
	}
	if(event.srcElement.tagName=="INPUT" && d==1){
		colo = "#CAE4FF";
		event.srcElement.tsu="Y";
		d=2;
	}
	else{
		colo = "none";
		event.srcElement.tsu="N";
		d=1;
	}
	fDouble = event.srcElement.alt;
	var cols = event.srcElement.parentElement.parentElement.children.length;
	var pobj =event.srcElement.parentElement;
	alert(pobj.name);
	for(var i=0;i<cols;i++){
		pobj.style.background=colo;
		pobj=pobj.nextSibling;
	}
	fName = event.srcElement.id;
	fValue = event.srcElement.name;
	tableID = fValue.substr(0,fValue.indexOf("_"));
}

function tranNoneColor(){
	var eme = document.mainform.elements;
	var oField = null;
	var colo = "none";
	for(var nLoop=0; nLoop<eme.length; nLoop++)
	{
		oField=eme[nLoop];
		var pobj =oField.parentElement;
		pobj.style.background=colo;
		pobj=pobj.nextSibling;
		oField.tsu="N";
	}
}
</script>
</head>
<body onLoad="TSU_OnInit()">
<form method="post" name="mainform">
<table cellspacing="0" cellpadding="0" border="0" width="99%">
<tr>
<TD style="height:22" colspan="5" class="Heading2">Acknowledgement (tsmt.001.001.02)</TD>
</tr>
<tr>
<TD style="height:22" colspan="5" class="ContentBorderTopLeft">.</TD>
</tr>
<tr>
<td class="ContentBorderLeft" align="right" height="22" width="3%">.</td><td colspan="10">
<table cellspacing="0" cellpadding="0" border="0" width="99%">
<tr>
<TD align="left" bgcolor="#ececec" colspan="1000"><input name="Doc:UsrTxRef_Doc:UsrTxRef" type="checkbox" value="11_Doc:UsrTxRef">
<a class="Heading3" style="cursor:hand" onClick="Swap('_Doc:UsrTxRef')">User Transaction Reference</a></TD>
<td><INPUT type="button" name="ID" length="6"  value="add" onClick="insertTSU()"><INPUT type="button" name="ID" length="6"  value="del" onClick="delTSU()" ></td>
</tr>
<tr>
<TD colspan="1000" width="95%" align="right">     
<DIV id="_Doc:UsrTxRef" style="DISPLAY:block;overflow: hidden; border: 0px  #000000;width:95%;width:95%;">
<table align="right" cellspacing="0" cellpadding="0" border="0" width="95%" id="Doc:UsrTxRef">
<tr>
<TD class=sBU height="25">Identification:<INPUT type="text" name="Doc:UsrTxRef_ID" id="Identification" class="CHAR_M" length="35" maxlength="35" value="ABCDEFGHIJKLMNOPQRST123456789012345" tsu="N"></TD>
</tr>
<tr id="23">
<TD align="left" bgcolor="#ececec" colspan="2"><input name="Doc:UsrTxRef_Doc:IdIssr" type="checkbox" value="Doc:UsrTxRef_Doc:IdIssr"><a class="Heading3" style="cursor:hand" onClick="Swap('_Doc:IdIssr')"> Identification Issuer
</a></TD>
</tr>
<tr>
<TD colspan="2" width="100%" align="right">
<DIV id="_Doc:IdIssr" style="DISPLAY:block;overflow: hidden; border: 0px  #000000;width:100%;">
<table align="right" cellspacing="0" cellpadding="0" border="0" width="95%" id="Doc:IdIssr">
<tr>
<TD style="width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;" height="25">BIC:<INPUT type="text" name="Doc:IdIssr_BIC" id="BIC" class="CHAR_M" length="35" maxlength="35" value="CHASUS31" tsu="N"></TD>
</tr>
<tr>
<TD style="width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;" height="25">BIC:<INPUT type="text" name="Doc:IdIssr_BIC" id="BIC" class="CHAR_M" length="35" maxlength="35" value="CHASUS32" tsu="N"></TD>
</tr>
<tr>
<TD style="width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;" height="25">BIC:<INPUT type="text" name="Doc:IdIssr_BIC" id="BIC" class="CHAR_M" length="35" maxlength="35" value="CHASUS33" tsu="N"></TD>
</tr>
</table>
</DIV>
</TD>
</tr>
<tr>
<TD align="left" bgcolor="#ececec" colspan="1000"><input name="Doc:UsrTxRef_Doc:Idt" type="checkbox" value="_Doc:Idt"><a class="Heading3" style="cursor:hand" onClick="Swap('_Doc:Idt')">Idt</a></TD>
</tr>
<tr>
<TD colspan="1000" width="95%" align="right">     
<DIV id="_Doc:Idt" style="DISPLAY:block;overflow: hidden; border: 0px  #000000;width:95%;">
<table align="right" cellspacing="0" cellpadding="0" border="0" width="95%" id="Doc:Idt">
<tr>
<TD style="width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;" height="25">Proposed Value:<INPUT type="text" name="Doc:Idt_Btrt" id="Proposed Value" class="CHAR_M" length="35" maxlength="35" value="S31" tsu="N"></TD>
</tr>
<tr>
<TD style="width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;" height="25">Proposed Value:<INPUT type="text" name="Doc:Idt_Btrt" id="Proposed Value" class="CHAR_M" length="35" maxlength="35" value="S31" tsu="N"></TD>
</tr>
</table>
</DIV>
</TD>
</tr>
</table>
</DIV>
</TD>
</tr>
</table>
</td>
</tr>
<tr>
<TD class="ContentBorderBottomLeft">.</TD><TD class="FieldName">.</TD>
</tr>
</table>
</form>
</body>
</html>









