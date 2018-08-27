<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="public.xsl"/>
	<xsl:include href="ComponentsR2/MessageIdentification1.xsl"/>
	<xsl:include href="ComponentsR2/SimpleIdentificationInformation.xsl"/>
	<xsl:include href="ComponentsR2/DocumentIdentification3.xsl"/>
	<xsl:include href="ComponentsR2/TransactionStatus4.xsl"/>
	<xsl:include href="ComponentsR2/DocumentIdentification5.xsl"/>
	<xsl:include href="ComponentsR2/PartyIdentification26.xsl"/>
	<xsl:include href="ComponentsR2/Limit1.xsl"/>
	<xsl:include href="ComponentsR2/DocumentIdentification4.xsl"/>
	<xsl:include href="ComponentsR2/MisMatchReport3.xsl"/>
	<xsl:include href="ComponentsR2/PendingActivity2.xsl"/>
	<xsl:include href="ComponentsR2/BICIdentification1.xsl"/>
	<xsl:include href="ComponentsR2/GenericIdentification4.xsl"/>
	<xsl:include href="ComponentsR2/PostalAddress5.xsl"/>
	<xsl:template match="Document/BaselnMtchRpt">
		<xsl:param name="stmt" select="'BaselnMtchRpt'"/>
		<html>
			<head>
				<title>CS Eximbills Enterprise Trade Servise Utility Message Viewer</title>
				<LINK REL="stylesheet" TYPE="text/css" HREF="../TSU/theme/swift.css"/>
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
							<xsl:text>Baseline Match Report</xsl:text>
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
								<xsl:variable name="MessageIdentification1" select="RptId"/>
								<xsl:call-template name="MessageIdentification1">
									<xsl:with-param name="MessageIdentification1" select="$MessageIdentification1"/>
									<xsl:with-param name="MessageIdentification1_parent" select="$stmt"/>
								</xsl:call-template>
								<xsl:variable name="SimpleIdentificationInformation" select="TxId"/>
								<xsl:call-template name="SimpleIdentificationInformation">
									<xsl:with-param name="SimpleIdentificationInformation" select="$SimpleIdentificationInformation"/>
									<xsl:with-param name="SimpleIdentificationInformation_parent" select="$stmt"/>
								</xsl:call-template>
								<xsl:variable name="DocumentIdentification3" select="EstblishdBaselnId"/>
								<xsl:call-template name="DocumentIdentification3">
									<xsl:with-param name="DocumentIdentification3" select="$DocumentIdentification3"/>
									<xsl:with-param name="DocumentIdentification3_parent" select="$stmt"/>
								</xsl:call-template>
								<xsl:variable name="TransactionStatus4" select="TxSts"/>
								<xsl:call-template name="TransactionStatus4">
									<xsl:with-param name="TransactionStatus4" select="$TransactionStatus4"/>
									<xsl:with-param name="TransactionStatus4_parent" select="$stmt"/>
								</xsl:call-template>
								<xsl:for-each select="UsrTxRef">
									<xsl:variable name="DocumentIdentification5" select="."/>
									<xsl:call-template name="DocumentIdentification5">
										<xsl:with-param name="DocumentIdentification5" select="$DocumentIdentification5"/>
										<xsl:with-param name="DocumentIdentification5_parent">
											<xsl:number value="position()"/>_<xsl:value-of select="$stmt"/>
										</xsl:with-param>
									</xsl:call-template>
								</xsl:for-each>
								<xsl:variable name="PartyIdentification26" select="Buyr"/>
								<xsl:call-template name="PartyIdentification26">
									<xsl:with-param name="PartyIdentification26" select="$PartyIdentification26"/>
									<xsl:with-param name="PartyIdentification26_parent" select="$stmt"/>
								</xsl:call-template>
								<xsl:variable name="PartyIdentification26_double" select="Sellr"/>
								<xsl:call-template name="PartyIdentification26">
									<xsl:with-param name="PartyIdentification26" select="$PartyIdentification26_double"/>
									<xsl:with-param name="PartyIdentification26_parent" select="$stmt"/>
								</xsl:call-template>
								<xsl:variable name="BICIdentification1" select="BuyrBk"/>
								<xsl:call-template name="BICIdentification1">
									<xsl:with-param name="BICIdentification1" select="$BICIdentification1"/>
									<xsl:with-param name="BICIdentification1_parent" select="$stmt"/>
								</xsl:call-template>
								<xsl:variable name="BICIdentification1_double" select="SellrBk"/>
								<xsl:call-template name="BICIdentification1">
									<xsl:with-param name="BICIdentification1" select="$BICIdentification1_double"/>
									<xsl:with-param name="BICIdentification1_parent" select="$stmt"/>
								</xsl:call-template>
								<xsl:variable name="Limit1" select="BaselnEstblishmtTrils"/>
								<xsl:call-template name="Limit1">
									<xsl:with-param name="Limit1" select="$Limit1"/>
									<xsl:with-param name="Limit1_parent" select="$stmt"/>
								</xsl:call-template>
								<xsl:for-each select="CmpardDocRef">
									<xsl:variable name="DocumentIdentification4" select="."/>
									<xsl:call-template name="DocumentIdentification4">
										<xsl:with-param name="DocumentIdentification4" select="$DocumentIdentification4"/>
										<xsl:with-param name="DocumentIdentification4_parent">
											<xsl:number value="position()"/>_<xsl:value-of select="$stmt"/>
										</xsl:with-param>
									</xsl:call-template>
								</xsl:for-each>
								<xsl:variable name="MisMatchReport3" select="Rpt"/>
								<xsl:call-template name="MisMatchReport3">
									<xsl:with-param name="MisMatchReport3" select="$MisMatchReport3"/>
									<xsl:with-param name="MisMatchReport3_parent" select="$stmt"/>
								</xsl:call-template>
								<xsl:variable name="PendingActivity2" select="ReqForActn"/>
								<xsl:call-template name="PendingActivity2">
									<xsl:with-param name="PendingActivity2" select="$PendingActivity2"/>
									<xsl:with-param name="PendingActivity2_parent" select="$stmt"/>
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
