<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template name="FinancingDateDetails1">
		<xsl:param name="FinancingDateDetails1"/>
		<xsl:param name="FinancingDateDetails1_parent"/>
		<xsl:variable name="FinancingDateDetails1_name" select="name($FinancingDateDetails1)"/>
		<xsl:variable name="FinancingDateDetails1_pname" select="$FinancingDateDetails1_parent"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$FinancingDateDetails1_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="BookDtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'BookDt'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="CdtDtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'CdtDt'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="DbtDtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'DbtDt'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$FinancingDateDetails1_pname"/>_<xsl:value-of select="$FinancingDateDetails1_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$FinancingDateDetails1_pname"/>_<xsl:value-of select="$FinancingDateDetails1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$CdtDtDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$FinancingDateDetails1_pname"/>_<xsl:value-of select="$FinancingDateDetails1_name"/>_CdtDt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$FinancingDateDetails1_pname"/>_<xsl:value-of select="$FinancingDateDetails1_name"/>_CdtDt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$FinancingDateDetails1/CdtDt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$DbtDtDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$FinancingDateDetails1_pname"/>_<xsl:value-of select="$FinancingDateDetails1_name"/>_DbtDt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$FinancingDateDetails1_pname"/>_<xsl:value-of select="$FinancingDateDetails1_name"/>_DbtDt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$FinancingDateDetails1/DbtDt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:for-each select="$FinancingDateDetails1/BookDt">
							<tr>
								<xsl:element name="TD">
									<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
									<xsl:value-of select="$BookDtDesc"/>
									<xsl:element name="INPUT">
										<xsl:attribute name="type">text</xsl:attribute>
										<xsl:attribute name="name"><xsl:value-of select="$FinancingDateDetails1_pname"/>_<xsl:value-of select="$FinancingDateDetails1_name"/>_BookDt</xsl:attribute>
										<xsl:attribute name="id"><xsl:value-of select="$FinancingDateDetails1_pname"/>_<xsl:value-of select="$FinancingDateDetails1_name"/>_BookDt</xsl:attribute>
										<xsl:attribute name="class">CHAR_P</xsl:attribute>
										<xsl:attribute name="length">35</xsl:attribute>
										<xsl:attribute name="maxlength">35</xsl:attribute>
										<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
									</xsl:element>
								</xsl:element>
							</tr>
						</xsl:for-each>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
</xsl:stylesheet>
