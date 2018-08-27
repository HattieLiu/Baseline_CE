<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="OriginalInvoiceInformation1.xsl"/>
	<xsl:include href="PartyIdentification8.xsl"/>
	<xsl:include href="FinancingResult1.xsl"/>
	<xsl:include href="InstalmentFinancingInformation1.xsl"/>
	<xsl:template name="InvoiceFinancingDetails1">
		<xsl:param name="InvoiceFinancingDetails1"/>
		<xsl:param name="InvoiceFinancingDetails1_parent"/>
		<xsl:variable name="InvoiceFinancingDetails1_name" select="name($InvoiceFinancingDetails1)"/>
		<xsl:variable name="InvoiceFinancingDetails1_pname" select="$InvoiceFinancingDetails1_parent"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$InvoiceFinancingDetails1_name"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$InvoiceFinancingDetails1_pname"/>_<xsl:value-of select="$InvoiceFinancingDetails1_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$InvoiceFinancingDetails1_pname"/>_<xsl:value-of select="$InvoiceFinancingDetails1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<xsl:variable name="OriginalInvoiceInformation1" select="$InvoiceFinancingDetails1/OrgnlInvcInf"/>
						<xsl:call-template name="OriginalInvoiceInformation1">
							<xsl:with-param name="OriginalInvoiceInformation1" select="$OriginalInvoiceInformation1"/>
							<xsl:with-param name="OriginalInvoiceInformation1_parent">
								<xsl:value-of select="$InvoiceFinancingDetails1_pname"/>_<xsl:value-of select="$InvoiceFinancingDetails1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="PartyIdentification8" select="$InvoiceFinancingDetails1/Spplr"/>
						<xsl:call-template name="PartyIdentification8">
							<xsl:with-param name="PartyIdentification8" select="$PartyIdentification8"/>
							<xsl:with-param name="PartyIdentification8_parent">
								<xsl:value-of select="$InvoiceFinancingDetails1_pname"/>_<xsl:value-of select="$InvoiceFinancingDetails1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="FinancingResult1" select="$InvoiceFinancingDetails1/InvcFincgRslt"/>
						<xsl:call-template name="FinancingResult1">
							<xsl:with-param name="FinancingResult1" select="$FinancingResult1"/>
							<xsl:with-param name="FinancingResult1_parent">
								<xsl:value-of select="$InvoiceFinancingDetails1_pname"/>_<xsl:value-of select="$InvoiceFinancingDetails1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:for-each select="$InvoiceFinancingDetails1/InstlmtFincgInf">
							<xsl:variable name="InstalmentFinancingInformation1" select="."/>
							<xsl:call-template name="InstalmentFinancingInformation1">
								<xsl:with-param name="InstalmentFinancingInformation1" select="$InstalmentFinancingInformation1"/>
								<xsl:with-param name="InstalmentFinancingInformation1_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$InvoiceFinancingDetails1_pname"/>_<xsl:value-of select="$InvoiceFinancingDetails1_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
</xsl:stylesheet>
