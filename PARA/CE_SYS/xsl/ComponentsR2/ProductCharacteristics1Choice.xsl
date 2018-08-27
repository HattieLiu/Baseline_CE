<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:include href="ProductCharacteristics1.xsl"/>
<!--  *********** point <ProductCharacteristics1Choice> Start ********** -->
	<xsl:template name="ProductCharacteristics1Choice">
		<xsl:param name="ProductCharacteristics1Choice"/>
		<xsl:param name="ProductCharacteristics1Choice_parent"/>
		<xsl:variable name="ProductCharacteristics1Choice_name" select="name($ProductCharacteristics1Choice)"/>
		<xsl:variable name="ProductCharacteristics1Choice_pname" select="$ProductCharacteristics1Choice_parent"/>
		<xsl:variable name="PdctChrtcsDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$ProductCharacteristics1Choice_name"/>
			</xsl:call-template>
		</xsl:variable>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$ProductCharacteristics1Choice_pname"/>_<xsl:value-of select="$ProductCharacteristics1Choice_name"/>')</xsl:attribute>
					<xsl:value-of select="$PdctChrtcsDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$ProductCharacteristics1Choice_pname"/>_<xsl:value-of select="$ProductCharacteristics1Choice_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">
						<xsl:variable name="ProductCharacteristics1" select="$ProductCharacteristics1Choice/StrdPdctChrtcs"/>
						<xsl:call-template name="ProductCharacteristics1">
							<xsl:with-param name="ProductCharacteristics1" select="$ProductCharacteristics1"/>
							<xsl:with-param name="ProductCharacteristics1_parent">
								<xsl:value-of select="$ProductCharacteristics1Choice_pname"/>_<xsl:value-of select="$ProductCharacteristics1Choice_name"/>	
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="GenericIdentification4" select="$ProductCharacteristics1Choice/OthrPdctChrtcs"/>
						<xsl:call-template name="GenericIdentification4">
							<xsl:with-param name="GenericIdentification4" select="$GenericIdentification4"/>
							<xsl:with-param name="GenericIdentification4_parent">
                                <xsl:value-of select="$ProductCharacteristics1Choice_pname"/>_<xsl:value-of select="$ProductCharacteristics1Choice_name"/>							
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <ProductCharacteristics1Choice> end ********** -->
</xsl:stylesheet>
