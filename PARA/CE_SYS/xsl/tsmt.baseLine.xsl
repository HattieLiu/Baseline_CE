<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
    <xsl:include href="public.xsl"/>
	<xsl:include href="Components/Baseline1.xsl"/>
	<xsl:include href="Components/PostalAddress2.xsl"/>
	<xsl:include href="Components/LineItemDetails1.xsl"/>
	<xsl:include href="Components/Adjustment1.xsl"/>
	<xsl:include href="Components/Tax9.xsl"/>
	<xsl:include href="Components/Quantity1.xsl"/>
	<xsl:include href="Components/UnitPrice7.xsl"/>
	<xsl:include href="Components/ProductIdentifier1Choice.xsl"/>
	<!-- <xsl:include href="Components/ProductCategory1Choice.xsl"/> -->
	<xsl:template match="Doc:Document/Doc:TrxBaseLine">
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
							<xsl:attribute name="style">height:10</xsl:attribute>
							<xsl:attribute name="class">Heading2</xsl:attribute>
							<xsl:attribute name="colspan">2</xsl:attribute>
							<xsl:text>InitialBaselineSubmission:(tsmt.019.001.01)</xsl:text>
						</xsl:element>
					</tr>
					<tr>
						<xsl:element name="TD">
							<xsl:attribute name="style">height:10</xsl:attribute>
							<xsl:attribute name="colspan">2</xsl:attribute>
							<xsl:attribute name="class">ContentBorderTopLeft</xsl:attribute>
							<xsl:text>.</xsl:text>
						</xsl:element>
					</tr>
					<tr>
						<td width="1%" height="10" align="right" class="ContentBorderLeft">.</td>
						<td colspan="10">
							<table width="99%" border="0" cellpadding="0" cellspacing="0">
								<!-- Baseln -->
								
								<xsl:variable name="Baseline1" select="Doc:Baseln"/>
								<xsl:call-template name="Baseline1">
									<xsl:with-param name="Baseline1" select="$Baseline1"/>
								</xsl:call-template>
								
								<!-- bottom -->
							</table>
						</td>
					</tr>	
					<tr>
						<xsl:element name="TD">
							<xsl:attribute name="style">height:10</xsl:attribute>
							<xsl:attribute name="class">ContentBorderBottomLeft</xsl:attribute>
							<xsl:attribute name="colspan">2</xsl:attribute>
							<xsl:text>.</xsl:text>
						</xsl:element>
					</tr>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
