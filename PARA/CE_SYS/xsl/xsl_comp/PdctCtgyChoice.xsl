<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
   <xsl:include href="StrdPdctCtgy.xsl"/>
   <xsl:include href="OthrPdctCtgy.xsl"/>
	<xsl:template name="PdctCtgyChoice">
		<xsl:param name="PdctCtgyChoice"/>
		<xsl:param name="PdctCtgy_FullName"/>
		<xsl:variable name="PdctCtgyChoice_name" select="name($PdctCtgyChoice)"/>
		<xsl:variable name="PdctCtgy_FullName_fox" select="$PdctCtgy_FullName"/>
		<xsl:variable name="PdctCtgyDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$PdctCtgyChoice_name"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$PdctCtgy_FullName_fox"/>_<xsl:value-of select="$PdctCtgyChoice_name"/>')</xsl:attribute>
					<xsl:value-of select="$PdctCtgyDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="colspan">4</xsl:attribute>
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$PdctCtgy_FullName_fox"/>_<xsl:value-of select="$PdctCtgyChoice_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<xsl:attribute name="ck">N</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">
						<xsl:variable name="StrdPdctCtgy" select="$PdctCtgyChoice/Doc:StrdPdctCtgy"/>
						<xsl:call-template name="StrdPdctCtgy">
							<xsl:with-param name="StrdPdctCtgy" select="$StrdPdctCtgy"/>
							<xsl:with-param name="StrdPdctCtgy_FullName">
								<xsl:value-of select="$PdctCtgy_FullName_fox"/>_<xsl:value-of select="$PdctCtgyChoice_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="OthrPdctCtgy" select="$PdctCtgyChoice/Doc:OthrPdctCtgy"/>
						<xsl:call-template name="OthrPdctCtgy">
							<xsl:with-param name="OthrPdctCtgy" select="$OthrPdctCtgy"/>
							<xsl:with-param name="OthrPdctCtgy_FullName">
								<xsl:value-of select="$PdctCtgy_FullName_fox"/>_<xsl:value-of select="$PdctCtgyChoice_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
</xsl:stylesheet>
