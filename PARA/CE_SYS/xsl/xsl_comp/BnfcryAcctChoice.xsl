<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
   <xsl:include href="Id.xsl"/>
   <xsl:include href="NmAndId.xsl"/>
<!--  *********** point <NmAndIdChoice> start ********** -->
	<xsl:template name="NmAndIdChoice">
		<xsl:param name="NmAndIdChoice"/>
		<xsl:param name="SttlmTerms_FullName"/>
		<xsl:variable name="NmAndIdChoice_name" select="name($NmAndIdChoice)"/>
		<xsl:variable name="SttlmTerms_FullName_fox" select="$SttlmTerms_FullName"/>
		<xsl:variable name="SttlmTermsDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$NmAndIdChoice_name"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$SttlmTerms_FullName_fox"/>_<xsl:value-of select="$NmAndIdChoice_name"/>')</xsl:attribute>
					<xsl:value-of select="$SttlmTermsDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="colspan">4</xsl:attribute>
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$SttlmTerms_FullName_fox"/>_<xsl:value-of select="$NmAndIdChoice_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<xsl:attribute name="ck">N</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">
						<xsl:variable name="Id" select="$NmAndIdChoice/Doc:Id"/>
						<xsl:call-template name="Id">
							<xsl:with-param name="Id" select="$Id"/>
							<xsl:with-param name="Id_FullName">
								<xsl:value-of select="$SttlmTerms_FullName_fox"/>_<xsl:value-of select="$NmAndIdChoice_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="NmAndId" select="$NmAndIdChoice/Doc:NmAndId"/>
						<xsl:call-template name="NmAndId">
							<xsl:with-param name="NmAndId" select="$NmAndId"/>
							<xsl:with-param name="NmAndId_FullName">
								<xsl:value-of select="$SttlmTerms_FullName_fox"/>_<xsl:value-of select="$NmAndIdChoice_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <NmAndIdChoice> end ********** -->
</xsl:stylesheet>
