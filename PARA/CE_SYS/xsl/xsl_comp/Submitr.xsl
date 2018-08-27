<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
	<xsl:template name="Submitr">
		<xsl:param name="Submitr"/>
		<xsl:param name="Submitr_FullName" select="name($Submitr)"/>
		<xsl:variable name="Submitr_name" select="'Doc:Submitr'"/>
		<xsl:variable name="SubmitrDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:Submitr'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="BICDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:BIC'"/>
			</xsl:call-template>
		</xsl:variable>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:element name="input">
					<xsl:attribute name="type">checkbox</xsl:attribute>
					<xsl:attribute name="name"><xsl:value-of select="$Submitr_FullName"/>_check</xsl:attribute>
					<xsl:attribute name="ck">N</xsl:attribute>
				</xsl:element>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$Submitr_FullName"/>_<xsl:value-of select="$Submitr_name"/>')</xsl:attribute>
					<xsl:value-of select="$SubmitrDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:text>     </xsl:text>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$Submitr_FullName"/>_<xsl:value-of select="$Submitr_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<xsl:attribute name="ck">N</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right" id="Doc:Submitr">
							<tr>
								<xsl:element name="TD">
									<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
									<xsl:attribute name="height">25</xsl:attribute>
									<xsl:value-of select="$BICDesc"/>
									<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
									<xsl:element name="INPUT">
										<xsl:attribute name="type">text</xsl:attribute>
										<xsl:attribute name="name">Doc:BIC</xsl:attribute>
										<xsl:attribute name="id"><xsl:value-of select="$BICDesc"/></xsl:attribute>
										<xsl:attribute name="class">CHAR_M</xsl:attribute>
										<xsl:attribute name="length">35</xsl:attribute>
										<xsl:attribute name="maxlength">35</xsl:attribute>
										<xsl:attribute name="value"><xsl:value-of select="Submitr/Doc:BIC"/></xsl:attribute>
										<xsl:attribute name="multi">N</xsl:attribute>
										<xsl:attribute name="tbi">Doc:Submitr</xsl:attribute>
									</xsl:element>
								</xsl:element>
							</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
</xsl:stylesheet>
