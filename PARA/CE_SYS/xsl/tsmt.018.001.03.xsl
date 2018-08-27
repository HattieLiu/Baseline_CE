<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="public.xsl"/>
	<xsl:include href="ComponentsR2/MessageIdentification1.xsl"/>
	<xsl:include href="ComponentsR2/SimpleIdentificationInformation.xsl"/>
	<xsl:include href="ComponentsR2/DocumentIdentification3.xsl"/>
	<xsl:include href="ComponentsR2/TransactionStatus4.xsl"/>
	<xsl:include href="ComponentsR2/DocumentIdentification5.xsl"/>
	<xsl:include href="ComponentsR2/ReportType1.xsl"/>
	<xsl:include href="ComponentsR2/Baseline3.xsl"/>
	<xsl:include href="ComponentsR2/ContactIdentification1.xsl"/>
	<xsl:include href="ComponentsR2/PendingActivity2.xsl"/>
	<xsl:include href="ComponentsR2/BICIdentification1.xsl"/>
	<xsl:include href="ComponentsR2/PostalAddress5.xsl"/>
	<xsl:template match="Document/FullPushThrghRpt">
		<xsl:param name="stmt" select="'FullPushThrghRpt'"/>
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
							<xsl:text>Purchase Order</xsl:text>
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
								<xsl:variable name="ReportType1" select="RptPurp"/>
								<xsl:call-template name="ReportType1">
									<xsl:with-param name="ReportType1" select="$ReportType1"/>
									<xsl:with-param name="ReportType1_parent" select="$stmt"/>
								</xsl:call-template>
								<xsl:variable name="Baseline3" select="PushdThrghBaseln"/>
								<xsl:call-template name="Baseline3">
									<xsl:with-param name="Baseline3" select="$Baseline3"/>
									<xsl:with-param name="Baseline3_parent" select="$stmt"/>
								</xsl:call-template>
								<xsl:for-each select="BuyrCtctPrsn">
									<xsl:variable name="ContactIdentification1" select="."/>
									<xsl:call-template name="ContactIdentification1">
										<xsl:with-param name="ContactIdentification1" select="$ContactIdentification1"/>
										<xsl:with-param name="ContactIdentification1_parent">
											<xsl:number value="position()"/>_<xsl:value-of select="$stmt"/>
										</xsl:with-param>
									</xsl:call-template>
								</xsl:for-each>
								<xsl:for-each select="SellrCtctPrsn">
									<xsl:variable name="ContactIdentification1_two" select="."/>
									<xsl:call-template name="ContactIdentification1">
										<xsl:with-param name="ContactIdentification1" select="$ContactIdentification1_two"/>
										<xsl:with-param name="ContactIdentification1_parent">
											<xsl:number value="position()"/>_<xsl:value-of select="$stmt"/>
										</xsl:with-param>
									</xsl:call-template>
								</xsl:for-each>
								<xsl:for-each select="BuyrBkCtctPrsn">
									<xsl:variable name="ContactIdentification1_there" select="."/>
									<xsl:call-template name="ContactIdentification1">
										<xsl:with-param name="ContactIdentification1" select="$ContactIdentification1_there"/>
										<xsl:with-param name="ContactIdentification1_parent">
											<xsl:number value="position()"/>_<xsl:value-of select="$stmt"/>
										</xsl:with-param>
									</xsl:call-template>
								</xsl:for-each>
								<xsl:for-each select="SellrBkCtctPrsn">
									<xsl:variable name="ContactIdentification1_four" select="."/>
									<xsl:call-template name="ContactIdentification1">
										<xsl:with-param name="ContactIdentification1" select="$ContactIdentification1_four"/>
										<xsl:with-param name="ContactIdentification1_parent">
											<xsl:number value="position()"/>_<xsl:value-of select="$stmt"/>
										</xsl:with-param>
									</xsl:call-template>
								</xsl:for-each>
								<xsl:for-each select="OthrBkCtctPrsn">
									<xsl:variable name="ContactIdentification1_five" select="."/>
									<xsl:call-template name="ContactIdentification1">
										<xsl:with-param name="ContactIdentification1" select="$ContactIdentification1_five"/>
										<xsl:with-param name="ContactIdentification1_parent">
											<xsl:number value="position()"/>_<xsl:value-of select="$stmt"/>
										</xsl:with-param>
									</xsl:call-template>
								</xsl:for-each>
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
