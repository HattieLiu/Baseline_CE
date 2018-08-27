<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:include href="ProductIdentifier2.xsl"/>
<!--  *********** point <ProductIdentifier2Choice> Start ********** -->
	<xsl:template name="ProductIdentifier2Choice">
		<xsl:param name="ProductIdentifier2Choice"/>
		<xsl:param name="ProductIdentifier2Choice_parent"/>
		<xsl:variable name="ProductIdentifier2Choice_name" select="name($ProductIdentifier2Choice)"/>
		<xsl:variable name="ProductIdentifier2Choice_pname" select="$ProductIdentifier2Choice_parent"/>
		<xsl:variable name="PdctIdresc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'PdctIdr'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$ProductIdentifier2Choice_pname"/>_<xsl:value-of select="$ProductIdentifier2Choice_name"/>')</xsl:attribute>
					<xsl:value-of select="$PdctIdresc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$ProductIdentifier2Choice_pname"/>_<xsl:value-of select="$ProductIdentifier2Choice_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">
						<xsl:variable name="ProductIdentifier2" select="$ProductIdentifier2Choice/StrdPdctIdr"/>
						<xsl:call-template name="ProductIdentifier2">
							<xsl:with-param name="ProductIdentifier2" select="$ProductIdentifier2"/>
							<xsl:with-param name="ProductIdentifier2_parent" >
							     <xsl:value-of select="$ProductIdentifier2Choice_pname"/>_<xsl:value-of select="$ProductIdentifier2Choice_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="GenericIdentification4" select="$ProductIdentifier2Choice/OthrPdctIdr"/>
						<xsl:call-template name="GenericIdentification4">
							<xsl:with-param name="GenericIdentification4" select="$GenericIdentification4"/>
							<xsl:with-param name="GenericIdentification4_parent">
							     <xsl:value-of select="$ProductIdentifier2Choice_pname"/>_<xsl:value-of select="$ProductIdentifier2Choice_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <ProductIdentifier2Choice> end ********** -->
</xsl:stylesheet>
