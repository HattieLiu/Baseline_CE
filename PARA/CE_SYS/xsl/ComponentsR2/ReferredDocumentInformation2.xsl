<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="ReferredDocumentType1.xsl"/>
	<xsl:template name="ReferredDocumentInformation2">
		<xsl:param name="ReferredDocumentInformation2"/>
		<xsl:param name="ReferredDocumentInformation2_parent"/>
		<xsl:variable name="ReferredDocumentInformation2_name" select="name($ReferredDocumentInformation2)"/>
		<xsl:variable name="ReferredDocumentInformation2_pname" select="$ReferredDocumentInformation2_parent"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$ReferredDocumentInformation2_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="DocNbDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'DocNb'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="RltdDtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'RltdDt'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="DocAmtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'DocAmt'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$ReferredDocumentInformation2_pname"/>_<xsl:value-of select="$ReferredDocumentInformation2_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$ReferredDocumentInformation2_pname"/>_<xsl:value-of select="$ReferredDocumentInformation2_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$DocNbDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ReferredDocumentInformation2_pname"/>_<xsl:value-of select="$ReferredDocumentInformation2_name"/>_DocNb</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ReferredDocumentInformation2_pname"/>_<xsl:value-of select="$ReferredDocumentInformation2_name"/>_DocNb</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ReferredDocumentInformation2/DocNb"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$RltdDtDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ReferredDocumentInformation2_pname"/>_<xsl:value-of select="$ReferredDocumentInformation2_name"/>_RltdDt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ReferredDocumentInformation2_pname"/>_<xsl:value-of select="$ReferredDocumentInformation2_name"/>_RltdDt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ReferredDocumentInformation2/RltdDt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$DocAmtDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ReferredDocumentInformation2_pname"/>_<xsl:value-of select="$ReferredDocumentInformation2_name"/>_DocAmt_CCY</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ReferredDocumentInformation2_pname"/>_<xsl:value-of select="$ReferredDocumentInformation2_name"/>_DocAmt_CCY</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">10</xsl:attribute>
									<xsl:attribute name="maxlength">10</xsl:attribute>
									<xsl:attribute name="size">3</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ReferredDocumentInformation2/DocAmt/@Ccy"/></xsl:attribute>
								</xsl:element>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ReferredDocumentInformation2_pname"/>_<xsl:value-of select="$ReferredDocumentInformation2_name"/>_DocAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ReferredDocumentInformation2_pname"/>_<xsl:value-of select="$ReferredDocumentInformation2_name"/>_DocAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ReferredDocumentInformation2/DocAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="ReferredDocumentType1" select="$ReferredDocumentInformation2/Tp"/>
						<xsl:call-template name="ReferredDocumentType1">
							<xsl:with-param name="ReferredDocumentType1" select="$ReferredDocumentType1"/>
							<xsl:with-param name="ReferredDocumentType1_parent">
								<xsl:value-of select="$ReferredDocumentInformation2_pname"/>_<xsl:value-of select="$ReferredDocumentInformation2_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
</xsl:stylesheet>
