<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
   <xsl:include href="StrdPdctChrtcs.xsl"/>
   <xsl:include href="OthrPdctChrtcs.xsl"/>
	<xsl:template name="PdctChrtcsChoice">
		<xsl:param name="PdctChrtcsChoice"/>
		<xsl:param name="PdctChrtcs_FullName"/>
		<xsl:variable name="PdctChrtcsChoice_name" select="name($PdctChrtcsChoice)"/>
		<xsl:variable name="PdctChrtcs_FullName_fox" select="$PdctChrtcs_FullName"/>
		<xsl:variable name="PdctChrtcsDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$PdctChrtcsChoice_name"/>
			</xsl:call-template>
		</xsl:variable>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">4</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$PdctChrtcs_FullName_fox"/>_<xsl:value-of select="$PdctChrtcsChoice_name"/>')</xsl:attribute>
					<xsl:value-of select="$PdctChrtcsDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="colspan">4</xsl:attribute>
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$PdctChrtcs_FullName_fox"/>_<xsl:value-of select="$PdctChrtcsChoice_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<xsl:attribute name="ck">N</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">
						<xsl:variable name="StrdPdctChrtcs" select="$PdctChrtcsChoice/Doc:StrdPdctChrtcs"/>
						<xsl:call-template name="StrdPdctChrtcs">
							<xsl:with-param name="StrdPdctChrtcs" select="$StrdPdctChrtcs"/>
							<xsl:with-param name="StrdPdctChrtcs_FullName">
								<xsl:value-of select="$PdctChrtcs_FullName_fox"/>_<xsl:value-of select="$PdctChrtcsChoice_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="OthrPdctChrtcs" select="$PdctChrtcsChoice/Doc:OthrPdctChrtcs"/>
						<xsl:call-template name="OthrPdctChrtcs">
							<xsl:with-param name="OthrPdctChrtcs" select="$OthrPdctChrtcs"/>
							<xsl:with-param name="OthrPdctChrtcs_FullName">
								<xsl:value-of select="$PdctChrtcs_FullName_fox"/>_<xsl:value-of select="$PdctChrtcsChoice_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
</xsl:stylesheet>
