<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
	<xsl:include href="commonality.xsl"/>
	<xsl:template match="Doc:Document/Doc:tsmt.001.001.01">
		<html>
			<head>
				<title>Swift in jkz</title>
				<LINK REL="stylesheet" TYPE="text/css" HREF="../theme/swift.css"/>
				<script language="JavaScript">
			function Swap(n){
			var x;
			y=document.getElementById(n);
			y=y.style;
			if(y.display=="none"){
				y.display="block"		
				}
			else if(y.display=="block"){
				y.display="none";
				}
				getDetailed(n);
			}
			function total(node){ 
				var temp=node.substring(4,node.length); 
				return temp; 
			} 
			function getRequest(){
			var request=false;
			if (window.XMLHttpRequest) { 
		
					request = new XMLHttpRequest();
					if (request.overrideMimeType) {
						request.overrideMimeType('text/xml');
					}
				} else if (window.ActiveXObject) { 
            try {
                request = new ActiveXObject("Msxml2.XMLHTTP");
            } catch (e) {
                try {
                    request = new ActiveXObject("Microsoft.XMLHTTP");
                } catch (e) {}
            }
        }
					
        if (!request) {
            alert('Giving up :( Cannot create an XMLHTTP instance');
            return false;
        }
	return request;
}
	function getDetailed(strNodeId){
		var url = "../servlets/WSSTSUGetDetails?action=send";
			req=getRequest();
			if (!req) {
				alert('Giving up :( Cannot create an XMLHTTP instance');
				return false;
			}
			req.onreadystatechange = complete; 
			req.open("GET",url, true); 
			req.send(null); 
		} 
		function complete()
		{
			if (req.readyState == 4){
					if(req.status==404){
						alert("Servlet not found");
						return;
						}
					alert(req.responseText);
					document.getElementById("Doc:TxId").innerHTML =  req.responseText;
			}
		}
		</script>
			</head>
			<body>
				<table width="99%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<xsl:element name="TD">
							<xsl:attribute name="style">height:22</xsl:attribute>
							<xsl:attribute name="colspan">5</xsl:attribute>
							<xsl:attribute name="class">Heading2</xsl:attribute>
							<xsl:text>tsmt.001.001.01</xsl:text>
						</xsl:element>
					</tr>
					<tr>
						<xsl:element name="TD">
							<xsl:attribute name="style">height:22</xsl:attribute>
							<xsl:attribute name="colspan">5</xsl:attribute>
							<xsl:attribute name="class">ContentBorderTopLeft</xsl:attribute>
							<xsl:text>.</xsl:text>
						</xsl:element>
					</tr>
					<tr>
						<td width="3%" height="22" align="right" class="ContentBorderLeft">.</td>
						<td colspan="10">
							<table width="99%" border="0" cellpadding="0" cellspacing="0">
								<!--	<xsl:choose> 
     <xsl:when test="*[tsmt.001.001.01]"> -->
								<!-- AckId -->
								 <xsl:variable name="MessageIdentification1" select="Doc:AckId"></xsl:variable>
								<xsl:call-template name="MessageIdentification1">
									<xsl:with-param name="MessageIdentification1" select="$MessageIdentification1"/>
								</xsl:call-template>
								<!-- TxId -->
								<xsl:variable name="SimpleIdentificationInformation" select="Doc:TxId"></xsl:variable>
								<xsl:call-template name="SimpleIdentificationInformation">
									<xsl:with-param name="SimpleIdentificationInformation" select="$SimpleIdentificationInformation"/>
								</xsl:call-template>
								<!-- TSUBaselnId -->
								<xsl:variable name="DocumentIdentification3" select="Doc:TSUBaselnId"></xsl:variable>
								<xsl:call-template name="DocumentIdentification3">
									<xsl:with-param name="DocumentIdentification3" select="$DocumentIdentification3"/>
								</xsl:call-template>
								<!-- TxSts -->
								<xsl:variable name="TransactionStatus1" select="Doc:TxSts"></xsl:variable>
								<xsl:call-template name="TransactionStatus1">
									<xsl:with-param name="TransactionStatus1" select="$TransactionStatus1"/>
								</xsl:call-template>
								<!-- UsrTxRef -->
								<xsl:variable name="DocumentIdentification5" select="Doc:UsrTxRef"></xsl:variable>
								<xsl:call-template name="DocumentIdentification5">
									<xsl:with-param name="DocumentIdentification5" select="$DocumentIdentification5"/>
								</xsl:call-template>
								<!-- AckdMsgRef -->
								<xsl:variable name="MessageIdentification1_double" select="Doc:AckdMsgRef"></xsl:variable>
								<xsl:call-template name="MessageIdentification1">
									<xsl:with-param name="MessageIdentification1" select="$MessageIdentification1_double"/>
								</xsl:call-template>
								<!-- ReqForActn -->
								<xsl:variable name="PendingActivity1" select="Doc:ReqForActn"></xsl:variable>
								<xsl:call-template name="PendingActivity1">
									<xsl:with-param name="PendingActivity1" select="$PendingActivity1"/>
								</xsl:call-template>
								<!--	 </xsl:when>
	 <xsl:otherwise>
	 	<xsl:apply-templates select="ReqForActn" />
	 </xsl:otherwise> 
    </xsl:choose> -->
								<!-- bottom -->
							</table>
						</td>
					</tr>
					<tr>
						<xsl:element name="TD">
							<xsl:attribute name="class">ContentBorderBottomLeft</xsl:attribute>
							<xsl:text disable-output-escaping="yes">.</xsl:text>
						</xsl:element>
						<xsl:element name="TD">
							<xsl:attribute name="class">FieldName</xsl:attribute>
							<xsl:text disable-output-escaping="yes">.</xsl:text>
						</xsl:element>
					</tr>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
