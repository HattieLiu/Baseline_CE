<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
	<xsl:include href="Goods.xsl"/>
	<xsl:template match="Doc:Document/Doc:tsmt.015.001.01">
		<html>
			<head>
				<title>CS Eximbills Enterprise Trade Servise Utility Message Viewer</title>
				<LINK REL="stylesheet" TYPE="text/css" HREF="swift.css"/>
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
		</script>
			</head>
			<body>
				<table width="99%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<xsl:element name="TD">
							<xsl:attribute name="style">height:22</xsl:attribute>
							<xsl:attribute name="colspan">5</xsl:attribute>
							<xsl:attribute name="class">Heading2</xsl:attribute>
							<xsl:text>DeltaReport : Structure and Contents(tsmt.015.001.01)</xsl:text>
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
								<!-- RptId -->
								<xsl:variable name="MessageIdentification1" select="Doc:RptId"/>
								<xsl:call-template name="MessageIdentification1">
									<xsl:with-param name="MessageIdentification1" select="$MessageIdentification1"/>
								</xsl:call-template>
								<!-- TxId -->
								<xsl:variable name="SimpleIdentificationInformation" select="Doc:TxId"/>
								<xsl:call-template name="SimpleIdentificationInformation">
									<xsl:with-param name="SimpleIdentificationInformation" select="$SimpleIdentificationInformation"/>
								</xsl:call-template>
								<!-- TSUBaselnId -->
								<xsl:variable name="DocumentIdentification3" select="Doc:TSUBaselnId"/>
								<xsl:call-template name="DocumentIdentification3">
									<xsl:with-param name="DocumentIdentification3" select="$DocumentIdentification3"/>
								</xsl:call-template>
								<!-- TxSts -->
								<xsl:variable name="TransactionStatus1" select="Doc:TxSts"/>
								<xsl:call-template name="TransactionStatus1">
									<xsl:with-param name="TransactionStatus1" select="$TransactionStatus1"/>
								</xsl:call-template>
								<!-- AmdmntNb -->
								<xsl:variable name="Count1" select="Doc:AmdmntNb"/>
								<xsl:call-template name="Count1">
									<xsl:with-param name="Count1" select="$Count1"/>
								</xsl:call-template>
								<!-- UsrTxRef -->
								<xsl:variable name="DocumentIdentification5" select="Doc:UsrTxRef"/>
								<xsl:call-template name="DocumentIdentification5">
									<xsl:with-param name="DocumentIdentification5" select="$DocumentIdentification5"/>
								</xsl:call-template>
								<!-- Buyr -->
								<xsl:variable name="PartyIdentification4" select="Doc:Buyr"/>
								<xsl:call-template name="PartyIdentification4">
									<xsl:with-param name="PartyIdentification4" select="$PartyIdentification4"/>
								</xsl:call-template>
								<!-- Sellr -->
								<xsl:variable name="PartyIdentification4_double" select="Doc:Sellr"/>
								<xsl:call-template name="PartyIdentification4">
									<xsl:with-param name="PartyIdentification4" select="$PartyIdentification4_double"/>
								</xsl:call-template>
								<!-- BuyrBk -->
								<xsl:variable name="BICIdentification1" select="Doc:BuyrBk"/>
								<xsl:call-template name="BICIdentification1">
									<xsl:with-param name="BICIdentification1" select="$BICIdentification1"/>
								</xsl:call-template>
								<!-- SellrBk -->
								<xsl:variable name="BICIdentification1_double" select="Doc:SellrBk"/>
								<xsl:call-template name="BICIdentification1">
									<xsl:with-param name="BICIdentification1" select="$BICIdentification1_double"/>
								</xsl:call-template>
								<!-- SubmitrPropsdBaselnRef -->
								<xsl:variable name="DocumentIdentification1" select="Doc:SubmitrPropsdBaselnRef"/>
								<xsl:call-template name="DocumentIdentification1">
									<xsl:with-param name="DocumentIdentification1" select="$DocumentIdentification1"/>
								</xsl:call-template>
								<!-- UpdtdElmt -->
								<xsl:variable name="ComparisonResult1" select="Doc:UpdtdElmt"/>
								<xsl:call-template name="ComparisonResult1">
									<xsl:with-param name="ComparisonResult1" select="$ComparisonResult1"/>
								</xsl:call-template>
								<!-- ReqForActn -->
								<xsl:variable name="PendingActivity1" select="Doc:ReqForActn"/>
								<xsl:call-template name="PendingActivity1">
									<xsl:with-param name="PendingActivity1" select="$PendingActivity1"/>
								</xsl:call-template>
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
