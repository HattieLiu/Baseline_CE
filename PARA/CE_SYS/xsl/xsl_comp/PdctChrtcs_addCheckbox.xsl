<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
	<xsl:include href="StrdPdctChrtcs.xsl"/>
	<xsl:include href="OthrPdctChrtcs.xsl"/>
	<xsl:template name="PdctChrtcs">
		<xsl:param name="PdctChrtcs"/>
		<xsl:param name="PdctChrtcs_parentName"/>
		<xsl:variable name="PdctChrtcs_name" select="name($PdctChrtcs)"/>
		<xsl:variable name="PdctChrtcs_pName" select="$PdctChrtcs_parentName"/>
		<xsl:variable name="PdctChrtcsDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$PdctChrtcs_name"/>
			</xsl:call-template>
		</xsl:variable>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:element name="input">
					<xsl:attribute name="type">checkbox</xsl:attribute>
					<xsl:attribute name="name"><xsl:value-of select="$PdctChrtcs_pName"/></xsl:attribute>
					<xsl:attribute name="onClick">clickcheck(this)</xsl:attribute>
					<xsl:attribute name="ck">N</xsl:attribute>
				</xsl:element>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$PdctChrtcs_pName"/>')</xsl:attribute>
					<xsl:value-of select="$PdctChrtcsDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:text>     </xsl:text>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$PdctChrtcs_pName"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right" id="Doc:PdctChrtcs">
						
						
						
						<xsl:variable name="StrdPdctChrtcs" select="$PdctChrtcs/Doc:StrdPdctChrtcs"/>
						<xsl:call-template name="StrdPdctChrtcs">
							<xsl:with-param name="StrdPdctChrtcs" select="$StrdPdctChrtcs"/>
							<xsl:with-param name="StrdPdctChrtcs_parentName" select="$PdctChrtcs_parentName"/>
						</xsl:call-template>
						<xsl:variable name="OthrPdctChrtcs" select="$PdctChrtcs/Doc:OthrPdctChrtcs"/>
						<xsl:call-template name="OthrPdctChrtcs">
							<xsl:with-param name="OthrPdctChrtcs" select="$OthrPdctChrtcs"/>
							<xsl:with-param name="OthrPdctChrtcs_parentName" select="$PdctChrtcs_parentName"/>
						</xsl:call-template>
						
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
</xsl:stylesheet>
