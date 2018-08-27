<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
	<xsl:include href="Goods.xsl"/>
	<xsl:template match="Doc:Document/Doc:tsmt.018.001.01">
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
							<xsl:text>Purchase Order Details</xsl:text>
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
								<!-- UsrTxRef -->
								<xsl:variable name="DocumentIdentification5" select="Doc:UsrTxRef"/>
								<xsl:call-template name="DocumentIdentification5">
									<xsl:with-param name="DocumentIdentification5" select="$DocumentIdentification5"/>
								</xsl:call-template>
								<!-- RptPurp -->
								<xsl:variable name="ReportType1" select="Doc:RptPurp"/>
								<xsl:call-template name="ReportType1">
									<xsl:with-param name="ReportType1" select="$ReportType1"/>
								</xsl:call-template>
								<!-- PushdThrghBaseln -->
								<xsl:variable name="Baseline1" select="Doc:PushdThrghBaseln"/>
								<xsl:call-template name="Baseline1">
									<xsl:with-param name="Baseline1" select="$Baseline1"/>
								</xsl:call-template>
								<!-- BuyrCtctPrsn -->
								<xsl:variable name="ContactIdentification1" select="Doc:BuyrCtctPrsn"/>
								<xsl:call-template name="ContactIdentification1">
									<xsl:with-param name="ContactIdentification1" select="$ContactIdentification1"/>
								</xsl:call-template>
								<!-- SellrCtctPrsn -->
								<xsl:variable name="ContactIdentification1_double" select="Doc:SellrCtctPrsn"/>
								<xsl:call-template name="ContactIdentification1">
									<xsl:with-param name="ContactIdentification1" select="$ContactIdentification1_double"/>
								</xsl:call-template>
								<!-- BuyrBkCtctPrsn -->
								<xsl:variable name="ContactIdentification1_three" select="Doc:BuyrBkCtctPrsn"/>
								<xsl:call-template name="ContactIdentification1">
									<xsl:with-param name="ContactIdentification1" select="$ContactIdentification1_three"/>
								</xsl:call-template>
								<!-- SellrBkCtctPrsn -->
								<xsl:variable name="ContactIdentification1_four" select="Doc:SellrBkCtctPrsn"/>
								<xsl:call-template name="ContactIdentification1">
									<xsl:with-param name="ContactIdentification1" select="$ContactIdentification1_four"/>
								</xsl:call-template>
								<!-- BllToCtctPrsn -->
								<xsl:variable name="ContactIdentification1_five" select="Doc:BllToCtctPrsn"/>
								<xsl:call-template name="ContactIdentification1">
									<xsl:with-param name="ContactIdentification1" select="$ContactIdentification1_five"/>
								</xsl:call-template>
								<!-- ShipToCtctPrsn -->
								<xsl:variable name="ContactIdentification1_six" select="Doc:ShipToCtctPrsn"/>
								<xsl:call-template name="ContactIdentification1">
									<xsl:with-param name="ContactIdentification1" select="$ContactIdentification1_six"/>
								</xsl:call-template>
								<!-- ConsgnCtctPrsn -->
								<xsl:variable name="ContactIdentification1_seven" select="Doc:ConsgnCtctPrsn"/>
								<xsl:call-template name="ContactIdentification1">
									<xsl:with-param name="ContactIdentification1" select="$ContactIdentification1_seven"/>
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
