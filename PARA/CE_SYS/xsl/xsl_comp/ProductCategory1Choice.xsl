<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
   <xsl:include href="ProductCategory1.xsl"/>
   
<!--  *********** point <ProductCategory1Choice> Start ********** -->
	<xsl:template name="ProductCategory1Choice">
		<xsl:param name="ProductCategory1Choice"/>
		<xsl:variable name="ProductCategory1Choice_name" select="name($ProductCategory1Choice)"/>
		<xsl:variable name="PdctCtgyDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$ProductCategory1Choice_name"/>
			</xsl:call-template>
		</xsl:variable>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$ProductCategory1Choice_name"/>')</xsl:attribute>
					<xsl:value-of select="$PdctCtgyDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$ProductCategory1Choice_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<xsl:variable name="ProductCategory1" select="$ProductCategory1Choice/Doc:StrdPdctCtgy"/>
						<xsl:call-template name="ProductCategory1">
							<xsl:with-param name="ProductCategory1" select="$ProductCategory1"/>
						</xsl:call-template>
						<xsl:variable name="GenericIdentification4" select="$ProductCategory1Choice/Doc:OthrPdctCtgy"/>
						<xsl:call-template name="GenericIdentification4">
							<xsl:with-param name="GenericIdentification4" select="$GenericIdentification4"/>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <ProductCategory1Choice> end ********** -->
</xsl:stylesheet>
