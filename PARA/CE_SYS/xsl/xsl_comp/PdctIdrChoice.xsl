<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
   <xsl:include href="StrdPdctIdr.xsl"/>
   <xsl:include href="OthrPdctIdr.xsl"/>
	<xsl:template name="PdctIdrChoice">
		<xsl:param name="PdctIdrChoice"/>
		<xsl:param name="PdctIdr_FullName"/>
		<xsl:variable name="PdctIdrChoice_name" select="name($PdctIdrChoice)"/>
		<xsl:variable name="PdctIdr_FullName_fox" select="$PdctIdr_FullName"/>
		<xsl:variable name="PdctIdrDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$PdctIdrChoice_name"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$PdctIdr_FullName_fox"/>_<xsl:value-of select="$PdctIdrChoice_name"/>')</xsl:attribute>
					<xsl:value-of select="$PdctIdrDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="colspan">4</xsl:attribute>
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$PdctIdr_FullName_fox"/>_<xsl:value-of select="$PdctIdrChoice_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<xsl:attribute name="ck">N</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">
						<xsl:variable name="StrdPdctIdr" select="$PdctIdrChoice/Doc:StrdPdctIdr"/>
						<xsl:call-template name="StrdPdctIdr">
							<xsl:with-param name="StrdPdctIdr" select="$StrdPdctIdr"/>
							<xsl:with-param name="StrdPdctIdr_FullName">
								<xsl:value-of select="$PdctIdr_FullName_fox"/>_<xsl:value-of select="$PdctIdrChoice_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="OthrPdctIdr" select="$PdctIdrChoice/Doc:OthrPdctIdr"/>
						<xsl:call-template name="OthrPdctIdr">
							<xsl:with-param name="OthrPdctIdr" select="$OthrPdctIdr"/>
							<xsl:with-param name="OthrPdctIdr_FullName">
								<xsl:value-of select="$PdctIdr_FullName_fox"/>_<xsl:value-of select="$PdctIdrChoice_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
</xsl:stylesheet>
