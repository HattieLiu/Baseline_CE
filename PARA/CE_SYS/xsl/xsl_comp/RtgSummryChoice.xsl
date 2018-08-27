<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
   <xsl:include href="IndvTrnsprt.xsl"/>
   <xsl:include href="MltmdlTrnsprt.xsl"/>
	<xsl:template name="RtgSummryChoice">
		<xsl:param name="RtgSummryChoice"/>
		<xsl:param name="RtgSummry_parentName"/>
		<xsl:variable name="RtgSummry_name" select="name($RtgSummryChoice)"/>
		<xsl:variable name="RtgSummry_pName" select="$RtgSummry_parentName"/>
		<xsl:variable name="RtgSummryDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$RtgSummry_name"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$RtgSummry_pName"/>_<xsl:value-of select="$RtgSummry_name"/>')</xsl:attribute>
					<xsl:value-of select="$RtgSummryDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="colspan">4</xsl:attribute>
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$RtgSummry_pName"/>_<xsl:value-of select="$RtgSummry_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">
						<xsl:variable name="IndvTrnsprt" select="$RtgSummryChoice/Doc:IndvTrnsprt"/>
						<xsl:call-template name="IndvTrnsprt">
							<xsl:with-param name="IndvTrnsprt" select="$IndvTrnsprt"/>
							<xsl:with-param name="IndvTrnsprt_parentName">
								<xsl:value-of select="$RtgSummry_pName"/>_<xsl:value-of select="$RtgSummry_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="MltmdlTrnsprt" select="$RtgSummryChoice/Doc:MltmdlTrnsprt"/>
						<xsl:call-template name="MltmdlTrnsprt">
							<xsl:with-param name="MltmdlTrnsprt" select="$MltmdlTrnsprt"/>
							<xsl:with-param name="MltmdlTrnsprt_parentName">
								<xsl:value-of select="$RtgSummry_pName"/>_<xsl:value-of select="$RtgSummry_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
</xsl:stylesheet>
