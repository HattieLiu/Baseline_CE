<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="InvoiceIdentification1.xsl"/>
	<xsl:include href="ReportLine2.xsl"/>
	<xsl:template name="ReportLine4">
		<xsl:param name="ReportLine4"/>
		<xsl:param name="ReportLine4_parent"/>
		<xsl:variable name="ReportLine4_name" select="name($ReportLine4)"/>
		<xsl:variable name="ReportLine4_pname" select="$ReportLine4_parent"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$ReportLine4_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="NetAmtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'NetAmt'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$ReportLine4_pname"/>_<xsl:value-of select="$ReportLine4_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$ReportLine4_pname"/>_<xsl:value-of select="$ReportLine4_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$NetAmtDesc"/>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ReportLine4_pname"/>_<xsl:value-of select="$ReportLine4_name"/>_NetAmt_CCY</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ReportLine4_pname"/>_<xsl:value-of select="$ReportLine4_name"/>_NetAmt_CCY</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">10</xsl:attribute>
									<xsl:attribute name="maxlength">10</xsl:attribute>
									<xsl:attribute name="size">3</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ReportLine4/NetAmt/@Ccy"/></xsl:attribute>
								</xsl:element>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ReportLine4_pname"/>_<xsl:value-of select="$ReportLine4_name"/>_NetAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ReportLine4_pname"/>_<xsl:value-of select="$ReportLine4_name"/>_NetAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ReportLine4/NetAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="InvoiceIdentification1" select="$ReportLine4/ComrclDocRef"/>
						<xsl:call-template name="InvoiceIdentification1">
							<xsl:with-param name="InvoiceIdentification1" select="$InvoiceIdentification1"/>
							<xsl:with-param name="InvoiceIdentification1_parent">
								<xsl:value-of select="$ReportLine4_pname"/>_<xsl:value-of select="$ReportLine4_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:for-each select="$ReportLine4/Adjstmnt">
							<xsl:variable name="Adjustment4" select="."/>
							<xsl:call-template name="Adjustment4">
								<xsl:with-param name="Adjustment4" select="$Adjustment4"/>
								<xsl:with-param name="Adjustment4_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$ReportLine4_pname"/>_<xsl:value-of select="$ReportLine4_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
						<xsl:for-each select="$ReportLine4/BrkdwnByPurchsOrdr">
							<xsl:variable name="ReportLine2" select="."/>
							<xsl:call-template name="ReportLine2">
								<xsl:with-param name="ReportLine2" select="$ReportLine2"/>
								<xsl:with-param name="ReportLine2_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$ReportLine4_pname"/>_<xsl:value-of select="$ReportLine4_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
</xsl:stylesheet>
