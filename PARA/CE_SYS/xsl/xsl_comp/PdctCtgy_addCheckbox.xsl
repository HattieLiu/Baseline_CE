<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
	<xsl:include href="StrdPdctCtgy.xsl"/>
	<xsl:include href="OthrPdctCtgy.xsl"/>
	<xsl:template name="PdctCtgy">
		<xsl:param name="PdctCtgy"/>
		<xsl:param name="PdctCtgy_parentName"/>
		<xsl:variable name="PdctCtgy_name" select="name($PdctCtgy)"/>
		<xsl:variable name="PdctCtgy_pName" select="$PdctCtgy_parentName"/>
		<xsl:variable name="PdctCtgyDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$PdctCtgy_name"/>
			</xsl:call-template>
		</xsl:variable>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:element name="input">
					<xsl:attribute name="type">checkbox</xsl:attribute>
					<xsl:attribute name="name"><xsl:value-of select="$PdctCtgy_pName"/></xsl:attribute>
					<xsl:attribute name="onClick">clickcheck(this)</xsl:attribute>
					<xsl:attribute name="ck">N</xsl:attribute>
				</xsl:element>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$PdctCtgy_pName"/>')</xsl:attribute>
					<xsl:value-of select="$PdctCtgyDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:text>     </xsl:text>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$PdctCtgy_pName"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right" id="Doc:PdctCtgy">
						
						
						
						<xsl:variable name="StrdPdctCtgy" select="$PdctCtgy/Doc:StrdPdctCtgy"/>
						<xsl:call-template name="StrdPdctCtgy">
							<xsl:with-param name="StrdPdctCtgy" select="$StrdPdctCtgy"/>
							<xsl:with-param name="StrdPdctCtgy_parentName" select="$PdctCtgy_parentName"/>
						</xsl:call-template>
						<xsl:variable name="OthrPdctCtgy" select="$PdctCtgy/Doc:OthrPdctCtgy"/>
						<xsl:call-template name="OthrPdctCtgy">
							<xsl:with-param name="OthrPdctCtgy" select="$OthrPdctCtgy"/>
							<xsl:with-param name="OthrPdctCtgy_parentName" select="$PdctCtgy_parentName"/>
						</xsl:call-template>
						
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
</xsl:stylesheet>
