<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
	<xsl:include href="public.xsl"/>
	   <xsl:include href="Components/MessageIdentification1.xsl"/>
	   <xsl:include href="Components/SimpleIdentificationInformation.xsl"/>
	   <xsl:include href="Components/DocumentIdentification5.xsl"/>
	   <xsl:include href="Components/TransactionStatus3.xsl"/>
      <xsl:include href="Components/Reason2.xsl"/>
	<xsl:template match="Doc:Document/Doc:tsmt.026.001.02">
		<html>
			<head>
				<title>CS EXIMBILLS ENTERPRISE TSU MESSAGE VIEWER</title>
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
			}
			function total(node){ 
				var temp=node.substring(4,node.length); 
				return temp; 
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
							<xsl:text>StatusChangeRequest(tsmt.026.001.02)</xsl:text>
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
								<!-- ReqId -->
								<xsl:variable name="MessageIdentification1" select="Doc:ReqId"/>
								<xsl:call-template name="MessageIdentification1">
									<xsl:with-param name="MessageIdentification1" select="$MessageIdentification1"/>
								</xsl:call-template>
								<!-- TxId -->
								<xsl:variable name="SimpleIdentificationInformation" select="Doc:TxId"/>
								<xsl:call-template name="SimpleIdentificationInformation">
									<xsl:with-param name="SimpleIdentificationInformation" select="$SimpleIdentificationInformation"/>
								</xsl:call-template>
								<!-- SubmitrTxRef -->
								<xsl:variable name="DocumentIdentification5" select="Doc:SubmitrTxRef"/>
								<xsl:call-template name="DocumentIdentification5">
									<xsl:with-param name="DocumentIdentification5" select="$DocumentIdentification5"/>
								</xsl:call-template>
								<!-- ReqdSts-->
								<xsl:variable name="TransactionStatus3" select="Doc:ReqdSts"/>
								<xsl:call-template name="TransactionStatus3">
									<xsl:with-param name="TransactionStatus3" select="$TransactionStatus3"/>
								</xsl:call-template>
								<!-- ReqRsn-->
								<xsl:variable name="Reason2" select="Doc:ReqRsn"/>
								<xsl:call-template name="Reason2">
									<xsl:with-param name="Reason2" select="$Reason2"/>
								</xsl:call-template>
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
