<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template name="InvoiceIdentification1">
		<xsl:param name="InvoiceIdentification1"/>
		<xsl:param name="InvoiceIdentification1_parent"/>
		<xsl:variable name="InvoiceIdentification1_name" select="name($InvoiceIdentification1)"/>
		<xsl:variable name="InvoiceIdentification1_pname" select="$InvoiceIdentification1_parent"/>
		<xsl:variable name="ComrclDocRefDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$InvoiceIdentification1_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="InvcNbDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'InvcNb'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="IsseDtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'IsseDt'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$InvoiceIdentification1_pname"/>_<xsl:value-of select="$InvoiceIdentification1_name"/>')</xsl:attribute>
					<xsl:value-of select="$ComrclDocRefDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$InvoiceIdentification1_pname"/>_<xsl:value-of select="$InvoiceIdentification1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$InvcNbDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$InvoiceIdentification1_pname"/>_<xsl:value-of select="$InvoiceIdentification1_name"/>_InvcNb</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$InvoiceIdentification1_pname"/>_<xsl:value-of select="$InvoiceIdentification1_name"/>_InvcNb</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$InvoiceIdentification1/InvcNb"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$IsseDtDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$InvoiceIdentification1_pname"/>_<xsl:value-of select="$InvoiceIdentification1_name"/>_IsseDt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$InvoiceIdentification1_pname"/>_<xsl:value-of select="$InvoiceIdentification1_name"/>_IsseDt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$InvoiceIdentification1/IsseDt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
</xsl:stylesheet>
