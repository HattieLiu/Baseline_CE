<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
	<xsl:include href="StrdPdctIdr.xsl"/>
	<xsl:include href="OthrPdctIdr.xsl"/>
	<xsl:template name="PdctIdr">
		<xsl:param name="PdctIdr"/>
		<xsl:param name="PdctIdr_parentName"/>
		<xsl:variable name="PdctIdr_name" select="name($PdctIdr)"/>
		<xsl:variable name="PdctIdr_pName" select="$PdctIdr_parentName"/>
		<xsl:variable name="PdctIdrDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$PdctIdr_name"/>
			</xsl:call-template>
		</xsl:variable>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:element name="input">
					<xsl:attribute name="type">checkbox</xsl:attribute>
					<xsl:attribute name="name"><xsl:value-of select="$PdctIdr_pName"/></xsl:attribute>
					<xsl:attribute name="onClick">clickcheck(this)</xsl:attribute>
					<xsl:attribute name="ck">N</xsl:attribute>
				</xsl:element>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$PdctIdr_pName"/>')</xsl:attribute>
					<xsl:value-of select="$PdctIdrDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:text>     </xsl:text>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$PdctIdr_pName"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right" id="Doc:PdctIdr">
						<xsl:variable name="StrdPdctIdr" select="$PdctIdr/Doc:StrdPdctIdr"/>
						<xsl:call-template name="StrdPdctIdr">
							<xsl:with-param name="StrdPdctIdr" select="$StrdPdctIdr"/>
							<xsl:with-param name="StrdPdctIdr_parentName" select="$PdctIdr_parentName"/>
						</xsl:call-template>
						<xsl:variable name="OthrPdctIdr" select="$PdctIdr/Doc:OthrPdctIdr"/>
						<xsl:call-template name="OthrPdctIdr">
							<xsl:with-param name="OthrPdctIdr" select="$OthrPdctIdr"/>
							<xsl:with-param name="OthrPdctIdr_parentName" select="$PdctIdr_parentName"/>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
</xsl:stylesheet>
