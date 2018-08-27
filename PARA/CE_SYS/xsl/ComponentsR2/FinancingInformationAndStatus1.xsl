<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="FinancingAllowedSummary1.xsl"/>
	<xsl:include href="InvoiceFinancingDetails1.xsl"/>
	<xsl:template name="FinancingInformationAndStatus1">
		<xsl:param name="FinancingInformationAndStatus1"/>
		<xsl:param name="FinancingInformationAndStatus1_parent"/>
		<xsl:variable name="FinancingInformationAndStatus1_name" select="name($FinancingInformationAndStatus1)"/>
		<xsl:variable name="FinancingInformationAndStatus1_pname" select="$FinancingInformationAndStatus1_parent"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$FinancingInformationAndStatus1_name"/>
			</xsl:call-template>
		</xsl:variable>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$FinancingInformationAndStatus1_pname"/>_<xsl:value-of select="$FinancingInformationAndStatus1_name"/>')</xsl:attribute>
					<xsl:value-of select="$fldDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:text>     </xsl:text>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$FinancingInformationAndStatus1_pname"/>_<xsl:value-of select="$FinancingInformationAndStatus1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<xsl:variable name="FinancingAllowedSummary1" select="$FinancingInformationAndStatus1/FincgAllwdSummry"/>
						<xsl:call-template name="FinancingAllowedSummary1">
							<xsl:with-param name="FinancingAllowedSummary1" select="$FinancingAllowedSummary1"/>
							<xsl:with-param name="FinancingAllowedSummary1_parent">
								<xsl:value-of select="$FinancingInformationAndStatus1_pname"/>_<xsl:value-of select="$FinancingInformationAndStatus1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:for-each select="$FinancingInformationAndStatus1/InvcFincgDtls">
							<xsl:variable name="InvoiceFinancingDetails1" select="."/>
							<xsl:call-template name="InvoiceFinancingDetails1">
								<xsl:with-param name="InvoiceFinancingDetails1" select="$InvoiceFinancingDetails1"/>
								<xsl:with-param name="InvoiceFinancingDetails1_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$FinancingInformationAndStatus1_pname"/>_<xsl:value-of select="$FinancingInformationAndStatus1_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
</xsl:stylesheet>
